module Parity_chk(
    input Par_chk_en,
    input Par_typ,
    input Sampled_bit,
    input clk, rst,
    output reg par_err,
    output reg par_done
);

    // State registers
    reg parity_reg;
    reg [3:0] count;

    // Next-state signals (combinational)
    reg parity_reg_next;
    reg [3:0] count_next;
    reg par_err_next;
    reg par_done_next;

    // ---------------------------------------------------------
    // Sequential block: purely registers next-state values
	//created after spyglass issue 
    // ---------------------------------------------------------
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            par_err    <= 1'b0;
            par_done   <= 1'b0;
            parity_reg <= 1'b0;
            count      <= 4'b0;
        end
        else begin
            par_err    <= par_err_next;
            par_done   <= par_done_next;
            parity_reg <= parity_reg_next;
            count      <= count_next;
        end
    end

    // ---------------------------------------------------------
    // Combinational block: computes next-state values
    // ---------------------------------------------------------
    always @(*) begin
        // defaults: hold current values / clear pulse signals
        parity_reg_next = parity_reg;
        count_next      = count;
        par_err_next    = par_err;
        par_done_next   = 1'b0;   // par_done is a one-cycle pulse

        if (Par_chk_en) begin
            parity_reg_next = parity_reg ^ Sampled_bit;
            count_next      = count + 1'b1;

            if (count == 'd8) begin
                par_err_next    = (Par_typ == 1'b0) ? ((parity_reg ^ Sampled_bit) != 1'b0)
                                                     : ((parity_reg ^ Sampled_bit) != 1'b1);
                par_done_next   = 1'b1;
                parity_reg_next = 1'b0;
                count_next      = 4'b0;
            end
        end
    end

endmodule
