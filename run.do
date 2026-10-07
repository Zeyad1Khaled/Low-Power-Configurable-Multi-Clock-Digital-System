transcript on

# Derive project paths from this script, so the project can be moved or shared.
# Do not `cd`: this keeps the current ModelSim project directory and its work
# library unchanged.
set SYS_DIR [file dirname [file normalize [info script]]]
set TB_DIR  "$SYS_DIR/Testbench"
set RTL_DIR "$SYS_DIR/rtl"
set RTL_LIST "$RTL_DIR/rtl.f"

if {![file isdirectory work]} {
    vlib work
}
vmap work work

# Expand source-list entries relative to rtl/, so run.do works regardless of
# ModelSim's current directory. Blank lines and comments in the list are ignored.
set rtl_sources {}
set list_file [open $RTL_LIST r]
while {[gets $list_file source] >= 0} {
    set source [string trim $source]
    if {$source eq "" || [string match "#*" $source]} {
        continue
    }
    lappend rtl_sources [file join $RTL_DIR $source]
}
close $list_file

vlog -sv {*}$rtl_sources "$TB_DIR/tb.sv"

vsim -voptargs=+acc work.tb
do "$SYS_DIR/wave.do"
run -all
