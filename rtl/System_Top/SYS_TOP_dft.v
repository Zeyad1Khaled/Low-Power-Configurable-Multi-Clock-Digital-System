module sys_top #(parameter
                        WIDTH=8,
                        ALU_OUT_WIDTH=2*WIDTH,
                        RF_DEPTH=16,
                        RF_ADDR_WIDTH=$clog2(RF_DEPTH),

                        FUN_WIDTH=4,
                        FIFO_DEPTH=8,
                        FIFO_ADDR_WIDTH=$clog2(FIFO_DEPTH),
                        PTR_SIZE = FIFO_ADDR_WIDTH+1,
			NUM_OF_CHAINS = 4)

(
    input REF_CLK,UART_CLK,
    input RST_N,
    input UART_RX_IN,
    input scan_clk,scan_rst,test_mode,SE,
    input [NUM_OF_CHAINS-1 : 0] SI,

    output [NUM_OF_CHAINS -1 : 0 ] SO, 
    output UART_TX_O,
    output parity_error,
    output framing_error
);
wire clk_m_UART , clk_m_REF , rst_m;
assign clk_m_UART = test_mode ? scan_clk : UART_CLK;
assign clk_m_REF = test_mode ? scan_clk : REF_CLK;

//rst synch , clk gating , clk dividers
wire alu_cg;

//ALU
wire alu_out_v;
wire [ALU_OUT_WIDTH-1:0] alu_out;
wire [FUN_WIDTH-1:0] alu_func;
wire en,alu_clken;

// Regfile
wire [WIDTH-1:0] reg0,reg1,reg2,reg3;
wire wr_en,rd_en;
wire [WIDTH-1:0] rd_data;
wire rd_data_vld;
wire [RF_ADDR_WIDTH-1:0] address;
wire [WIDTH-1:0] wr_data;
wire rd_inc;

//rx & tx
wire [WIDTH-1:0] rx_p_out;
wire rx_out_v;
wire clk_div_en;
reg [5:0] rx_ratio;
wire tx_clk, rx_clk;
wire busy;

//Data_Sync
wire [WIDTH-1:0] synced_p_data;
wire synced_v_data;

//sys_ctrl outputs
wire [WIDTH-1:0] sys2fifo;
wire sys2fifo_v;
wire fifo_full;
wire fifo_empty;
wire [WIDTH-1:0] fifo2tx;
wire tx_func_clk;
wire rx_func_clk;


wire alu_clk_en_test;

      wire ref_func_rst;
      wire uart_func_rst;
      wire tx_func_rst;
      wire rx_func_rst;

      // Final resets applied to sequential logic
      wire ref_rst;
      wire uart_rst;
      wire tx_rst;
      wire rx_rst;

      assign ref_rst  = test_mode ? scan_rst : ref_func_rst;
      assign uart_rst = test_mode ? scan_rst : uart_func_rst;
      assign tx_rst   = test_mode ? scan_rst : tx_func_rst;
      assign rx_rst   = test_mode ? scan_rst : rx_func_rst;


assign rst_m = test_mode ? scan_rst : RST_N;
assign alu_clk_en_test = alu_clken | test_mode;

assign tx_clk = test_mode ? scan_clk : tx_func_clk;
assign rx_clk = test_mode ? scan_clk : rx_func_clk;

PULSE_GEN Pulse_U(
.clk(tx_clk),
.rst(tx_rst),
.lvl_sig(busy),
.pulse_sig(rd_inc)
);

FIFO_TOP #(.BUS_WIDTH(WIDTH),.DEPTH(FIFO_DEPTH),.ADDR_WIDTH(FIFO_ADDR_WIDTH),.PTR_SIZE(PTR_SIZE)) FIFO_u (
.W_CLK(clk_m_REF),
.W_RST(ref_rst),
.W_INC(sys2fifo_v),
.R_CLK(tx_clk),
.R_RST(tx_rst),
.R_INC(rd_inc),
.WR_DATA(sys2fifo),
.FULL(fifo_full),
.EMPTY(fifo_empty),
.RD_DATA(fifo2tx)

);


