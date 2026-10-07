`timescale 1ns/1ps
module tb;
    localparam int WIDTH=8, ALU_OUT_WIDTH=16, RF_DEPTH=16, RF_ADDR_WIDTH=4;
    localparam int FUN_WIDTH=4, FIFO_DEPTH=8, FIFO_ADDR_WIDTH=3, PTR_SIZE=4;
    localparam time REF_HALF_PERIOD=5ns, UART_HALF_PERIOD=135.6335ns;

    // Reset initializes REG2 to 8'h41 and REG3 to 8'h20.  Consequently RX
    // and TX bits each span 32 UART_CLK cycles in functional mode.
    localparam int RX_BIT_UART_CYCLES=32, TX_BIT_UART_CYCLES=32;
    integer error_count=0;
    logic REF_CLK, UART_CLK, RST_N, RX_IN, TX_OUT, parity_err, stp_err;
    // Keep DFT logic inactive during the normal functional regression.
    // Leaving test_mode unconnected drives it to Z, which corrupts the
    // clock/reset muxes in SYS_TOP_dft.
    logic scan_clk, scan_rst, test_mode, SE;
    logic [3:0] SI, SO;

    // P&R netlist: fixed parameters and flattened implementation hierarchy.
    sys_top DUT (
        .REF_CLK(REF_CLK), .UART_CLK(UART_CLK), .RST_N(RST_N),
        .UART_RX_IN(RX_IN), .UART_TX_O(TX_OUT),
        .parity_error(parity_err), .framing_error(stp_err),
        .scan_clk(scan_clk), .scan_rst(scan_rst),
        .test_mode(test_mode), .SE(SE), .SI(SI), .SO(SO)
    );

    always #REF_HALF_PERIOD REF_CLK=~REF_CLK;
    always #UART_HALF_PERIOD UART_CLK=~UART_CLK;

    task automatic check_equal8(input string name, input logic [7:0] actual,
                                input logic [7:0] expected);
        begin
            if (actual !== expected) begin
                error_count=error_count+1;
                $error("%s: expected 0x%02h, got 0x%02h", name, expected, actual);
            end else $display("PASS: %s = 0x%02h", name, actual);
        end
    endtask

    task automatic initialize;
        begin
            REF_CLK=0; UART_CLK=0; RX_IN=1; RST_N=0;
            scan_clk=0; scan_rst=0; test_mode=0; SE=0; SI='0;
            repeat (4) @(negedge UART_CLK);
            RST_N=1;
            // Wait for reset synchronization and divided clocks to settle.
            repeat (100) @(negedge UART_CLK);
        end
    endtask

    // The configuration used in this test has even parity enabled.
    task automatic send_frame(input logic [7:0] data);
        integer i;
        logic parity_bit;
        begin
            parity_bit=^data;
            RX_IN=0; repeat (RX_BIT_UART_CYCLES) @(negedge UART_CLK); // start
            for (i=0; i<WIDTH; i=i+1) begin
                RX_IN=data[i];
                repeat (RX_BIT_UART_CYCLES) @(negedge UART_CLK);
            end
            RX_IN=parity_bit; repeat (RX_BIT_UART_CYCLES) @(negedge UART_CLK);
            RX_IN=1;          repeat (RX_BIT_UART_CYCLES) @(negedge UART_CLK); // stop
        end
    endtask

    task automatic send_write(input logic [3:0] address, input logic [7:0] data);
        begin
            send_frame(8'hAA); send_frame({4'h0,address}); send_frame(data);
            repeat (8) @(posedge REF_CLK);
        end
    endtask

    task automatic send_read(input logic [3:0] address);
        begin send_frame(8'hBB); send_frame({4'h0,address}); end
    endtask

    task automatic send_alu_new(input logic [7:0] a, input logic [7:0] b,
                                input logic [3:0] func);
        begin
            send_frame(8'hCC); send_frame(a); send_frame(b); send_frame({4'h0,func});
        end
    endtask

    task automatic send_alu_stored(input logic [3:0] func);
        begin send_frame(8'hDD); send_frame({4'h0,func}); end
    endtask

    // Decode TX solely through top-level signals.  Internal tx_clk does not
    // survive hierarchy flattening in the gate-level netlist.
    task automatic expect_tx_byte(input logic [7:0] expected);
        integer i;
        logic [7:0] received;
        logic received_parity;
        begin
            @(negedge TX_OUT);           // UART start-bit transition
            repeat (TX_BIT_UART_CYCLES + TX_BIT_UART_CYCLES/2)
                @(negedge UART_CLK);
            #1ns; // first data-bit sampling point
            for (i=0; i<WIDTH; i=i+1) begin
                received[i]=TX_OUT;
                if (i<WIDTH-1) begin
                    repeat (TX_BIT_UART_CYCLES) @(negedge UART_CLK);
                    #1ns;
                end
            end
            repeat (TX_BIT_UART_CYCLES) @(negedge UART_CLK); #1ns;
            received_parity=TX_OUT;
            repeat (TX_BIT_UART_CYCLES) @(negedge UART_CLK); #1ns;
            if (TX_OUT !== 1'b1) begin
                error_count=error_count+1;
                $error("TX stop bit error: got %b", TX_OUT);
            end
            check_equal8("UART TX byte", received, expected);
            if (received_parity !== (^expected)) begin
                error_count=error_count+1;
                $error("TX parity error for 0x%02h", expected);
            end
        end
    endtask

    initial begin
        initialize;

        // Initial UART configuration.  Do not inspect register hierarchy:
        // it is flattened in the gate-level netlist.
        send_write(4'h2,8'h41); // prescale 16, even parity enabled
        repeat (8) @(posedge REF_CLK);
        send_write(4'h3,8'h20);
        repeat (16) @(posedge REF_CLK);

        send_write(4'h5,8'h07);
        send_write(4'h9,8'h03);

        fork
            expect_tx_byte(8'h07);
            send_read(4'h5);
        join
        fork
            expect_tx_byte(8'h41);
            send_read(4'h2);
        join

        // 3 + 4 = 0x0007, transmitted LSB then MSB.
        fork
            begin expect_tx_byte(8'h07); expect_tx_byte(8'h00); end
            send_alu_new(8'd3,8'd4,4'h0);
        join

        // Stored operands: 3 * 4 = 0x000C.
        fork
            begin expect_tx_byte(8'h0C); expect_tx_byte(8'h00); end
            send_alu_stored(4'h2);
        join

        // New operands: 100 / 2 = 50 = 0x0032.
        fork
            begin expect_tx_byte(8'h32); expect_tx_byte(8'h00); end
            send_alu_new(8'd100,8'd2,4'h3);
        join

        // Exercise protected and normal-address writes through the external
        // UART interface; internal registers no longer have stable names.
        send_write(4'h0,8'h99); send_write(4'h1,8'h99);
        send_write(4'h2,8'h99); send_write(4'h3,8'h99);

        fork
            expect_tx_byte(8'h64);
            send_read(4'h0);
        join
        fork
            expect_tx_byte(8'h02);
            send_read(4'h1);
        join
        fork
            expect_tx_byte(8'h41);
            send_read(4'h2);
        join
        fork
            expect_tx_byte(8'h20);
            send_read(4'h3);
        join

        for (int address=4; address<RF_DEPTH; address++) begin
            send_write(address[3:0],8'h09);
            fork
                expect_tx_byte(8'h09);
                send_read(address[3:0]);
            join
        end

        if (error_count==0) $display("\n******** ALL TESTS PASSED ********\n");
        else $display("\n******** TEST FAILED: %0d error(s) ********\n",error_count);
        $stop;
    end

    // A failed protocol must report an error instead of making `run -all`
    // run forever while a wait statement is blocked.
    initial begin
        #100ms;
        $fatal(1, "Testbench timeout: functional test did not complete");
    end
endmodule
