
#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

set Ref_Period 10
set UART_Period 271.29
set TX_period 8681.49
set DFT_Period 100

create_clock -period $Ref_Period -name Ref_clk -waveform {0 5} [get_ports REF_CLK]
create_clock -period $UART_Period -name UART_clk -waveform {0 135.65} [get_ports UART_CLK]

create_generated_clock -name Gated_clk -source [get_ports REF_CLK] \
			-master_clock Ref_clk \
			-combinational [get_pins ALU_CG/GATED_CLK]
			

create_generated_clock -name Tx_clk -source [get_ports UART_CLK] \
			-master_clock UART_clk \
			-divide_by 32 [get_pins TX_CLK/o_div_clk]

create_generated_clock -name Rx_clk -source [get_ports UART_CLK] \
			-master_clock UART_clk \
			-divide_by 1 [get_pins RX_CLK/o_div_clk]
############################################################################################
create_clock -period $DFT_Period -name scan_clk -waveform {0 50} [get_ports scan_clk]

set_clock_groups -logically_exclusive \
		 -group {scan_clk} \
		 -group {Ref_clk UART_clk Gated_clk Tx_clk Rx_clk}



set_clock_uncertainty -setup 0.2 [get_clocks Ref_clk]
set_clock_uncertainty -setup 0.2 [get_clocks UART_clk]
set_clock_uncertainty -setup 0.2 [get_clocks Gated_clk]
set_clock_uncertainty -setup 0.2 [get_clocks Tx_clk]
set_clock_uncertainty -setup 0.2 [get_clocks Rx_clk]


set_clock_uncertainty -hold 0.1 [get_clocks Ref_clk]
set_clock_uncertainty -hold 0.1 [get_clocks UART_clk]
set_clock_uncertainty -hold 0.1 [get_clocks Gated_clk]
set_clock_uncertainty -hold 0.1 [get_clocks Tx_clk]
set_clock_uncertainty -hold 0.1 [get_clocks Rx_clk]

set_clock_transition 0.05 [get_clocks {Ref_clk UART_clk}]

set_dont_touch_network [get_clocks {Ref_clk UART_clk Gated_clk Tx_clk Rx_clk}]

set_clock_groups -asynchronous \
	-group [get_clocks "UART_clk Tx_clk Rx_clk"] \
	-group [get_clocks "Ref_clk Gated_clk"]
####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####

set indelay_UART [expr 0.2 * $UART_Period]
set indelay_REF [expr 0.2 * $Ref_Period]
set indelay_tx [expr 0.2 * $TX_period]
set indelay_dft [expr 0.2 * $DFT_Period]

set_input_delay $indelay_UART  -clock Rx_clk [get_ports "UART_RX_IN"]

set_input_delay $indelay_dft  -clock scan_clk [get_ports "SI SE"]

set_output_delay $indelay_tx  -clock Tx_clk [get_ports "UART_TX_O"]

set_output_delay $indelay_UART  -clock Rx_clk [get_ports "parity_error framing_error"]

set_output_delay $indelay_dft  -clock scan_clk [get_ports "SO"]


####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c \
			[get_ports "UART_RX_IN SI SE"]

set_case_analysis 0 [get_ports test_mode]
set_case_analysis 0 [get_ports SE]
####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.1 [get_ports "UART_TX_O parity_error framing_error SO"]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min \
"scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" 



####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

check_design

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

