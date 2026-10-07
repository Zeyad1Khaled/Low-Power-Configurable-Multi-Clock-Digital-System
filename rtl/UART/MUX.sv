import uart_pkg::*;

module MUX(
  input mux_sel_e mux_sel,
  input ser_data,
  input par_bit, 
  
  output logic TX_OUT
  
);

always_comb begin
    case (mux_sel)

        MUX_IDLE   : TX_OUT = 1'b1;

        MUX_START  : TX_OUT = 1'b0;

        MUX_DATA   : TX_OUT = ser_data;

        MUX_PARITY : TX_OUT = par_bit;

        MUX_STOP   : TX_OUT = 1'b1;

        default    : TX_OUT = 1'b1;

    endcase
end




endmodule

