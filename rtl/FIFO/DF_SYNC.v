module DF_SYNC #(parameter WIDTH = 4)(
    input  [WIDTH-1:0] i_ptr,
    input              i_clk,
    input              i_rst_n,
    output [WIDTH-1:0] synch_o_ptr
);

reg [WIDTH-1:0] s0,s1;
assign synch_o_ptr=s1;

always @(posedge i_clk or negedge i_rst_n)begin

    if(!i_rst_n)begin
        s0<='b0;
        s1<='b0;
    end

    else begin

       s0<=i_ptr;
       s1<=s0;

    end

end
endmodule

