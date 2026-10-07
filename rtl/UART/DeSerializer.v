module DeSerializer #(parameter WIDTH=8)(

    input Sampled_bit,
    input derser_en,
    input clk,rst,

    output reg [WIDTH-1:0] P_DATA

);

always@(posedge clk or negedge rst)begin

    if(!rst)begin

        P_DATA<='b0;

    end

    else begin
        if(derser_en)begin

            P_DATA<={Sampled_bit,P_DATA[WIDTH-1:1]};

        end



end
end
endmodule

