
########################### Define Top Module ############################
                                                   
set top_module sys_top

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

set_svf System_TOP_DFT.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries           #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/ICer/UART_System/rtl
lappend search_path /home/ICer/UART_System/Cell_Library

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"


set fh [open sverilog.lst r]
set rtl [read $fh]
close $fh

regsub -all "\n" $rtl " " designs
analyze -format sverilog $designs

set fh [open verilog.lst r]
set rtl [read $fh]
close $fh

regsub -all "\n" $rtl " " designs
analyze -format verilog $designs



###################### Defining toplevel ###################################
elaborate $top_module

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"



#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

source cons.tcl 
set_scan_configuration -clock_mixing no_mix -style multiplexed_flip_flop -replace true -chain_count 4

compile_ultra -scan 

source -echo /home/ICer/UART_System/Synthesis_Formality_DFT/DFT/dft.tcl

change_name -hier -rule verilog
write_file -format verilog -hierarchy -output System_TOP_NETLIST_DFT.v

set_svf -off
#############################################################################
# Write out Design after initial compile
#############################################################################

report_power -hierarchy > power.rpt
report_area -hierarchy > area.rpt
report_timing -max_paths 100 -delay_type max > setup.rpt
report_timing -max_paths 100 -delay_type min > hold.rpt
report_clock -attributes > clocks.rpt
report_constraint -all_violators > constraints.rpt


################# reporting #######################

write_file -format verilog -hierarchy -output sys_top_netlist_n_DFT.v
write_sdf sys_top_n_DFT.sdf
write_sdc sys_top_n_DFT.sdc
write_file -format ddc -hierarchy -output sys_top_n_DFT.ddc


################# starting graphical user interface #######################

#gui_start

exit
