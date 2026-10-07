module FIFO_TOP #(parameter BUS_WIDTH=8,
                            DEPTH=8,
                            ADDR_WIDTH=$clog2(DEPTH),
                            PTR_SIZE = ADDR_WIDTH+1)
(
    input W_CLK,W_RST,W_INC,
    input R_CLK,R_RST,R_INC,
    input [BUS_WIDTH-1:0] WR_DATA,

    output FULL,EMPTY,
    output [BUS_WIDTH-1:0] RD_DATA
);

wire [ADDR_WIDTH-1:0] w_addr,r_addr;
wire [PTR_SIZE-1:0] w_ptr,r_ptr;
wire [PTR_SIZE-1:0] r_ptr_synch,w_ptr_synch;
wire w_clken;
wire full_w,empty_w;


FIFO_MEM_CNTRL #(.BUS_WIDTH(BUS_WIDTH),.DEPTH(DEPTH),.ADDR_SIZE(ADDR_WIDTH)) U1 (
.wr_en(w_clken),
.wr_data(WR_DATA),
.wr_addr(w_addr),
.rd_addr(r_addr),
.wr_clk(W_CLK),
.rd_data(RD_DATA)
);

DF_SYNC #(.WIDTH(PTR_SIZE)) U2_WRptr_sync (
.i_ptr(w_ptr),
.i_clk(R_CLK),
.i_rst_n(R_RST),
.synch_o_ptr(w_ptr_synch)
);

DF_SYNC #(.WIDTH(PTR_SIZE)) U3_RDptr_sync (
.i_ptr(r_ptr),
.i_clk(W_CLK),
.i_rst_n(W_RST),
.synch_o_ptr(r_ptr_synch)
);


FIFO_WR #(.DEPTH(DEPTH),.ADDR_SIZE(ADDR_WIDTH),.PTR_SIZE(PTR_SIZE)) U4 (
.w_clk(W_CLK),
.w_rst_n(W_RST),
.w_inc(W_INC),
.RD_PTR_GRAY_SYNCH(r_ptr_synch),
.wr_addr(w_addr),
.WR_PTR_GRAY(w_ptr),
.full(full_w)
);

FIFO_RD #(.DEPTH(DEPTH),.ADDR_SIZE(ADDR_WIDTH),.PTR_SIZE(PTR_SIZE)) U5 (
.r_clk(R_CLK),
.r_rst_n(R_RST),
.r_inc(R_INC),
.WR_PTR_GRAY_SYNCH(w_ptr_synch),
.rd_addr(r_addr),
.RD_PTR_GRAY(r_ptr),
.empty(empty_w)
);
assign w_clken = W_INC && (!full_w);
assign FULL=full_w;
assign EMPTY=empty_w;
endmodule

