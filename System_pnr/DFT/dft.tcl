##############################################################################################

#################DFT_CONS_FILE##################################################################

set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

set_dft_signal -port [get_ports scan_clk] -type ScanClock -view existing_dft -timing {30 60}

set_dft_signal -port [get_ports scan_rst] -type Reset -view existing_dft -active_state 0

set_dft_signal -port [get_ports test_mode] -type Constant -view existing_dft -active_state 1

set_dft_signal -port [get_ports test_mode] -type TestMode -view spec -active_state 1

set_dft_signal -port [get_ports SE] -type ScanEnable -view spec -active_state 1 -usage scan

set_dft_signal -port [get_ports SI] -type ScanDataIn -view spec

set_dft_signal -port [get_ports SO] -type ScanDataOut -view spec

create_test_protocol

dft_drc -verbose

preview_dft -show scan_summary

insert_dft

compile -scan -incremental

report_port > ports.rpt
dft_drc -verbose -coverage_estimate > dft_drc_post_dft.rpt


