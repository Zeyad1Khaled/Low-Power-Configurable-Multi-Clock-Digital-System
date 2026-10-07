module FIFO_MEM_CNTRL #(parameter BUS_WIDTH = 8,DEPTH=8,ADDR_SIZE=$clog2(DEPTH))(

    input wr_en,
    input [BUS_WIDTH-1:0]wr_data,
    input [ADDR_SIZE-1:0] wr_addr,rd_addr,
    input wr_clk,

    output [BUS_WIDTH-1:0] rd_data

);

reg [BUS_WIDTH-1:0] mem [0:DEPTH-1];

assign rd_data=mem[rd_addr];

always@(posedge wr_clk)begin

    if(wr_en)begin
        mem[wr_addr]<=wr_data;
    end

end


endmodule

