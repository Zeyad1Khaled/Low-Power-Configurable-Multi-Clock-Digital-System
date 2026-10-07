import uart_pkg::*;


module TX_TOP #(parameter WIDTH = 8)(
  
  input [WIDTH-1:0] P_DATA,
  input Data_Valid,
  input PAR_TYP,PAR_EN,
  input clk,rst,
   
  output TX_OUT,
  output busy
  
);

//serializer
wire ser_done,ser_en,ser_data;

//FSM
mux_sel_e mux_sel;

//parity_Calc
wire par_bit;

serializer #(.WIDTH(WIDTH)) U1 (
.P_DATA(P_DATA),
.ser_en(ser_en),
.clk(clk),
.rst(rst),
.ser_done(ser_done),
.ser_data(ser_data)
);

TX_FSM U2 (
.clk(clk),
.rst(rst),
.Data_Valid(Data_Valid),
.PAR_EN(PAR_EN),
.ser_done(ser_done),
.ser_en(ser_en),
.mux_sel(mux_sel),
.busy(busy)
);

parity #(.WIDTH(WIDTH)) U3 (
.P_DATA(P_DATA),
.PAR_TYP(PAR_TYP),
// Capture parity exactly when the serializer captures P_DATA.  Data_Valid
// can remain high while the FIFO advances to the next word during a frame.
.DATA_Valid(ser_en),
.clk(clk),
.rst(rst),
.par_bit(par_bit)
);

MUX U4 (
.mux_sel(mux_sel),
.ser_data(ser_data),
.par_bit(par_bit),
.TX_OUT(TX_OUT)
);

endmodule
