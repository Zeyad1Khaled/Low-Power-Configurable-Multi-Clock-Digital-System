module FIFO_WR #(parameter DEPTH=8,ADDR_SIZE =$clog2(DEPTH) ,PTR_SIZE=ADDR_SIZE+1) (

    input w_clk,w_rst_n,
    input w_inc,
    input [PTR_SIZE-1:0] RD_PTR_GRAY_SYNCH,

    output [ADDR_SIZE-1:0] wr_addr,
    output reg [PTR_SIZE-1:0] WR_PTR_GRAY,
    output reg full

);
reg [PTR_SIZE-1:0] WR_PTR_BIN;

reg [PTR_SIZE-1:0] WR_PTR_BIN_NEXT;
wire [PTR_SIZE-1:0] WR_PTR_GRAY_NEXT;

wire full_next;

assign wr_addr=WR_PTR_BIN[ADDR_SIZE-1:0];

assign WR_PTR_GRAY_NEXT=WR_PTR_BIN_NEXT ^ (WR_PTR_BIN_NEXT >> 1);

assign full_next = (WR_PTR_GRAY_NEXT == {~RD_PTR_GRAY_SYNCH[PTR_SIZE-1:PTR_SIZE-2],
                                 RD_PTR_GRAY_SYNCH[PTR_SIZE-3:0]});

always@(posedge w_clk or negedge w_rst_n)begin

    if(!w_rst_n)begin
    WR_PTR_BIN<='b0;
    full<='b0;
    WR_PTR_GRAY<='b0;
    end

    else begin

        WR_PTR_BIN<=WR_PTR_BIN_NEXT;
        WR_PTR_GRAY<=WR_PTR_GRAY_NEXT;
        full<=full_next;

    end
end


always @(*) begin
    if (w_inc && !full)
        WR_PTR_BIN_NEXT = WR_PTR_BIN + 1;
    else
        WR_PTR_BIN_NEXT = WR_PTR_BIN;
end
endmodule
