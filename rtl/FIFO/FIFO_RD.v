module FIFO_RD #(parameter DEPTH=8,ADDR_SIZE =$clog2(DEPTH) ,PTR_SIZE=ADDR_SIZE+1) (

    input r_clk,r_rst_n,
    input r_inc,
    input [PTR_SIZE-1:0] WR_PTR_GRAY_SYNCH,

    output [ADDR_SIZE-1:0] rd_addr,
    output reg [PTR_SIZE-1:0] RD_PTR_GRAY,
    output reg empty

);
////////////////////////////////////////////////////////
reg [PTR_SIZE-1:0] RD_PTR_BIN;

reg [PTR_SIZE-1:0] RD_PTR_BIN_NEXT;
wire [PTR_SIZE-1:0] RD_PTR_GRAY_NEXT;

wire empty_next;
//////////////////////////////////////////////////////////////////////////////
assign rd_addr=RD_PTR_BIN[ADDR_SIZE-1:0];

assign RD_PTR_GRAY_NEXT=RD_PTR_BIN_NEXT ^ (RD_PTR_BIN_NEXT >> 1);
////////////////////////////////////////////////////////////////////////////////////////////

assign empty_next= (RD_PTR_GRAY_NEXT==WR_PTR_GRAY_SYNCH);

/////////////////////////////////////////////////////////////////////////////////////////
always@(posedge r_clk or negedge r_rst_n)begin

    if(!r_rst_n)begin
    RD_PTR_BIN<='b0;
    empty<='b1;
    RD_PTR_GRAY<='b0;
    end

    else begin

        RD_PTR_BIN<=RD_PTR_BIN_NEXT;
        RD_PTR_GRAY<=RD_PTR_GRAY_NEXT;
        empty<=empty_next;

    end
end


always @(*) begin
    if (r_inc && !empty)
        RD_PTR_BIN_NEXT = RD_PTR_BIN + 1;
    else
        RD_PTR_BIN_NEXT = RD_PTR_BIN;
end
endmodule


