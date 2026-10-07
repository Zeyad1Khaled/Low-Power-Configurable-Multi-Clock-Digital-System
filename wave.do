# UART system functional debug waveform
# Ordered along the data path: RX -> controller -> register file/ALU -> FIFO -> TX.
# Green = handshake/event, yellow = data, cyan = state/status, red = error.

onerror {resume}
quietly WaveActivateNextPane {} 0
delete wave *

# 01 - Testbench interface
add wave -noupdate -group {01 Interface} -color White /tb/REF_CLK
add wave -noupdate -group {01 Interface} -color White /tb/UART_CLK
add wave -noupdate -group {01 Interface} -color Magenta /tb/RST
add wave -noupdate -group {01 Interface} -color Green /tb/RX_IN
add wave -noupdate -group {01 Interface} -color Green /tb/TX_OUT
add wave -noupdate -group {01 Interface} -color Red /tb/parity_err
add wave -noupdate -group {01 Interface} -color Red /tb/stp_err

# 02 - Derived clocks, local resets, and UART configuration
add wave -noupdate -group {02 Clocks & resets} -color Cyan /tb/DUT/clk_m_REF
add wave -noupdate -group {02 Clocks & resets} -color Cyan /tb/DUT/clk_m_UART
add wave -noupdate -group {02 Clocks & resets} -color Cyan /tb/DUT/rx_clk
add wave -noupdate -group {02 Clocks & resets} -color Cyan /tb/DUT/tx_clk
add wave -noupdate -group {02 Clocks & resets} -color Magenta /tb/DUT/ref_rst
add wave -noupdate -group {02 Clocks & resets} -color Magenta /tb/DUT/rx_rst
add wave -noupdate -group {02 Clocks & resets} -color Magenta /tb/DUT/tx_rst
add wave -noupdate -group {02 Clocks & resets} -radix unsigned -color Yellow /tb/DUT/reg2
add wave -noupdate -group {02 Clocks & resets} -radix unsigned -color Yellow /tb/DUT/reg3
add wave -noupdate -group {02 Clocks & resets} -radix unsigned -color Yellow /tb/DUT/rx_ratio

# 03 - UART RX and its clock-domain crossing.  synced_v_data is the byte
# strobe consumed by the controller.
add wave -noupdate -group {03 UART RX} -color Green /tb/DUT/UART_RX_IN
add wave -noupdate -group {03 UART RX} -radix hexadecimal -color Yellow /tb/DUT/rx_p_out
add wave -noupdate -group {03 UART RX} -color Green /tb/DUT/rx_out_v
add wave -noupdate -group {03 UART RX} -radix hexadecimal -color Yellow /tb/DUT/synced_p_data
add wave -noupdate -group {03 UART RX} -color Green /tb/DUT/synced_v_data
add wave -noupdate -group {03 UART RX} -radix unsigned -color Yellow /tb/DUT/UART_TX_RX/U0_UART_RX/Prescale
add wave -noupdate -group {03 UART RX} -color Cyan /tb/DUT/UART_TX_RX/U0_UART_RX/current_state
add wave -noupdate -group {03 UART RX} -color Red /tb/DUT/UART_TX_RX/U0_UART_RX/Parity_Err
add wave -noupdate -group {03 UART RX} -color Red /tb/DUT/UART_TX_RX/U0_UART_RX/Stop_Err

# 04 - Command decoder and register-file requests
add wave -noupdate -group {04 System control} -color Cyan /tb/DUT/sys_ctrl_u/current_state
add wave -noupdate -group {04 System control} -color Cyan /tb/DUT/sys_ctrl_u/next_state
add wave -noupdate -group {04 System control} -radix hexadecimal -color Yellow /tb/DUT/sys_ctrl_u/RX_P_DATA
add wave -noupdate -group {04 System control} -color Green /tb/DUT/sys_ctrl_u/RX_D_VLD
add wave -noupdate -group {04 System control} -radix hexadecimal -color Yellow /tb/DUT/sys_ctrl_u/Address
add wave -noupdate -group {04 System control} -radix hexadecimal -color Yellow /tb/DUT/sys_ctrl_u/WrData
add wave -noupdate -group {04 System control} -color Green /tb/DUT/sys_ctrl_u/WrEn
add wave -noupdate -group {04 System control} -color Green /tb/DUT/sys_ctrl_u/RdEn
add wave -noupdate -group {04 System control} -color Green /tb/DUT/sys_ctrl_u/cfg_locked

