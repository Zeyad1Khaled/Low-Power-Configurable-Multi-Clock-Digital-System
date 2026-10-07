
###################################################################
########################### Variables #############################
###################################################################

set SSLIB "../../Cell_Library/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "../../Cell_Library/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "../../Cell_Library/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable
set synopsys_auto_setup true
set verification_verify_directly_undriven_output false

# Formality Setup File
set_svf "../Synthesis/System_TOP_DFT.svf"
###################################################################
###################### Reference Container ########################
###################################################################

# Read Reference Design Verilog Files
read_sverilog -container Ref /home/ICer/UART_System/rtl/UART/Package.sv

set fh [open sverilog.lst r]
set rtl [read $fh]
close $fh

regsub -all "\n" $rtl " " designs

read_sverilog -container Ref $designs

set fh [open verilog.lst r]
set rtl [read $fh]
close $fh
regsub -all "\n" $rtl " " designs
read_verilog -container Ref $designs

# Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]


# set the top Reference Design 

set_reference_design sys_top
set_top sys_top

###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files

read_verilog -netlist -container Imp "../Synthesis/System_TOP_NETLIST_DFT.v"

# Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]


# set the top Implementation Design
set_implementation_design sys_top
set_top sys_top


###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"


start_gui

