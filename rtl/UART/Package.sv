package uart_pkg;
  typedef enum logic [2:0] {
    MUX_IDLE,
    MUX_START,
    MUX_DATA,
    MUX_PARITY,
    MUX_STOP
} mux_sel_e;
endpackage