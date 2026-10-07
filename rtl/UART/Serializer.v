module serializer #(parameter WIDTH=8)(
  
  input [WIDTH-1:0]P_DATA,
  input ser_en,
  input clk,
  input rst,
  
  output reg ser_done,
  output reg ser_data
);
reg [2:0]counter;
reg [WIDTH-1:0] mem ;
reg loading;


always@(posedge clk or negedge rst)begin
  
  if (!rst)begin
    mem<='b0;
    ser_done<='b0;
    ser_data<='b0;
    loading<='b0;
    counter<='b0;
  end
  
else if (ser_en && !loading)begin
  mem<=P_DATA;
  loading<='b1;
  counter<='b1;
  ser_data <= P_DATA[0];

end

else if (loading)begin
  ser_data <= mem[counter];

if(counter == WIDTH-1) begin
    ser_done <= 1;
    loading  <= 0;
end
else begin
    counter <= counter + 1;
end
end

else begin
  
  ser_done<='b0;
    ser_data<='b0;
    loading<='b0;
    counter<='b0;
  
end
  
end

endmodule