# 05 - Register file and ALU.  EN/OUT_VALID bracket every ALU transaction.
add wave -noupdate -group {05 Register file & ALU} -radix hexadecimal -color Yellow /tb/DUT/Regfile_u/REG0
add wave -noupdate -group {05 Register file & ALU} -radix hexadecimal -color Yellow /tb/DUT/Regfile_u/REG1
add wave -noupdate -group {05 Register file & ALU} -radix hexadecimal -color Yellow /tb/DUT/Regfile_u/REG2
add wave -noupdate -group {05 Register file & ALU} -radix hexadecimal -color Yellow /tb/DUT/Regfile_u/REG3
add wave -noupdate -group {05 Register file & ALU} -radix hexadecimal -color Yellow /tb/DUT/rd_data
add wave -noupdate -group {05 Register file & ALU} -color Green /tb/DUT/rd_data_vld
add wave -noupdate -group {05 Register file & ALU} -radix hexadecimal -color Yellow /tb/DUT/alu_func
add wave -noupdate -group {05 Register file & ALU} -color Green /tb/DUT/en
add wave -noupdate -group {05 Register file & ALU} -color Green /tb/DUT/alu_out_v
add wave -noupdate -group {05 Register file & ALU} -radix hexadecimal -color Yellow /tb/DUT/alu_out

# 06 - FIFO crossing.  sys2fifo_v enqueues; rd_inc consumes fifo2tx.
add wave -noupdate -group {06 TX FIFO} -radix hexadecimal -color Yellow /tb/DUT/sys2fifo
add wave -noupdate -group {06 TX FIFO} -color Green /tb/DUT/sys2fifo_v
add wave -noupdate -group {06 TX FIFO} -color Cyan /tb/DUT/fifo_full
add wave -noupdate -group {06 TX FIFO} -color Cyan /tb/DUT/fifo_empty
add wave -noupdate -group {06 TX FIFO} -radix hexadecimal -color Yellow /tb/DUT/fifo2tx
add wave -noupdate -group {06 TX FIFO} -color Green /tb/DUT/rd_inc
add wave -noupdate -group {06 TX FIFO} -radix hexadecimal -color Cyan /tb/DUT/FIFO_u/w_ptr
add wave -noupdate -group {06 TX FIFO} -radix hexadecimal -color Cyan /tb/DUT/FIFO_u/r_ptr

# 07 - UART TX.  P_DATA/Data_Valid must be followed by busy and a TX_OUT frame.
add wave -noupdate -group {07 UART TX} -radix hexadecimal -color Yellow /tb/DUT/UART_TX_RX/U0_UART_TX/P_DATA
add wave -noupdate -group {07 UART TX} -color Green /tb/DUT/UART_TX_RX/U0_UART_TX/Data_Valid
add wave -noupdate -group {07 UART TX} -color Cyan /tb/DUT/UART_TX_RX/U0_UART_TX/current_state
add wave -noupdate -group {07 UART TX} -color Green /tb/DUT/UART_TX_RX/U0_UART_TX/busy
add wave -noupdate -group {07 UART TX} -color Cyan /tb/DUT/UART_TX_RX/U0_UART_TX/mux_sel
add wave -noupdate -group {07 UART TX} -color Cyan /tb/DUT/UART_TX_RX/U0_UART_TX/par_bit
add wave -noupdate -group {07 UART TX} -color Green /tb/DUT/UART_TX_RX/U0_UART_TX/TX_OUT

TreeUpdate [SetDefaultTree]
configure wave -namecolwidth 230
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -rowmargin 3
configure wave -childrowmargin 2
configure wave -timelineunits us
update
WaveRestoreZoom {0 us} {200 us}
