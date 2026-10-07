module ALU #(parameter WIDTH=8 , OUT_WIDTH=WIDTH * 2, FUN_WIDTH = 4) (
  input [WIDTH-1:0] A, B,
  input [FUN_WIDTH-1:0] ALU_FUN,
  input clk,rst,en,

  output reg [OUT_WIDTH-1:0] ALU_OUT,
  output reg OUT_VALID


);
reg [OUT_WIDTH-1:0] ALU_OUT_Comb;
reg valid;
always@(posedge clk or negedge rst)begin

  if (!rst)begin
    ALU_OUT<='b0;
    OUT_VALID<='b0;
  end

else begin
  ALU_OUT<=ALU_OUT_Comb;
  OUT_VALID<=valid;

 end
end


always@(*)begin
ALU_OUT_Comb=0;
valid='b0;

if(en) begin
valid=1;
  case (ALU_FUN)
     4'b0000: begin
               ALU_OUT_Comb = A+B;
              end
     4'b0001: begin
               ALU_OUT_Comb = A-B;
              end
     4'b0010: begin
               ALU_OUT_Comb = A*B;
              end
     4'b0011: begin
               ALU_OUT_Comb = A/B;
              end
     4'b0100: begin
               ALU_OUT_Comb = A & B;
              end
     4'b0101: begin
               ALU_OUT_Comb = A | B;
              end
     4'b0110: begin
               ALU_OUT_Comb = ~ (A & B);
              end
     4'b0111: begin
               ALU_OUT_Comb = ~ (A | B);
              end
     4'b1000: begin
               ALU_OUT_Comb =  (A ^ B);
              end
     4'b1001: begin
               ALU_OUT_Comb = ~ (A ^ B);
              end
     4'b1010: begin
              if (A==B)
                 ALU_OUT_Comb = 'b1;
              else
                 ALU_OUT_Comb = 'b0;
              end
     4'b1011: begin
               if (A>B)
                 ALU_OUT_Comb = 'b10;
               else
                 ALU_OUT_Comb = 'b0;
              end
     4'b1100: begin
               if (A<B)
                 ALU_OUT_Comb = 'b11;
               else
                 ALU_OUT_Comb = 'b0;
              end
     4'b1101: begin
               ALU_OUT_Comb = A>>1;
              end
     4'b1110: begin
               ALU_OUT_Comb = A<<1;
              end
    default: begin
               ALU_OUT_Comb = 'b0;
             end
    endcase
end


end
endmodule
