module parity #(parameter WIDTH=8)(
  input [WIDTH-1 : 0]P_DATA,
  input DATA_Valid,
  input PAR_TYP,
  input clk, rst,
  
  output reg par_bit
);

always@(posedge clk or negedge rst)begin
  if (!rst)
    par_bit <= 1'b0;

else if (DATA_Valid) begin
        if (!PAR_TYP)
            par_bit <= (^P_DATA);      // Even
        else
            par_bit <= ~(^P_DATA);   // Odd
    end
end

endmodule