ALU #(.WIDTH(WIDTH),.OUT_WIDTH(ALU_OUT_WIDTH),.FUN_WIDTH(FUN_WIDTH)) ALU_u (
.A(reg0),
.B(reg1),
.ALU_FUN(alu_func),
.clk(alu_cg),
.rst(ref_rst),
.en(en),
.ALU_OUT(alu_out),
.OUT_VALID(alu_out_v)
);


Register #(.WIDTH(WIDTH),.DEPTH(RF_DEPTH),.ADDRESS(RF_ADDR_WIDTH)) Regfile_u (
.WrData(wr_data),
.Address(address),
.WrEn(wr_en),
.RdEn(rd_en),
.CLK(clk_m_REF),
.RST(ref_rst),
.RdData(rd_data),
.RdData_VLD(rd_data_vld),
.REG0(reg0),
.REG1(reg1),
.REG2(reg2),
.REG3(reg3)
);




SYS_CTRL #(.WIDTH(WIDTH),.ALU_OUT_WIDTH(ALU_OUT_WIDTH),.ADDR(RF_ADDR_WIDTH)) sys_ctrl_u (
.clk(clk_m_REF),
.rst(ref_rst),
.OUT_VALID(alu_out_v),
.ALU_OUT(alu_out),
.RdData(rd_data),
.RX_P_DATA(synced_p_data),
.RdData_Valid(rd_data_vld),
.RX_D_VLD(synced_v_data),
.ALU_FUN(alu_func),
.EN(en),
.CLK_EN(alu_clken),
.Address(address),
.WrEn(wr_en),
.RdEn(rd_en),
.WrData(wr_data),
.TX_P_DATA(sys2fifo),
.TX_D_VLD(sys2fifo_v),
.clk_div_en(clk_div_en),
.fifo_full(fifo_full)
);


Data_Synch Rx2SysCtrl (
.unsync_bus(rx_p_out),
.bus_enable(rx_out_v),
.clk(clk_m_REF),
.rst(ref_rst),
.sync_bus(synced_p_data),
.en_pulse(synced_v_data)
);

UART #(.DATA_WIDTH(WIDTH)) UART_TX_RX (
.TX_RST(tx_rst),
.RX_RST(rx_rst),
.TX_CLK(tx_clk),
.RX_CLK(rx_clk),
.RX_IN_S(UART_RX_IN),
.RX_OUT_P(rx_p_out),
.RX_OUT_V(rx_out_v),
.TX_IN_P(fifo2tx),
.TX_IN_V(~fifo_empty),
.TX_OUT_S(UART_TX_O),
.TX_OUT_V(busy),
.Prescale(reg2[7:2]),
.parity_enable(reg2[0]),
.parity_type(reg2[1]),
.parity_error(parity_error),
.framing_error(framing_error)

);

clk_div #(.WIDTH(6)) TX_CLK (
.i_ref_clk(clk_m_UART),
.i_rst_n(uart_rst),
.i_clk_en(clk_div_en),
.i_div_ratio(reg3[5:0]),
.o_div_clk(tx_func_clk)
);

clk_div #(.WIDTH(6)) RX_CLK (
.i_ref_clk(clk_m_UART),
.i_rst_n(uart_rst),
.i_clk_en(clk_div_en),
.i_div_ratio(rx_ratio),
.o_div_clk(rx_func_clk)
);

RST_SYNCH RF1 (
.rst(rst_m),
.clk(clk_m_REF),
.synch_rst(ref_func_rst)
);

RST_SYNCH uart_rst_sync (
      .rst(rst_m),
      .clk(clk_m_UART),
      .synch_rst(uart_func_rst)
  );

RST_SYNCH tx_rst_sync (
      .rst(uart_rst),
      .clk(tx_clk),
      .synch_rst(tx_func_rst)
  );

RST_SYNCH rx_rst_sync (
      .rst(uart_rst),
      .clk(rx_clk),
      .synch_rst(rx_func_rst)
  );


CLK_GATE ALU_CG (
.CLK(clk_m_REF),
.CLK_EN(alu_clk_en_test),
.GATED_CLK(alu_cg)

);

always@(*)begin

    case (reg2[7:2])

        'd8:rx_ratio=4;
        'd16:rx_ratio=2;
        'd32:rx_ratio=1;
        default:rx_ratio=1;
    endcase

end
endmodule
