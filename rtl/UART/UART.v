
module UART # ( parameter DATA_WIDTH = 8)

(
 input   wire                          TX_RST,RX_RST,
 input   wire                          TX_CLK,
 input   wire                          RX_CLK,
 input   wire                          RX_IN_S,

 output  wire   [DATA_WIDTH-1:0]       RX_OUT_P, 
 output  wire                          RX_OUT_V,

 input   wire   [DATA_WIDTH-1:0]       TX_IN_P, 
 input   wire                          TX_IN_V, 

 output  wire                          TX_OUT_S,
 output  wire                          TX_OUT_V,  

 input   wire   [5:0]                  Prescale, 
 input   wire                          parity_enable,
 input   wire                          parity_type,

 output  wire                          parity_error,
 output  wire                          framing_error

);


TX_TOP  #(.WIDTH(DATA_WIDTH)) U0_UART_TX (
.clk(TX_CLK),
.rst(TX_RST),
.P_DATA(TX_IN_P),
.Data_Valid(TX_IN_V),
.PAR_EN(parity_enable),
.PAR_TYP(parity_type),
.TX_OUT(TX_OUT_S),
.busy(TX_OUT_V)
);
 
 
RX_TOP U0_UART_RX (
.clk(RX_CLK),
.rst(RX_RST),
.RX_IN(RX_IN_S),
.Prescale(Prescale),
.PAR_EN(parity_enable),
.PAR_TYP(parity_type),
.P_DATA(RX_OUT_P),
.Data_Valid(RX_OUT_V),
.Parity_Err(parity_error),
.Stop_Err(framing_error)
);
 



endmodule
 
