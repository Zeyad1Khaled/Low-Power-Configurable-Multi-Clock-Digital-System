module Register #(parameter WIDTH=8,DEPTH=16,ADDRESS=$clog2(DEPTH))(
  input [WIDTH-1:0] WrData,
  input [ADDRESS-1:0] Address,
  input WrEn,RdEn,
  input CLK,RST,

  output reg [WIDTH-1:0] RdData,
  output reg RdData_VLD,
  output [WIDTH-1:0] REG0,REG1,REG2,REG3
);
reg [WIDTH-1:0] reg_file [0:DEPTH-1];
integer i;
always@(posedge CLK or negedge RST )begin

  if(!RST)begin
    RdData_VLD<='b0;
    RdData<='b0;
    for(i=0;i<DEPTH;i=i+1)begin
      if(i==2)begin
        reg_file[i]<='b100000_01;
      end
      else if(i==3)begin
        reg_file[i]<='b0010_0000;
      end
      else begin
        reg_file[i]<={WIDTH{1'b0}};
      end
    end


  end

else if(WrEn && (!RdEn))begin
  reg_file[Address]<=WrData;
end

else if(RdEn && (!WrEn))begin
  RdData<=reg_file[Address];
  RdData_VLD<='b1;
end

else begin
  RdData_VLD<='b0;
end



end
assign REG0=reg_file[0];
assign REG1=reg_file[1];
assign REG2=reg_file[2];
assign REG3=reg_file[3];
endmodule
  
