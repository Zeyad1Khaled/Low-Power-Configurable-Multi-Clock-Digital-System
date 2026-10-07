# RTL compilation source list.
# Paths are relative to this file's directory (rtl/). Keep Package.sv first,
# because the UART modules import its package.
UART/Package.sv
UART/MUX.sv
UART/Serializer.v
UART/Parity_Calc.v
UART/TX_FSM.sv
UART/TX_TOP.sv
UART/Edge_Bit_Counter.v
UART/DeSerializer.v
UART/Strt_Chk.v
UART/Parity_Chk.v
UART/Stp_Chk.v
UART/Data_Sampling.v
UART/DATA_SYNC.v
UART/RX_FSM.sv
UART/UART_RX.sv
UART/UART.v
FIFO/FIFO_WR.v
FIFO/FIFO_RD.v
FIFO/FIFO_MEM_CNTRL.v
FIFO/DF_SYNC.v
FIFO/Async_FIFO.v
DataSynch_RstSynch_PulseGen/PULSE_GEN.v
DataSynch_RstSynch_PulseGen/RST_SYNCH.v
DataSynch_RstSynch_PulseGen/DATA_SYNCH.v
ClkDiv_ClkGate/CLK_GATE.v
ClkDiv_ClkGate/Clk_divider.sv
ALU/ALU.v
SYS_Control_RegisterFile/Register.v
SYS_Control_RegisterFile/SYS_CTRL.sv
System_Top/SYS_TOP_dft.v
