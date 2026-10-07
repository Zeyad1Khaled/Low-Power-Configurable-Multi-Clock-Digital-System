###################################################################

# Created by write_sdc on Mon Oct  5 02:48:38 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c            \
-max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c\
                         -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c            \
-min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_driving_cell -lib_cell BUFX2M -library                                     \
scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports UART_RX_IN]
set_driving_cell -lib_cell BUFX2M -library                                     \
scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports SE]
set_driving_cell -lib_cell BUFX2M -library                                     \
scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports {SI[2]}]
set_driving_cell -lib_cell BUFX2M -library                                     \
scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports {SI[1]}]
set_driving_cell -lib_cell BUFX2M -library                                     \
scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports {SI[0]}]
set_load -pin_load 0.1 [get_ports {SO[2]}]
set_load -pin_load 0.1 [get_ports {SO[1]}]
set_load -pin_load 0.1 [get_ports {SO[0]}]
set_load -pin_load 0.1 [get_ports UART_TX_O]
set_load -pin_load 0.1 [get_ports parity_error]
set_load -pin_load 0.1 [get_ports framing_error]
set_case_analysis 0 [get_ports test_mode]
set_case_analysis 0 [get_ports SE]
create_clock [get_ports REF_CLK]  -name Ref_clk  -period 10  -waveform {0 5}
set_clock_uncertainty -setup 0.2  [get_clocks Ref_clk]
set_clock_uncertainty -hold 0.1  [get_clocks Ref_clk]
set_clock_transition -min -fall 0.05 [get_clocks Ref_clk]
set_clock_transition -min -rise 0.05 [get_clocks Ref_clk]
set_clock_transition -max -fall 0.05 [get_clocks Ref_clk]
set_clock_transition -max -rise 0.05 [get_clocks Ref_clk]
create_clock [get_ports UART_CLK]  -name UART_clk  -period 271.29  -waveform {0 135.65}
set_clock_uncertainty -setup 0.2  [get_clocks UART_clk]
set_clock_uncertainty -hold 0.1  [get_clocks UART_clk]
set_clock_transition -min -fall 0.05 [get_clocks UART_clk]
set_clock_transition -min -rise 0.05 [get_clocks UART_clk]
set_clock_transition -max -fall 0.05 [get_clocks UART_clk]
set_clock_transition -max -rise 0.05 [get_clocks UART_clk]
create_generated_clock [get_pins ALU_CG/GATED_CLK] -name Gated_clk -source [get_ports REF_CLK] -master_clock Ref_clk -add -combinational
set_clock_uncertainty -setup 0.2  [get_clocks Gated_clk]
set_clock_uncertainty -hold 0.1  [get_clocks Gated_clk]
create_generated_clock [get_pins TX_CLK/o_div_clk]  -name Tx_clk  -source [get_ports UART_CLK]  -master_clock UART_clk  -divide_by 32  -add
set_clock_uncertainty -setup 0.2  [get_clocks Tx_clk]
set_clock_uncertainty -hold 0.1  [get_clocks Tx_clk]
create_generated_clock [get_pins RX_CLK/o_div_clk]  -name Rx_clk  -source [get_ports UART_CLK]  -master_clock UART_clk  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks Rx_clk]
set_clock_uncertainty -hold 0.1  [get_clocks Rx_clk]
create_clock [get_ports scan_clk]  -period 100  -waveform {0 50}
set_input_delay -clock Rx_clk  54.258  [get_ports UART_RX_IN]
set_input_delay -clock scan_clk  20  [get_ports {SI[2]}]
set_input_delay -clock scan_clk  20  [get_ports {SI[1]}]
set_input_delay -clock scan_clk  20  [get_ports {SI[0]}]
set_input_delay -clock scan_clk  20  [get_ports SE]
set_output_delay -clock Tx_clk  1736.3  [get_ports UART_TX_O]
set_output_delay -clock Rx_clk  54.258  [get_ports parity_error]
set_output_delay -clock Rx_clk  54.258  [get_ports framing_error]
set_output_delay -clock scan_clk  20  [get_ports {SO[2]}]
set_output_delay -clock scan_clk  20  [get_ports {SO[1]}]
set_output_delay -clock scan_clk  20  [get_ports {SO[0]}]
set_clock_groups  -logically_exclusive -name scan_clk_1  -group [get_clocks    \
scan_clk] -group [list [get_clocks Ref_clk] [get_clocks UART_clk] [get_clocks  \
Gated_clk] [get_clocks Tx_clk] [get_clocks Rx_clk]]
set_clock_groups  -asynchronous -name UART_clk_1  -group [list [get_clocks     \
UART_clk] [get_clocks Tx_clk] [get_clocks Rx_clk]] -group [list [get_clocks    \
Ref_clk] [get_clocks Gated_clk]]
set_case_analysis 1 test_mode 
set_case_analysis 1 SE 
