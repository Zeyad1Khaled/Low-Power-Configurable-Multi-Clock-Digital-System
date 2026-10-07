# PrimeTime STA script for the routed SYS_TOP implementation.
#
# Run (functional mode is the default):
#   pt_shell -f primeTime.tcl
# Run another constraint mode:
#   PT_MODE=scan pt_shell -f primeTime.tcl
#   PT_MODE=capture pt_shell -f primeTime.tcl
#
# Inputs were taken from import/MMMC.tcl and the signoff Encounter database:
#   - max: SS 1.08 V, 125 C          - min: FF 1.32 V, -40 C
#   - routed netlist: export/sys_top.v
#   - routed delay:   export/sys_top.sdf (SS/1.08 V/125 C)

set SCRIPT_DIR "/home/ICer/UART_System"
set TOP        sys_top

if {[info exists ::env(PT_MODE)]} {
    set MODE $::env(PT_MODE)
} else {
    set MODE func
}

set PNR_DIR    "/home/ICer/UART_System/System_pnr/pnr"
set NETLIST    "$PNR_DIR/export/sys_top.v"
set SDF_FILE   "$PNR_DIR/export/sys_top.sdf"
set MAX_LIB    "$SCRIPT_DIR/../System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
set MIN_LIB    "$SCRIPT_DIR/../System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
set SDC_DIR    "$PNR_DIR/sys_top_signoff.enc.dat/mmmc/modes"
set RPT_DIR    "$SCRIPT_DIR/pt_reports/$MODE"

switch -- $MODE {
    func    { set SDC_FILE "$SDC_DIR/func_mode/func_mode.sdc" }
    scan    { set SDC_FILE "$SDC_DIR/scan_mode/scan_mode.sdc" }
    capture { set SDC_FILE "$SDC_DIR/capture_mode/capture_mode.sdc" }
    default {
        echo "Error: PT_MODE must be func, scan, or capture (got '$MODE')."
        exit 2
    }
}

foreach required_file [list $NETLIST $SDF_FILE $MAX_LIB $MIN_LIB $SDC_FILE] {
    if {![file exists $required_file]} {
        echo "Error: required file not found: $required_file"
        exit 2
    }
}
file mkdir $RPT_DIR

# Link against SS for setup/max checks.  The FF min library is paired after
# linking, as required by newer PrimeTime releases and accepted by O-2018.06.
set_app_var search_path [list $SCRIPT_DIR [file dirname $MAX_LIB]]
set target_library [list $MAX_LIB]
set link_path [list * $MAX_LIB $MIN_LIB]

read_verilog $NETLIST
current_design $TOP
link_design $TOP
set_min_library $MAX_LIB -min_version $MIN_LIB

# The exported SDF is the available post-route parasitic delay annotation.
# It was written at SS/1.08 V/125 C, so max timing is the correlation corner.
read_sdf -context verilog $SDF_FILE

# Source exactly one mode per PT session; the three SDCs define the same clocks.
read_sdc $SDC_FILE

check_timing                                      > $RPT_DIR/check_timing.rpt
report_analysis_coverage -status_details all      > $RPT_DIR/analysis_coverage.rpt
report_constraint -all_violators -max_delay       > $RPT_DIR/setup_violators.rpt
report_constraint -all_violators -min_delay       > $RPT_DIR/hold_violators.rpt
report_timing -delay_type max -max_paths 50 \
              -path_type full_clock_expanded      > $RPT_DIR/setup_timing.rpt
report_timing -delay_type min -max_paths 50 \
              -path_type full_clock_expanded      > $RPT_DIR/hold_timing.rpt
report_clock -attributes                           > $RPT_DIR/clocks.rpt
report_qor                                         > $RPT_DIR/qor.rpt

echo "PrimeTime $MODE analysis complete. Reports: $RPT_DIR"
quit
