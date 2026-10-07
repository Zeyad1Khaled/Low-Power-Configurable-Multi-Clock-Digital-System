onerror {resume}
quietly WaveActivateNextPane {} 0

# Add every preserved signal below the elaborated testbench.  The sim: prefix
# selects the simulator namespace explicitly and avoids dependence on the
# GUI's current scope.
add wave -noupdate -r sim:/tb/*
update
configure wave -namecolwidth 180
configure wave -valuecolwidth 100
configure wave -timelineunits ns
