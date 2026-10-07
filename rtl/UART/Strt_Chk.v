module Strt_chk (

    input Strt_chk_en,
    input Sampled_bit,
    input clk,rst,

    output reg strt_glitch


);

always@(posedge clk or negedge rst)begin

    if(!rst)begin
        strt_glitch<='b0;
    end

    else begin
        if(Strt_chk_en) begin
            strt_glitch<=Sampled_bit;
        end
        else
            strt_glitch<='b0;

    end
end
endmodule

