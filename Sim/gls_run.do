vlib work
vmap work

# Compile Standard Cell Library
vlog -sv /home/ICer/UART_System/System_pnr/pnr/export/sys_top_pg.v

# Compile Gate-Level Netlist
vlog -sv /home/ICer/UART_System/System_pnr/pnr/export/sys_top.v

# Compile Testbench
vlog -sv tb.sv

# Start Simulation
# Keep TB and DUT signal visibility after vopt; wave.do uses /tb/* paths.
vsim -voptargs="+acc" -sdfmax /tb/DUT=/home/ICer/UART_System/System_pnr/pnr/export/sys_top.sdf -sdfnoerror work.tb

# Load waveform 
do wave.do

# Run
run -all
