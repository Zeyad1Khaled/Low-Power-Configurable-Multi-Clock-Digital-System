# Codex conversation

## User

check the folder name Sim , it should contain the required data to do gls ,i want you to check the gls_run.do fo issues , ignore the weird home path /home/ICER/ since its being run in a
  vm , just make sure i am using the right files and nothing is missing

## Assistant

I’ll inspect the `Sim` contents and trace every file referenced by `gls_run.do`, treating `/home/ICER/` as the VM prefix only.

## Activity

    $ pwd && rg --files Sim 2>/dev/null && find Sim -maxdepth 2 -type f -name 'gls_run.do' -print
    /home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System
    Sim/gls_run.do
    Sim/tb.sv
    Sim/wave.do
    Sim/gls_run.do
    ✓ • 0ms

## Activity

    $ sed -n '1,240p' Sim/gls_run.do && printf '\n--- tree ---\n' && find . -maxdepth 4 -type f | sort
    vlib work
    vmap work
    
    # Compile Standard Cell Library
    vlog -sv /home/ICer/UART_System/System_pnr/pnr/export/sys_top_pg.v
    
    # Compile Gate-Level Netlist
    vlog -sv /home/ICer/UART_System/System_pnr/pnr/export/sys_top.v
    
    # Compile Testbench
    vlog -sv tb.sv
    
    # Start Simulation
    vsim -sdfmax /tb/dut=/home/ICer/UART_System/System_pnr/pnr/export/sys_top.sdf -sdfnoerror work.tb
    
    # Load waveform
    do wave.do
    
    # Run
    run -all
    
    --- tree ---
    ./.directory
    ./Cell_Library/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db
    ./Cell_Library/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db
    ./Cell_Library/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db
    ./FINAL_SYSTEM_RTL_INTEGRATION_Zeyad_Khaled.zip
    ./Final_System_Design.odt
    ./Final_System_Design.pdf
    ./PrimeTime/primeTime.tcl
    ./PrimeTime/pt.log
    ./PrimeTime/pt_shell_command.log
    ./Sim/gls_run.do
    ./Sim/tb.sv
    ./Sim/wave.do
    ./Spyglass/dashboard.log
    ./Spyglass/datasheet.log
    ./Spyglass/gui_command.log
    ./Spyglass/html.log
    ./Spyglass/lint_cdc.prj
    ./Spyglass/lint_cdc/.project_snapshot
    ./Spyglass/lint_cdc/.project_status
    ./Spyglass/lint_cdc/.tmp_load_session_goal/spyglass.log
    ./Spyglass/lint_cdc/.tmp_load_session_goal/spyglass.vdb
    ./Spyglass/spy_cons.sgdc
    ./Spyglass/spyglass-1.prj
    ./Spyglass/spyglass-1/.CurrentSessionRunSummaryFiles
    ./Spyglass/spyglass-1/.project_current
    ./Spyglass/spyglass-1/.project_snapshot
    ./Spyglass/spyglass-1/.project_status
    ./Spyglass/spyglass-1/.tmp_load_session_goal/spyglass.log
    ./Spyglass/spyglass-1/.tmp_load_session_goal/spyglass.vdb
    ./Spyglass/spyglass-1/.tmp_sg_current_goal/spyglass.log
    ./Spyglass/spyglass-1/.tmp_sg_current_goal/spyglass.vdb
    ./Spyglass/spyglass-1/.tmp_sg_validate_incr_design/spyglass.log
    ./Spyglass/spyglass-1/.tmp_sg_validate_incr_design/spyglass.vdb
    ./Spyglass/spyglass-1/.tmp_xml/._Design_Read.int
    ./Spyglass/spyglass-1/.tmp_xml/._Design_Read_summary.xml
    ./Spyglass/spyglass-1/.tmp_xml/._lint-lint_rtl.int
    ./Spyglass/spyglass-1/.tmp_xml/._lint-lint_rtl_summary.xml
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_Design_Read.int
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_Design_Read_summary.xml
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_abstract.int
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_abstract_summary.xml
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_setup_check.int
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_setup_check_summary.xml
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_verify.int
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_verify_struct.int
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_verify_struct_summary.xml
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_verify_summary.xml
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_cdc-clock_reset_integrity.int
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_cdc-clock_reset_integrity_summary.xml
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_lint-lint_abstract.int
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_lint-lint_abstract_summary.xml
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_lint-lint_functional_rtl.int
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_lint-lint_functional_rtl_summary.xml
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_lint-lint_rtl.int
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_lint-lint_rtl_summary.xml
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_lint-lint_turbo_rtl.int
    ./Spyglass/spyglass-1/.tmp_xml/.sys_top_lint-lint_turbo_rtl_summary.xml
    ./Spyglass/spyglass-1/Design_Read/.sg.env
    ./Spyglass/spyglass-1/Design_Read/spyglass.log
    ./Spyglass/spyglass-1/Design_Read/spyglass.vdb
    ./Spyglass/spyglass-1/Design_Read/spyglass.vdb.data
    ./Spyglass/spyglass-1/Run_Summary/.latest__Design_Read_
    ./Spyglass/spyglass-1/Run_Summary/.latest__lint_lint_abstract_
    ./Spyglass/spyglass-1/Run_Summary/.latest__lint_lint_functional_rtl_
    ./Spyglass/spyglass-1/Run_Summary/.latest__lint_lint_rtl_
    ./Spyglass/spyglass-1/Run_Summary/.latest__lint_lint_turbo_rtl_
    ./Spyglass/spyglass-1/Run_Summary/.latest_sys_top_Design_Read_
    ./Spyglass/spyglass-1/Run_Summary/.latest_sys_top_cdc_cdc_abstract_
    ./Spyglass/spyglass-1/Run_Summary/.latest_sys_top_cdc_cdc_setup_check_
    ./Spyglass/spyglass-1/Run_Summary/.latest_sys_top_cdc_cdc_verify_
    ./Spyglass/spyglass-1/Run_Summary/.latest_sys_top_cdc_cdc_verify_struct_
    ./Spyglass/spyglass-1/Run_Summary/.latest_sys_top_cdc_clock_reset_integrity_
    ./Spyglass/spyglass-1/Run_Summary/.latest_sys_top_lint_lint_rtl_
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026032009881410.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026032145704731.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026032151533482.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026032155345169.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026032202245054.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026032408266087.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026032451021883.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026032503724738.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026034606219876.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026034651506771.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026034700513895.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026034956969711.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026035005857475.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026035620674313.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026035707160124.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026035716410488.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026210705379915.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026211052084484.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026211910071952.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026211929541128.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026211951278512.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026212237851635.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026212330601478.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026212811974361.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026212830008205.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026214320141096.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026214401927980.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026214556972577.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026214602445563.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026214620216967.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026222057315977.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026222903527490.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026223559493829.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026223704742032.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026223741096919.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026223906507199.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026224510168424.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026235212489298.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026235607266159.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.22092026235650736685.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026000828155891.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026001019555965.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026001025542076.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026001031293664.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026001048586852.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026003910179666.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026003941341907.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026004224186232.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026004733943418.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026015015364806.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026015029217074.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026015729099127.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026015846745119.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026015936656406.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026020030736185.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026020140248948.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026020152436815.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026021914201367.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026022142251729.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026022332770756.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026024118367628.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026024241412013.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026024347238906.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026024428938529.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026024449663257.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026024920809872.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026025250055622.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026025833582152.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026030015882224.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026032053105850.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026032254003624.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026032409425563.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026032513499844.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026033536256297.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026033555655618.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026033601790004.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026033608277976.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026033614482788.txt
    ./Spyglass/spyglass-1/Run_Summary/Run_Summary.23092026033651716109.txt
    ./Spyglass/spyglass-1/html_reports/goals_summary.html
    ./Spyglass/spyglass-1/spyglass.out
    ./Spyglass/spyglass-2/.CurrentSessionRunSummaryFiles
    ./Spyglass/spyglass-2/.project_current
    ./Spyglass/spyglass-2/.project_status
    ./Spyglass/spyglass-2/.tmp_load_session_goal/spyglass.log
    ./Spyglass/spyglass-2/.tmp_load_session_goal/spyglass.vdb
    ./Spyglass/spyglass-2/.tmp_sg_current_goal/spyglass.log
    ./Spyglass/spyglass-2/.tmp_sg_current_goal/spyglass.vdb
    ./Spyglass/spyglass-2/.tmp_sg_validate_incr_design/spyglass.log
    ./Spyglass/spyglass-2/.tmp_sg_validate_incr_design/spyglass.vdb
    ./Spyglass/spyglass-2/.tmp_xml/._Design_Read.int
    ./Spyglass/spyglass-2/.tmp_xml/._Design_Read_summary.xml
    ./Spyglass/spyglass-2/Design_Read/.sg.env
    ./Spyglass/spyglass-2/Design_Read/spyglass.log
    ./Spyglass/spyglass-2/Design_Read/spyglass.vdb
    ./Spyglass/spyglass-2/Design_Read/spyglass.vdb.data
    ./Spyglass/spyglass-2/Run_Summary/.latest__Design_Read_
    ./Spyglass/spyglass-2/Run_Summary/Run_Summary.03102026190059145958.txt
    ./Spyglass/spyglass-2/Run_Summary/Run_Summary.03102026190251832030.txt
    ./Spyglass/spyglass-2/html_reports/goals_summary.html
    ./Spyglass/spyglass-2/spyglass.out
    ./Spyglass2/dashboard.log
    ./Spyglass2/datasheet.log
    ./Spyglass2/gui_command.log
    ./Spyglass2/html.log
    ./Spyglass2/lint_cdc.prj
    ./Spyglass2/lint_cdc/.project_snapshot
    ./Spyglass2/lint_cdc/.project_status
    ./Spyglass2/spy_cons.sgdc
    ./Spyglass2/spyglass-1.prj
    ./Spyglass2/spyglass-1/.CurrentSessionRunSummaryFiles
    ./Spyglass2/spyglass-1/.project_current
    ./Spyglass2/spyglass-1/.project_snapshot
    ./Spyglass2/spyglass-1/.project_status
    ./Spyglass2/spyglass-1/.tmp_load_session_goal/spyglass.log
    ./Spyglass2/spyglass-1/.tmp_load_session_goal/spyglass.vdb
    ./Spyglass2/spyglass-1/.tmp_sg_current_goal/spyglass.log
    ./Spyglass2/spyglass-1/.tmp_sg_current_goal/spyglass.vdb
    ./Spyglass2/spyglass-1/.tmp_sg_validate_incr_design/spyglass.log
    ./Spyglass2/spyglass-1/.tmp_sg_validate_incr_design/spyglass.vdb
    ./Spyglass2/spyglass-1/.tmp_xml/.Data_Sync_Design_Read.int
    ./Spyglass2/spyglass-1/.tmp_xml/.Data_Sync_Design_Read_summary.xml
    ./Spyglass2/spyglass-1/.tmp_xml/._Design_Read.int
    ./Spyglass2/spyglass-1/.tmp_xml/._Design_Read_summary.xml
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_Design_Read.int
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_Design_Read_summary.xml
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_setup_check.int
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_setup_check_summary.xml
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_verify.int
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_verify_struct.int
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_verify_struct_summary.xml
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_cdc-cdc_verify_summary.xml
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_cdc-clock_reset_integrity.int
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_cdc-clock_reset_integrity_summary.xml
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_dft-dft_scan_ready.int
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_dft-dft_scan_ready_summary.xml
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_lint-lint_rtl.int
    ./Spyglass2/spyglass-1/.tmp_xml/.sys_top_lint-lint_rtl_summary.xml
    ./Spyglass2/spyglass-1/Design_Read/.sg.env
    ./Spyglass2/spyglass-1/Design_Read/spyglass.log
    ./Spyglass2/spyglass-1/Design_Read/spyglass.vdb
    ./Spyglass2/spyglass-1/Design_Read/spyglass.vdb.data
    ./Spyglass2/spyglass-1/Run_Summary/.latest__Design_Read_
    ./Spyglass2/spyglass-1/Run_Summary/.latest_sys_top_Design_Read_
    ./Spyglass2/spyglass-1/Run_Summary/.latest_sys_top_cdc_cdc_setup_check_
    ./Spyglass2/spyglass-1/Run_Summary/.latest_sys_top_cdc_cdc_verify_
    ./Spyglass2/spyglass-1/Run_Summary/.latest_sys_top_cdc_cdc_verify_struct_
    ./Spyglass2/spyglass-1/Run_Summary/.latest_sys_top_cdc_clock_reset_integrity_
    ./Spyglass2/spyglass-1/Run_Summary/.latest_sys_top_dft_dft_scan_ready_
    ./Spyglass2/spyglass-1/Run_Summary/.latest_sys_top_lint_lint_rtl_
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026023828673951.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026023902087003.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026023938431117.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026023954086606.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026024240837732.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026024419097576.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026024606399696.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026025021196394.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026034011840927.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026034028090545.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026034749970200.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026034827986149.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026034855289391.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026034950416632.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026035050777472.txt
    ./Spyglass2/spyglass-1/Run_Summary/Run_Summary.05102026035213737031.txt
    ./Spyglass2/spyglass-1/html_reports/goals_summary.html
    ./Spyglass2/spyglass-1/spyglass.out
    ./Spyglass2/waiver.rpt
    ./Synthesis_Formality_DFT/DFT/dft.tcl
    ./Synthesis_Formality_DFT/Formality/aborted_points.rpt
    ./Synthesis_Formality_DFT/Formality/failing_points.rpt
    ./Synthesis_Formality_DFT/Formality/fm.log
    ./Synthesis_Formality_DFT/Formality/fm_shell_command.lck
    ./Synthesis_Formality_DFT/Formality/fm_shell_command.log
    ./Synthesis_Formality_DFT/Formality/formality.lck
    ./Synthesis_Formality_DFT/Formality/formality.log
    ./Synthesis_Formality_DFT/Formality/formality.tcl
    ./Synthesis_Formality_DFT/Formality/formality_svf/.attributes
    ./Synthesis_Formality_DFT/Formality/formality_svf/svf.txt
    ./Synthesis_Formality_DFT/Formality/passing_points.rpt
    ./Synthesis_Formality_DFT/Formality/sverilog.lst
    ./Synthesis_Formality_DFT/Formality/unverified_points.rpt
    ./Synthesis_Formality_DFT/Formality/verilog.lst
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/System_TOP.svf
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/area.rpt
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/clocks.rpt
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/command.log
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/cons.tcl
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/constraints.rpt
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/default.svf
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/hold.rpt
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/power.rpt
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/setup.rpt
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/sverilog.lst
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/syn.log
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/syn.tcl
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/sys_top_n_DFT.ddc
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/sys_top_n_DFT.sdc
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/sys_top_n_DFT.sdf
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/sys_top_netlist_n_DFT.v
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/system.lst
    ./Synthesis_Formality_DFT/Synthesis/Pre_DFT/verilog.lst
    ./Synthesis_Formality_DFT/Synthesis/System_TOP.svf
    ./Synthesis_Formality_DFT/Synthesis/System_TOP_DFT.svf
    ./Synthesis_Formality_DFT/Synthesis/System_TOP_NETLIST_DFT.v
    ./Synthesis_Formality_DFT/Synthesis/alib-52/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db.alib
    ./Synthesis_Formality_DFT/Synthesis/alib-52/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db.alib
    ./Synthesis_Formality_DFT/Synthesis/alib-52/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db.alib
    ./Synthesis_Formality_DFT/Synthesis/area.rpt
    ./Synthesis_Formality_DFT/Synthesis/clocks.rpt
    ./Synthesis_Formality_DFT/Synthesis/command.log
    ./Synthesis_Formality_DFT/Synthesis/cons.tcl
    ./Synthesis_Formality_DFT/Synthesis/constraints.rpt
    ./Synthesis_Formality_DFT/Synthesis/default.svf
    ./Synthesis_Formality_DFT/Synthesis/dft_drc_post_dft.rpt
    ./Synthesis_Formality_DFT/Synthesis/hold.rpt
    ./Synthesis_Formality_DFT/Synthesis/ports.rpt
    ./Synthesis_Formality_DFT/Synthesis/power.rpt
    ./Synthesis_Formality_DFT/Synthesis/setup.rpt
    ./Synthesis_Formality_DFT/Synthesis/sverilog.lst
    ./Synthesis_Formality_DFT/Synthesis/syn.log
    ./Synthesis_Formality_DFT/Synthesis/syn.tcl
    ./Synthesis_Formality_DFT/Synthesis/sys_top_DFT.sdc
    ./Synthesis_Formality_DFT/Synthesis/sys_top_n_DFT.ddc
    ./Synthesis_Formality_DFT/Synthesis/sys_top_n_DFT.sdf
    ./Synthesis_Formality_DFT/Synthesis/sys_top_netlist_n_DFT.v
    ./Synthesis_Formality_DFT/Synthesis/system.lst
    ./Synthesis_Formality_DFT/Synthesis/verilog.lst
    ./Synthesis_Formality_DFT/Synthesis/work/ALU-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/ALU-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/ALU.mr
    ./Synthesis_Formality_DFT/Synthesis/work/CLK_DIV.mr
    ./Synthesis_Formality_DFT/Synthesis/work/CLK_GATE-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/CLK_GATE-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/CLK_GATE.mr
    ./Synthesis_Formality_DFT/Synthesis/work/DATA_SAMPLING.mr
    ./Synthesis_Formality_DFT/Synthesis/work/DATA_SYNC.mr
    ./Synthesis_Formality_DFT/Synthesis/work/DATA_SYNCH.mr
    ./Synthesis_Formality_DFT/Synthesis/work/DESERIALIZER.mr
    ./Synthesis_Formality_DFT/Synthesis/work/DF_SYNC-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/DF_SYNC-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/DF_SYNC.mr
    ./Synthesis_Formality_DFT/Synthesis/work/Data_Sync-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/Data_Sync-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/Data_Synch-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/Data_Synch-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/Data_sampling-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/Data_sampling-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/DeSerializer-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/DeSerializer-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/EDGE_BIT_COUNTER.mr
    ./Synthesis_Formality_DFT/Synthesis/work/Edge_Bit_Counter-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/Edge_Bit_Counter-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/FIFO_MEM_CNTRL-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/FIFO_MEM_CNTRL-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/FIFO_MEM_CNTRL.mr
    ./Synthesis_Formality_DFT/Synthesis/work/FIFO_RD-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/FIFO_RD-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/FIFO_RD.mr
    ./Synthesis_Formality_DFT/Synthesis/work/FIFO_TOP-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/FIFO_TOP-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/FIFO_TOP.mr
    ./Synthesis_Formality_DFT/Synthesis/work/FIFO_WR-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/FIFO_WR-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/FIFO_WR.mr
    ./Synthesis_Formality_DFT/Synthesis/work/MUX-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/MUX-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/MUX.mr
    ./Synthesis_Formality_DFT/Synthesis/work/PARITY.mr
    ./Synthesis_Formality_DFT/Synthesis/work/PARITY_CHK.mr
    ./Synthesis_Formality_DFT/Synthesis/work/PULSE_GEN-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/PULSE_GEN-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/PULSE_GEN.mr
    ./Synthesis_Formality_DFT/Synthesis/work/Parity_chk-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/Parity_chk-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/REGISTER.mr
    ./Synthesis_Formality_DFT/Synthesis/work/RST_SYNCH-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/RST_SYNCH-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/RST_SYNCH.mr
    ./Synthesis_Formality_DFT/Synthesis/work/RX_FSM-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/RX_FSM-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/RX_FSM.mr
    ./Synthesis_Formality_DFT/Synthesis/work/RX_TOP-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/RX_TOP-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/RX_TOP.mr
    ./Synthesis_Formality_DFT/Synthesis/work/Register-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/Register-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/SERIALIZER.mr
    ./Synthesis_Formality_DFT/Synthesis/work/STP_CHK.mr
    ./Synthesis_Formality_DFT/Synthesis/work/STRT_CHK.mr
    ./Synthesis_Formality_DFT/Synthesis/work/SYS_CTRL-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/SYS_CTRL-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/SYS_CTRL.mr
    ./Synthesis_Formality_DFT/Synthesis/work/SYS_TOP.mr
    ./Synthesis_Formality_DFT/Synthesis/work/Strt_chk-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/Strt_chk-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/TX_FSM-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/TX_FSM-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/TX_FSM.mr
    ./Synthesis_Formality_DFT/Synthesis/work/TX_TOP-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/TX_TOP-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/TX_TOP.mr
    ./Synthesis_Formality_DFT/Synthesis/work/UART-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/UART-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/UART.mr
    ./Synthesis_Formality_DFT/Synthesis/work/clk_div-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/clk_div-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/parity-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/parity-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/serializer-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/serializer-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/stp_chk-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/stp_chk-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/sys_top-verilog.pvl
    ./Synthesis_Formality_DFT/Synthesis/work/sys_top-verilog.syn
    ./Synthesis_Formality_DFT/Synthesis/work/uart_pkg.pvk
    ./System.cr.mti
    ./System.mpf
    ./System_Top.cr.mti
    ./System_Top.mpf
    ./System_pnr/DFT/System_TOP.svf
    ./System_pnr/DFT/cons.tcl
    ./System_pnr/DFT/dft.tcl
    ./System_pnr/DFT/log/syn.log
    ./System_pnr/DFT/netlists/.v
    ./System_pnr/DFT/netlists/System_TOP_NETLIST_DFT.v
    ./System_pnr/DFT/reports/area.rpt
    ./System_pnr/DFT/reports/clocks.rpt
    ./System_pnr/DFT/reports/constraints.rpt
    ./System_pnr/DFT/reports/dft_drc_post_dft.rpt
    ./System_pnr/DFT/reports/hold.rpt
    ./System_pnr/DFT/reports/ports.rpt
    ./System_pnr/DFT/reports/power.rpt
    ./System_pnr/DFT/reports/setup.rpt
    ./System_pnr/DFT/run_dft.sh
    ./System_pnr/DFT/sdc/sys_top_DFT.sdc
    ./System_pnr/DFT/sdc/sys_top_DFT.sdc~
    ./System_pnr/DFT/sdc/sys_top_DFT_capture.sdc
    ./System_pnr/DFT/sdc/sys_top_DFT_capture.sdc~
    ./System_pnr/DFT/sdc/sys_top_DFT_func.sdc
    ./System_pnr/DFT/sdc/sys_top_DFT_func.sdc~
    ./System_pnr/DFT/sdc/sys_top_DFT_scan.sdc
    ./System_pnr/DFT/sdc/sys_top_DFT_scan.sdc~
    ./System_pnr/DFT/sdf/sys_top_n_DFT.sdf
    ./System_pnr/pnr/.interactive.constr.sdc
    ./System_pnr/pnr/.interactive.constr.sdc1
    ./System_pnr/pnr/.interactive.constr.sdc2
    ./System_pnr/pnr/.qrc.leflist
    ./System_pnr/pnr/.riONTOh4
    ./System_pnr/pnr/.riZv943b
    ./System_pnr/pnr/.ric0ai4h
    ./System_pnr/pnr/.routing_guide.rgf
    ./System_pnr/pnr/Clock.ctstch
    ./System_pnr/pnr/chip_finish.tcl
    ./System_pnr/pnr/chip_finish.tcl~
    ./System_pnr/pnr/clock_report/clock.report
    ./System_pnr/pnr/clock_report/sys_top_postCTS.cap
    ./System_pnr/pnr/clock_report/sys_top_postCTS.fanout
    ./System_pnr/pnr/clock_report/sys_top_postCTS.slk
    ./System_pnr/pnr/clock_report/sys_top_postCTS.summary
    ./System_pnr/pnr/clock_report/sys_top_postCTS.tran
    ./System_pnr/pnr/clock_report/sys_top_postCTS_all.tarpt
    ./System_pnr/pnr/clock_report/sys_top_postCTS_clkgate.tarpt
    ./System_pnr/pnr/clock_report/sys_top_postCTS_in2out.tarpt
    ./System_pnr/pnr/clock_report/sys_top_postCTS_in2reg.tarpt
    ./System_pnr/pnr/clock_report/sys_top_postCTS_reg2out.tarpt
    ./System_pnr/pnr/clock_report/sys_top_postCTS_reg2reg.tarpt
    ./System_pnr/pnr/cts.tcl
    ./System_pnr/pnr/des_import.tcl
    ./System_pnr/pnr/des_import.tcl~
    ./System_pnr/pnr/encounter.cmd
    ./System_pnr/pnr/encounter.log
    ./System_pnr/pnr/export/sys_top.gds
    ./System_pnr/pnr/export/sys_top.sdf
    ./System_pnr/pnr/export/sys_top.spf
    ./System_pnr/pnr/export/sys_top.v
    ./System_pnr/pnr/export/sys_top_pg.v
    ./System_pnr/pnr/floorplan.tcl
    ./System_pnr/pnr/floorplan.tcl~
    ./System_pnr/pnr/import/MMMC.tcl
    ./System_pnr/pnr/import/MMMC.tcl~
    ./System_pnr/pnr/import/SYS_TOP_4.lef
    ./System_pnr/pnr/import/SYS_TOP_4.lef~
    ./System_pnr/pnr/import/SYS_TOP_5.lef
    ./System_pnr/pnr/import/SYS_TOP_5.lef~
    ./System_pnr/pnr/import/SYS_TOP_6.lef
    ./System_pnr/pnr/import/SYS_TOP_6.lef~
    ./System_pnr/pnr/import/gds2InLayer.map
    ./System_pnr/pnr/outputs_gen.tcl
    ./System_pnr/pnr/outputs_gen.tcl~
    ./System_pnr/pnr/placement.tcl
    ./System_pnr/pnr/report/power.rpt
    ./System_pnr/pnr/routing.tcl
    ./System_pnr/pnr/routing.tcl~
    ./System_pnr/pnr/sys_top.conn.rpt
    ./System_pnr/pnr/sys_top.conn.rpt.old
    ./System_pnr/pnr/sys_top.cts_trace
    ./System_pnr/pnr/sys_top.geom.rpt
    ./System_pnr/pnr/sys_top.geom.rpt.old
    ./System_pnr/pnr/sys_top.rguide
    ./System_pnr/pnr/sys_top_post_power.enc
    ./System_pnr/pnr/sys_top_post_power.enc.dat/enc.pref.tcl
    ./System_pnr/pnr/sys_top_post_power.enc.dat/siFix.option
    ./System_pnr/pnr/sys_top_post_power.enc.dat/sys_top.conf
    ./System_pnr/pnr/sys_top_post_power.enc.dat/sys_top.fp
    ./System_pnr/pnr/sys_top_post_power.enc.dat/sys_top.fp.spr
    ./System_pnr/pnr/sys_top_post_power.enc.dat/sys_top.globals
    ./System_pnr/pnr/sys_top_post_power.enc.dat/sys_top.mode
    ./System_pnr/pnr/sys_top_post_power.enc.dat/sys_top.opconds
    ./System_pnr/pnr/sys_top_post_power.enc.dat/sys_top.place.gz
    ./System_pnr/pnr/sys_top_post_power.enc.dat/sys_top.route.gz
    ./System_pnr/pnr/sys_top_post_power.enc.dat/sys_top.v
    ./System_pnr/pnr/sys_top_post_power.enc.dat/viewDefinition.tcl
    ./System_pnr/pnr/sys_top_post_route.enc
    ./System_pnr/pnr/sys_top_post_route.enc.dat/enc.pref.tcl
    ./System_pnr/pnr/sys_top_post_route.enc.dat/siFix.option
    ./System_pnr/pnr/sys_top_post_route.enc.dat/sys_top.conf
    ./System_pnr/pnr/sys_top_post_route.enc.dat/sys_top.ctstch
    ./System_pnr/pnr/sys_top_post_route.enc.dat/sys_top.fp
    ./System_pnr/pnr/sys_top_post_route.enc.dat/sys_top.fp.spr
    ./System_pnr/pnr/sys_top_post_route.enc.dat/sys_top.globals
    ./System_pnr/pnr/sys_top_post_route.enc.dat/sys_top.marker.gz
    ./System_pnr/pnr/sys_top_post_route.enc.dat/sys_top.mode
    ./System_pnr/pnr/sys_top_post_route.enc.dat/sys_top.opconds
    ./System_pnr/pnr/sys_top_post_route.enc.dat/sys_top.place.gz
    ./System_pnr/pnr/sys_top_post_route.enc.dat/sys_top.route.gz
    ./System_pnr/pnr/sys_top_post_route.enc.dat/sys_top.v
    ./System_pnr/pnr/sys_top_post_route.enc.dat/viewDefinition.tcl
    ./System_pnr/pnr/sys_top_pre_finish.enc
    ./System_pnr/pnr/sys_top_pre_finish.enc.dat/enc.pref.tcl
    ./System_pnr/pnr/sys_top_pre_finish.enc.dat/siFix.option
    ./System_pnr/pnr/sys_top_pre_finish.enc.dat/sys_top.conf
    ./System_pnr/pnr/sys_top_pre_finish.enc.dat/sys_top.ctstch
    ./System_pnr/pnr/sys_top_pre_finish.enc.dat/sys_top.fp
    ./System_pnr/pnr/sys_top_pre_finish.enc.dat/sys_top.fp.spr
    ./System_pnr/pnr/sys_top_pre_finish.enc.dat/sys_top.globals
    ./System_pnr/pnr/sys_top_pre_finish.enc.dat/sys_top.mode
    ./System_pnr/pnr/sys_top_pre_finish.enc.dat/sys_top.opconds
    ./System_pnr/pnr/sys_top_pre_finish.enc.dat/sys_top.place.gz
    ./System_pnr/pnr/sys_top_pre_finish.enc.dat/sys_top.route.gz
    ./System_pnr/pnr/sys_top_pre_finish.enc.dat/sys_top.v
    ./System_pnr/pnr/sys_top_pre_finish.enc.dat/viewDefinition.tcl
    ./System_pnr/pnr/sys_top_signoff.enc
    ./System_pnr/pnr/sys_top_signoff.enc.dat/enc.pref.tcl
    ./System_pnr/pnr/sys_top_signoff.enc.dat/siFix.option
    ./System_pnr/pnr/sys_top_signoff.enc.dat/sys_top.conf
    ./System_pnr/pnr/sys_top_signoff.enc.dat/sys_top.ctstch
    ./System_pnr/pnr/sys_top_signoff.enc.dat/sys_top.fp
    ./System_pnr/pnr/sys_top_signoff.enc.dat/sys_top.fp.spr
    ./System_pnr/pnr/sys_top_signoff.enc.dat/sys_top.globals
    ./System_pnr/pnr/sys_top_signoff.enc.dat/sys_top.mode
    ./System_pnr/pnr/sys_top_signoff.enc.dat/sys_top.opconds
    ./System_pnr/pnr/sys_top_signoff.enc.dat/sys_top.place.gz
    ./System_pnr/pnr/sys_top_signoff.enc.dat/sys_top.route.gz
    ./System_pnr/pnr/sys_top_signoff.enc.dat/sys_top.v
    ./System_pnr/pnr/sys_top_signoff.enc.dat/viewDefinition.tcl
    ./System_pnr/pnr/timingReports/sys_top_postRoute.cap
    ./System_pnr/pnr/timingReports/sys_top_postRoute.fanout
    ./System_pnr/pnr/timingReports/sys_top_postRoute.slk
    ./System_pnr/pnr/timingReports/sys_top_postRoute.summary
    ./System_pnr/pnr/timingReports/sys_top_postRoute.tran
    ./System_pnr/pnr/timingReports/sys_top_postRoute_all.tarpt
    ./System_pnr/pnr/timingReports/sys_top_postRoute_all_hold.tarpt
    ./System_pnr/pnr/timingReports/sys_top_postRoute_clkgate.tarpt
    ./System_pnr/pnr/timingReports/sys_top_postRoute_clkgate_hold.tarpt
    ./System_pnr/pnr/timingReports/sys_top_postRoute_hold.slk
    ./System_pnr/pnr/timingReports/sys_top_postRoute_hold.summary
    ./System_pnr/pnr/timingReports/sys_top_postRoute_in2out.tarpt
    ./System_pnr/pnr/timingReports/sys_top_postRoute_in2out_hold.tarpt
    ./System_pnr/pnr/timingReports/sys_top_postRoute_in2reg.tarpt
    ./System_pnr/pnr/timingReports/sys_top_postRoute_in2reg_hold.tarpt
    ./System_pnr/pnr/timingReports/sys_top_postRoute_reg2out.tarpt
    ./System_pnr/pnr/timingReports/sys_top_postRoute_reg2out_hold.tarpt
    ./System_pnr/pnr/timingReports/sys_top_postRoute_reg2reg.tarpt
    ./System_pnr/pnr/timingReports/sys_top_postRoute_reg2reg_hold.tarpt
    ./System_pnr/pnr/timingReports/sys_top_preCTS.cap
    ./System_pnr/pnr/timingReports/sys_top_preCTS.fanout
    ./System_pnr/pnr/timingReports/sys_top_preCTS.slk
    ./System_pnr/pnr/timingReports/sys_top_preCTS.summary
    ./System_pnr/pnr/timingReports/sys_top_preCTS.tran
    ./System_pnr/pnr/timingReports/sys_top_preCTS_all.tarpt
    ./System_pnr/pnr/timingReports/sys_top_preCTS_clkgate.tarpt
    ./System_pnr/pnr/timingReports/sys_top_preCTS_in2out.tarpt
    ./System_pnr/pnr/timingReports/sys_top_preCTS_in2reg.tarpt
    ./System_pnr/pnr/timingReports/sys_top_preCTS_reg2out.tarpt
    ./System_pnr/pnr/timingReports/sys_top_preCTS_reg2reg.tarpt
    ./System_pnr/std_cells/captables/tsmc13fsg.capTbl
    ./System_pnr/std_cells/lef/tsmc13_m_macros.lef
    ./System_pnr/std_cells/lef/tsmc13fsg_4lm_tech.lef
    ./System_pnr/std_cells/lef/tsmc13fsg_5lm_tech.lef
    ./System_pnr/std_cells/lef/tsmc13fsg_6lm_tech.lef
    ./System_pnr/std_cells/lef/tsmc13fsg_7lm_tech.lef
    ./System_pnr/std_cells/lef/tsmc13fsg_8lm_tech.lef
    ./System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db
    ./System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
    ./System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db
    ./System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
    ./System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db
    ./System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
    ./Testbench/tb.sv
    ./Testbench/tb.sv.bak
    ./Testbench/tb_new
    ./Testbench/tbb.txt
    ./codex-session-01a0d002-5439-7be1-92ac-91d1438550dz8.md
    ./rtl/ALU/ALU.v
    ./rtl/ALU/ALU.v.bak
    ./rtl/ClkDiv_ClkGate/CLK_GATE.v
    ./rtl/ClkDiv_ClkGate/Clk_divider.sv
    ./rtl/DataSynch_RstSynch_PulseGen/DATA_SYNCH.v
    ./rtl/DataSynch_RstSynch_PulseGen/PULSE_GEN.v
    ./rtl/DataSynch_RstSynch_PulseGen/RST_SYNCH.v
    ./rtl/FIFO/Async_FIFO.v
    ./rtl/FIFO/DF_SYNC.v
    ./rtl/FIFO/FIFO_MEM_CNTRL.v
    ./rtl/FIFO/FIFO_RD.v
    ./rtl/FIFO/FIFO_WR.v
    ./rtl/SYS_Control_RegisterFile/Register.v
    ./rtl/SYS_Control_RegisterFile/SYS_CTRL.sv
    ./rtl/System_Top/SYS_TOP_dft.v
    ./rtl/UART/DATA_SYNC.v
    ./rtl/UART/Data_Sampling.v
    ./rtl/UART/DeSerializer.v
    ./rtl/UART/Edge_Bit_Counter.v
    ./rtl/UART/MUX.sv
    ./rtl/UART/Package.sv
    ./rtl/UART/Parity_Calc.v
    ./rtl/UART/Parity_Chk.v
    ./rtl/UART/RX_FSM.sv
    ./rtl/UART/Serializer.v
    ./rtl/UART/Stp_Chk.v
    ./rtl/UART/Strt_Chk.v
    ./rtl/UART/TX_FSM.sv
    ./rtl/UART/TX_TOP.sv
    ./rtl/UART/UART.v
    ./rtl/UART/UART_RX.sv
    ./rtl/rtl.f
    ./rtl/sys.f
    ./rtl/system.lst
    ./run.do
    ./vsim.wlf
    ./wave.do
    ./work/_info
    ./work/_lib.qdb
    ./work/_lib1_83.qdb
    ./work/_lib1_83.qpg
    ./work/_lib1_83.qtl
    ./work/_vmake
    ✓ • 0ms

## Activity

    $ printf '%s\n' '--- testbench ---'; sed -n '1,260p' Sim/tb.sv; printf '%s\n' '--- waveform script ---'; sed -n '1,220p' Sim/wave.do; printf '%s\n' '--- netlist module/cell evidence ---'; rg -n '^module |^endmodule|scmetro|\b(VDD|VSS|vdd|gnd)\b' System_pnr/pnr/export/sys_top.v System_pnr/pnr/export/sys_top_pg.v | head -100; printf '%s\n' '--- library RTL files ---'; find System_pnr -type f \( -iname '*.v' -o -iname '*.sv' \) | sort; printf '%s\n' '--- top references ---'; rg -n 'module tb|SYS_TOP|sys_top|dut' Sim/tb.sv System_pnr/pnr/export/sys_top.v System_pnr/pnr/export/sys_top_pg.v | head -100
    --- testbench ---
    `timescale 1ns/1ps
    module tb;
        localparam int WIDTH=8, ALU_OUT_WIDTH=16, RF_DEPTH=16, RF_ADDR_WIDTH=4;
        localparam int FUN_WIDTH=4, FIFO_DEPTH=8, FIFO_ADDR_WIDTH=3, PTR_SIZE=4;
        localparam time REF_HALF_PERIOD=5ns, UART_HALF_PERIOD=135.6335ns;
    
        integer rx_prescale=32;
        integer error_count=0;
        logic REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, parity_err, stp_err;
        // Keep DFT logic inactive during the normal functional regression.
        // Leaving test_mode unconnected drives it to Z, which corrupts the
        // clock/reset muxes in SYS_TOP_dft.
        logic scan_clk, scan_rst, test_mode, SE;
        logic [2:0] SI, SO;
    
        sys_top #(.WIDTH(WIDTH), .ALU_OUT_WIDTH(ALU_OUT_WIDTH), .RF_DEPTH(RF_DEPTH),
                  .RF_ADDR_WIDTH(RF_ADDR_WIDTH), .FUN_WIDTH(FUN_WIDTH),
                  .FIFO_DEPTH(FIFO_DEPTH), .FIFO_ADDR_WIDTH(FIFO_ADDR_WIDTH),
                  .PTR_SIZE(PTR_SIZE)) DUT (
            .REF_CLK(REF_CLK), .UART_CLK(UART_CLK), .RST(RST),
            .RX_IN(RX_IN), .TX_OUT(TX_OUT),
            .parity_err(parity_err), .stp_err(stp_err),
            .scan_clk(scan_clk), .scan_rst(scan_rst),
            .test_mode(test_mode), .SE(SE), .SI(SI), .SO(SO)
        );
    
        always #REF_HALF_PERIOD REF_CLK=~REF_CLK;
        always #UART_HALF_PERIOD UART_CLK=~UART_CLK;
    
        task automatic check_equal8(input string name, input logic [7:0] actual,
                                    input logic [7:0] expected);
            begin
                if (actual !== expected) begin
                    error_count=error_count+1;
                    $error("%s: expected 0x%02h, got 0x%02h", name, expected, actual);
                end else $display("PASS: %s = 0x%02h", name, actual);
            end
        endtask
    
        task automatic initialize;
            begin
                REF_CLK=0; UART_CLK=0; RX_IN=1; RST=0;
                scan_clk=0; scan_rst=0; test_mode=0; SE=0; SI='0;
                repeat (2) @(negedge UART_CLK);
                RST=1;
                // Wait for ref_rst, uart_rst, tx_rst, and rx_rst to release.
                repeat (10) @(negedge DUT.rx_clk);
            end
        endtask
    
        // The configuration used in this test has even parity enabled.
        task automatic send_frame(input logic [7:0] data);
            integer i;
            logic parity_bit;
            begin
                parity_bit=^data;
                RX_IN=0; repeat (rx_prescale) @(negedge DUT.rx_clk); // start
                for (i=0; i<WIDTH; i=i+1) begin
                    RX_IN=data[i];
                    repeat (rx_prescale) @(negedge DUT.rx_clk);
                end
                RX_IN=parity_bit; repeat (rx_prescale) @(negedge DUT.rx_clk);
                RX_IN=1;          repeat (rx_prescale) @(negedge DUT.rx_clk); // stop
            end
        endtask
    
        task automatic send_write(input logic [3:0] address, input logic [7:0] data);
            begin
                send_frame(8'hAA); send_frame({4'h0,address}); send_frame(data);
                repeat (8) @(posedge REF_CLK);
            end
        endtask
    
        task automatic send_read(input logic [3:0] address);
            begin send_frame(8'hBB); send_frame({4'h0,address}); end
        endtask
    
        task automatic send_alu_new(input logic [7:0] a, input logic [7:0] b,
                                    input logic [3:0] func);
            begin
                send_frame(8'hCC); send_frame(a); send_frame(b); send_frame({4'h0,func});
            end
        endtask
    
        task automatic send_alu_stored(input logic [3:0] func);
            begin send_frame(8'hDD); send_frame({4'h0,func}); end
        endtask
    
        // Decodes one entire UART TX frame.  TX data changes on tx_clk rising
        // edges, so sample at falling edges (the middle of each bit period).
        task automatic expect_tx_byte(input logic [7:0] expected);
            integer i;
            logic [7:0] received;
            logic received_parity;
            begin
                @(negedge TX_OUT);           // UART start-bit transition
                @(negedge DUT.tx_clk);       // middle/end of the start bit
                @(negedge DUT.tx_clk); #1ps; // first data bit
                for (i=0; i<WIDTH; i=i+1) begin
                    received[i]=TX_OUT;
                    if (i<WIDTH-1) begin @(negedge DUT.tx_clk); #1ps; end
                end
                @(negedge DUT.tx_clk); #1ps; received_parity=TX_OUT;
                @(negedge DUT.tx_clk); #1ps;
                if (TX_OUT !== 1'b1) begin
                    error_count=error_count+1;
                    $error("TX stop bit error: got %b", TX_OUT);
                end
                check_equal8("UART TX byte", received, expected);
                if (received_parity !== (^expected)) begin
                    error_count=error_count+1;
                    $error("TX parity error for 0x%02h", expected);
                end
            end
        endtask
    
        initial begin
            initialize;
    
            // Initial UART configuration.  The first write uses reset prescale 32.
            send_write(4'h2,8'h41); // prescale 16, even parity enabled
            wait (DUT.Regfile_u.REG2 === 8'h41);
            rx_prescale=16;
            repeat (2) @(negedge DUT.rx_clk);
            send_write(4'h3,8'h20);
            wait (DUT.Regfile_u.REG3 === 8'h20);
            repeat (4) @(posedge REF_CLK);
            check_equal8("reg2 configuration",DUT.Regfile_u.REG2,8'h41);
            check_equal8("reg3 configuration",DUT.Regfile_u.REG3,8'h20);
            if (DUT.sys_ctrl_u.cfg_locked !== 1'b1) begin
                error_count=error_count+1;
                $error("Configuration did not lock");
            end
    
            send_write(4'h5,8'h07);
            send_write(4'h9,8'h03);
            check_equal8("reg5 normal write",DUT.Regfile_u.reg_file[5],8'h07);
            check_equal8("reg9 normal write",DUT.Regfile_u.reg_file[9],8'h03);
    
            fork
                expect_tx_byte(8'h07);
                send_read(4'h5);
            join
            fork
                expect_tx_byte(8'h41);
                send_read(4'h2);
            join
    
            // 3 + 4 = 0x0007, transmitted LSB then MSB.
            fork
                begin expect_tx_byte(8'h07); expect_tx_byte(8'h00); end
                send_alu_new(8'd3,8'd4,4'h0);
            join
            check_equal8("ALU operand A",DUT.Regfile_u.REG0,8'h03);
            check_equal8("ALU operand B",DUT.Regfile_u.REG1,8'h04);
    
            // Stored operands: 3 * 4 = 0x000C.
            fork
                begin expect_tx_byte(8'h0C); expect_tx_byte(8'h00); end
                send_alu_stored(4'h2);
            join
    
            // New operands: 100 / 2 = 50 = 0x0032.
            fork
                begin expect_tx_byte(8'h32); expect_tx_byte(8'h00); end
                send_alu_new(8'd100,8'd2,4'h3);
            join
    
            // Generic writes must not change reserved locations after locking.
            send_write(4'h0,8'h99); send_write(4'h1,8'h99);
            send_write(4'h2,8'h99); send_write(4'h3,8'h99);
            check_equal8("protected reg0",DUT.Regfile_u.REG0,8'h64);
            check_equal8("protected reg1",DUT.Regfile_u.REG1,8'h02);
            check_equal8("protected reg2",DUT.Regfile_u.REG2,8'h41);
            check_equal8("protected reg3",DUT.Regfile_u.REG3,8'h20);
    
            for (int address=4; address<RF_DEPTH; address++) begin
                send_write(address[3:0],8'h09);
                check_equal8("normal register write",DUT.Regfile_u.reg_file[address],8'h09);
            end
    
            if (error_count==0) $display("\n******** ALL TESTS PASSED ********\n");
            else $display("\n******** TEST FAILED: %0d error(s) ********\n",error_count);
            $stop;
        end
    
        // A failed protocol must report an error instead of making `run -all`
        // run forever while a wait statement is blocked.
        initial begin
            #20ms;
            $fatal(1, "Testbench timeout: functional test did not complete");
        end
    endmodule
    --- waveform script ---
    onerror {resume}
    quietly WaveActivateNextPane {} 0
    add wave -noupdate -expand -group TX -color Salmon /tb/DUT/UART_TX_RX/U0_UART_TX/P_DATA
    add wave -noupdate -expand -group TX /tb/DUT/UART_TX_RX/U0_UART_TX/Data_Valid
    add wave -noupdate -expand -group TX /tb/DUT/UART_TX_RX/U0_UART_TX/clk
    add wave -noupdate -expand -group TX /tb/DUT/UART_TX_RX/U0_UART_TX/TX_OUT
    add wave -noupdate -expand -group TX /tb/DUT/UART_TX_RX/U0_UART_TX/mux_sel
    add wave -noupdate -expand -group TX /tb/DUT/UART_TX_RX/U0_UART_TX/par_bit
    add wave -noupdate -expand -group states -color Cyan /tb/DUT/sys_ctrl_u/current_state
    add wave -noupdate -expand -group states -color Cyan /tb/DUT/sys_ctrl_u/next_state
    add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/WrData
    add wave -noupdate -expand -group Regfile -format Analog-Step -height 30 -max 88.0 /tb/DUT/Regfile_u/Address
    add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/WrEn
    add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/RdEn
    add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/CLK
    add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/RdData
    add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/RdData_VLD
    add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/REG0
    add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/REG1
    add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/REG2
    add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/REG3
    add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/i
    add wave -noupdate -expand -group SYS_CTRL /tb/DUT/sys_ctrl_u/OUT_VALID
    add wave -noupdate -expand -group SYS_CTRL /tb/DUT/sys_ctrl_u/ALU_OUT
    add wave -noupdate -expand -group SYS_CTRL /tb/DUT/sys_ctrl_u/RX_P_DATA
    add wave -noupdate -expand -group SYS_CTRL /tb/DUT/sys_ctrl_u/RX_D_VLD
    add wave -noupdate -expand -group SYS_CTRL /tb/DUT/sys_ctrl_u/fifo_full
    add wave -noupdate -expand -group SYS_CTRL /tb/DUT/sys_ctrl_u/ALU_FUN
    add wave -noupdate -expand -group SYS_CTRL -color Yellow /tb/DUT/sys_ctrl_u/TX_P_DATA
    add wave -noupdate -expand -group SYS_CTRL -color Yellow /tb/DUT/sys_ctrl_u/TX_D_VLD
    add wave -noupdate -expand -group FIFO /tb/DUT/FIFO_u/w_ptr_synch
    add wave -noupdate -expand -group FIFO /tb/DUT/FIFO_u/w_clken
    add wave -noupdate -expand -group FIFO /tb/DUT/FIFO_u/full_w
    add wave -noupdate -expand -group FIFO /tb/DUT/FIFO_u/empty_w
    add wave -noupdate -expand -group RX /tb/DUT/UART_TX_RX/U0_UART_RX/Prescale
    add wave -noupdate -expand -group RX /tb/DUT/UART_TX_RX/U0_UART_RX/clk
    add wave -noupdate -expand -group RX /tb/DUT/UART_TX_RX/U0_UART_RX/P_DATA
    add wave -noupdate -expand -group RX /tb/DUT/UART_TX_RX/U0_UART_RX/Data_Valid
    TreeUpdate [SetDefaultTree]
    WaveRestoreCursors {{Cursor 1} {1458146390 ps} 0}
    quietly wave cursor active 1
    configure wave -namecolwidth 150
    configure wave -valuecolwidth 100
    configure wave -justifyvalue left
    configure wave -signalnamewidth 1
    configure wave -snapdistance 10
    configure wave -datasetprefix 0
    configure wave -rowmargin 4
    configure wave -childrowmargin 2
    configure wave -gridoffset 0
    configure wave -gridperiod 1
    configure wave -griddelta 40
    configure wave -timeline 0
    configure wave -timelineunits ps
    update
    WaveRestoreZoom {1394449312 ps} {1781634167 ps}
    --- netlist module/cell evidence ---
    System_pnr/pnr/export/sys_top.v:1:module sys_top (
    System_pnr/pnr/export/sys_top.v:9346:endmodule
    System_pnr/pnr/export/sys_top.v:9353:module clk_div_WIDTH6_test_1 (
    System_pnr/pnr/export/sys_top.v:9617:endmodule
    System_pnr/pnr/export/sys_top.v:9619:module clk_div_WIDTH6_test_0 (
    System_pnr/pnr/export/sys_top.v:9737:endmodule
    System_pnr/pnr/export/sys_top.v:9739:module CLK_GATE (
    System_pnr/pnr/export/sys_top.v:9761:endmodule
    System_pnr/pnr/export/sys_top_pg.v:1:module DLY1X1M (
    System_pnr/pnr/export/sys_top_pg.v:4:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:5:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:8:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:9:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:10:endmodule
    System_pnr/pnr/export/sys_top_pg.v:12:module DLY2X1M (
    System_pnr/pnr/export/sys_top_pg.v:15:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:16:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:19:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:20:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:21:endmodule
    System_pnr/pnr/export/sys_top_pg.v:23:module DLY4X1M (
    System_pnr/pnr/export/sys_top_pg.v:26:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:27:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:30:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:31:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:32:endmodule
    System_pnr/pnr/export/sys_top_pg.v:34:module DLY3X1M (
    System_pnr/pnr/export/sys_top_pg.v:37:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:38:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:41:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:42:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:43:endmodule
    System_pnr/pnr/export/sys_top_pg.v:45:module CLKINVX12M (
    System_pnr/pnr/export/sys_top_pg.v:48:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:49:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:52:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:53:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:54:endmodule
    System_pnr/pnr/export/sys_top_pg.v:56:module CLKINVX40M (
    System_pnr/pnr/export/sys_top_pg.v:59:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:60:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:63:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:64:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:65:endmodule
    System_pnr/pnr/export/sys_top_pg.v:67:module INVX2M (
    System_pnr/pnr/export/sys_top_pg.v:70:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:71:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:74:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:75:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:76:endmodule
    System_pnr/pnr/export/sys_top_pg.v:78:module INVXLM (
    System_pnr/pnr/export/sys_top_pg.v:81:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:82:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:85:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:86:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:87:endmodule
    System_pnr/pnr/export/sys_top_pg.v:89:module CLKBUFX1M (
    System_pnr/pnr/export/sys_top_pg.v:92:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:93:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:96:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:97:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:98:endmodule
    System_pnr/pnr/export/sys_top_pg.v:100:module BUFX2M (
    System_pnr/pnr/export/sys_top_pg.v:103:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:104:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:107:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:108:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:109:endmodule
    System_pnr/pnr/export/sys_top_pg.v:111:module BUFX16M (
    System_pnr/pnr/export/sys_top_pg.v:114:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:115:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:118:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:119:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:120:endmodule
    System_pnr/pnr/export/sys_top_pg.v:122:module CLKBUFX2M (
    System_pnr/pnr/export/sys_top_pg.v:125:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:126:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:129:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:130:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:131:endmodule
    System_pnr/pnr/export/sys_top_pg.v:133:module CLKINVX16M (
    System_pnr/pnr/export/sys_top_pg.v:136:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:137:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:140:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:141:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:142:endmodule
    System_pnr/pnr/export/sys_top_pg.v:144:module CLKBUFX40M (
    System_pnr/pnr/export/sys_top_pg.v:147:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:148:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:151:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:152:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:153:endmodule
    System_pnr/pnr/export/sys_top_pg.v:155:module CLKINVX32M (
    System_pnr/pnr/export/sys_top_pg.v:158:    VDD,
    System_pnr/pnr/export/sys_top_pg.v:159:    VSS);
    System_pnr/pnr/export/sys_top_pg.v:162:   inout VDD;
    System_pnr/pnr/export/sys_top_pg.v:163:   inout VSS;
    System_pnr/pnr/export/sys_top_pg.v:164:endmodule
    System_pnr/pnr/export/sys_top_pg.v:166:module CLKBUFX24M (
    System_pnr/pnr/export/sys_top_pg.v:169:    VDD,
    --- library RTL files ---
    System_pnr/DFT/netlists/.v
    System_pnr/DFT/netlists/System_TOP_NETLIST_DFT.v
    System_pnr/pnr/export/sys_top.v
    System_pnr/pnr/export/sys_top_pg.v
    System_pnr/pnr/sys_top_post_power.enc.dat/sys_top.v
    System_pnr/pnr/sys_top_post_route.enc.dat/sys_top.v
    System_pnr/pnr/sys_top_pre_finish.enc.dat/sys_top.v
    System_pnr/pnr/sys_top_signoff.enc.dat/sys_top.v
    --- top references ---
    System_pnr/pnr/export/sys_top_pg.v:2335:module sys_top (
    Sim/tb.sv:2:module tb;
    Sim/tb.sv:12:    // clock/reset muxes in SYS_TOP_dft.
    Sim/tb.sv:16:    sys_top #(.WIDTH(WIDTH), .ALU_OUT_WIDTH(ALU_OUT_WIDTH), .RF_DEPTH(RF_DEPTH),
    System_pnr/pnr/export/sys_top.v:1:module sys_top (
    ✓ • 0ms

## Activity

    $ printf '%s\n' '--- functional netlist interface ---'; sed -n '1,70p' System_pnr/pnr/export/sys_top.v; printf '%s\n' '--- P/G netlist top interface ---'; sed -n '2330,2410p' System_pnr/pnr/export/sys_top_pg.v; printf '%s\n' '--- P/G module count and behaviour ---'; rg -n '^module sys_top|^module ' System_pnr/pnr/export/sys_top_pg.v | tail -12; printf '%s\n' '--- referenced cell definition consistency ---'; comm -23 <(rg '^\s*[A-Za-z_][A-Za-z0-9_$]*\s+[A-Za-z_][A-Za-z0-9_$]*\s*\(' System_pnr/pnr/export/sys_top.v | sed -E 's/^\s*([A-Za-z_][A-Za-z0-9_$]*).*/\1/' | sort -u) <(rg '^module ' System_pnr/pnr/export/sys_top_pg.v | awk '{print $2}' | sort -u) | head -60; printf '%s\n' '--- DFT and PNR input connection evidence ---'; rg -n 'System_TOP_NETLIST_DFT|sys_top_n_DFT|verilog|netlist' System_pnr/pnr/des_import.tcl System_pnr/pnr/encounter.log | head -50
    --- functional netlist interface ---
    module sys_top (
        REF_CLK,
        UART_CLK,
        RST_N,
        UART_RX_IN,
        scan_clk,
        scan_rst,
        test_mode,
        SE,
        SI,
        SO,
        UART_TX_O,
        parity_error,
        framing_error);
       input REF_CLK;
       input UART_CLK;
       input RST_N;
       input UART_RX_IN;
       input scan_clk;
       input scan_rst;
       input test_mode;
       input SE;
       input [3:0] SI;
       output [3:0] SO;
       output UART_TX_O;
       output parity_error;
       output framing_error;
    
       // Internal wires
       wire FE_PHN13_n1904__Exclude_0_NET;
       wire FE_PHN12_n1907__Exclude_0_NET;
       wire FE_PHN10_SI_3_;
       wire FE_PHN9_RST_N;
       wire FE_PHN8_RST_N;
       wire FE_PHN7_scan_rst;
       wire FE_PHN6_scan_rst;
       wire FE_PHN5_scan_rst;
       wire FE_PHN4_scan_rst;
       wire FE_PHN3_scan_rst;
       wire FE_PHN2_scan_rst;
       wire FE_PHN1_scan_rst;
       wire FE_PHN0_scan_rst;
       wire REF_CLK__L2_N0;
       wire REF_CLK__L1_N0;
       wire UART_CLK__L2_N0;
       wire UART_CLK__L1_N0;
       wire scan_clk__L7_N0;
       wire scan_clk__L6_N0;
       wire scan_clk__L5_N1;
       wire scan_clk__L5_N0;
       wire scan_clk__L4_N1;
       wire scan_clk__L4_N0;
       wire scan_clk__L3_N1;
       wire scan_clk__L3_N0;
       wire scan_clk__L2_N2;
       wire scan_clk__L2_N1;
       wire scan_clk__L2_N0;
       wire scan_clk__L1_N0;
       wire clk_m_REF__L6_N1;
       wire clk_m_REF__L6_N0;
       wire clk_m_REF__L5_N0;
       wire clk_m_REF__L4_N0;
       wire clk_m_REF__L3_N0;
       wire clk_m_REF__L2_N0;
       wire clk_m_REF__L1_N0;
       wire alu_cg__L1_N0;
       wire clk_m_UART__L5_N0;
       wire clk_m_UART__L4_N1;
       wire clk_m_UART__L4_N0;
       wire clk_m_UART__L3_N1;
    --- P/G netlist top interface ---
        .D(CLK_EN),
        .VDD(VDD),
        .VSS(VSS));
    endmodule
    
    module sys_top (
        REF_CLK,
        UART_CLK,
        RST_N,
        UART_RX_IN,
        scan_clk,
        scan_rst,
        test_mode,
        SE,
        SI,
        SO,
        UART_TX_O,
        parity_error,
        framing_error,
        VDD,
        VSS);
       input REF_CLK;
       input UART_CLK;
       input RST_N;
       input UART_RX_IN;
       input scan_clk;
       input scan_rst;
       input test_mode;
       input SE;
       input [3:0] SI;
       output [3:0] SO;
       output UART_TX_O;
       output parity_error;
       output framing_error;
       inout VDD;
       inout VSS;
    
       // Internal wires
       wire FE_PHN13_n1904__Exclude_0_NET;
       wire FE_PHN12_n1907__Exclude_0_NET;
       wire FE_PHN10_SI_3_;
       wire FE_PHN9_RST_N;
       wire FE_PHN8_RST_N;
       wire FE_PHN7_scan_rst;
       wire FE_PHN6_scan_rst;
       wire FE_PHN5_scan_rst;
       wire FE_PHN4_scan_rst;
       wire FE_PHN3_scan_rst;
       wire FE_PHN2_scan_rst;
       wire FE_PHN1_scan_rst;
       wire FE_PHN0_scan_rst;
       wire REF_CLK__L2_N0;
       wire REF_CLK__L1_N0;
       wire UART_CLK__L2_N0;
       wire UART_CLK__L1_N0;
       wire scan_clk__L7_N0;
       wire scan_clk__L6_N0;
       wire scan_clk__L5_N1;
       wire scan_clk__L5_N0;
       wire scan_clk__L4_N1;
       wire scan_clk__L4_N0;
       wire scan_clk__L3_N1;
       wire scan_clk__L3_N0;
       wire scan_clk__L2_N2;
       wire scan_clk__L2_N1;
       wire scan_clk__L2_N0;
       wire scan_clk__L1_N0;
       wire clk_m_REF__L6_N1;
       wire clk_m_REF__L6_N0;
       wire clk_m_REF__L5_N0;
       wire clk_m_REF__L4_N0;
       wire clk_m_REF__L3_N0;
       wire clk_m_REF__L2_N0;
       wire clk_m_REF__L1_N0;
       wire alu_cg__L1_N0;
       wire clk_m_UART__L5_N0;
       wire clk_m_UART__L4_N1;
       wire clk_m_UART__L4_N0;
       wire clk_m_UART__L3_N1;
       wire clk_m_UART__L3_N0;
       wire clk_m_UART__L2_N1;
    --- P/G module count and behaviour ---
    1574:module TLATNX1M (
    1589:module ADDFXLM (
    1606:module DFFRQX2M (
    1621:module SDFFRQX2M (
    1640:module INVX6M (
    1651:module INVX4M (
    1662:module OAI2B1XLM (
    1677:module NOR3X4M (
    1697:module clk_div_WIDTH6_test_1 (
    2115:module clk_div_WIDTH6_test_0 (
    2297:module CLK_GATE (
    2335:module sys_top (
    --- referenced cell definition consistency ---
    module
    --- DFT and PNR input connection evidence ---
    System_pnr/pnr/des_import.tcl:8:set gate_level_netlist "/home/ahesham/Projects/System/System_pnr/DFT/netlists/System_TOP_NETLIST_DFT.v"
    System_pnr/pnr/des_import.tcl:11:setUIVar rda_Input ui_netlist $gate_level_netlist
    System_pnr/pnr/encounter.log:217:Analyzing netlist ...
    System_pnr/pnr/encounter.log:218:Updating netlist
    ✓ • 0ms

## Assistant

`Sim` has the three expected local files: `gls_run.do`, `tb.sv`, and `wave.do`. The post-route netlist and SDF it references also exist under `System_pnr/pnr/export/`.

However, `gls_run.do` will not run a valid GLS as written:

- It compiles both `sys_top_pg.v` and `sys_top.v`. Both define `module sys_top`, causing a duplicate-module error. Choose one; for functional GLS use `sys_top.v`.
- `sys_top_pg.v` contains power/ground variants and empty cell module stubs, not usable functional cell behavior.
- A functional Verilog standard-cell library is missing from this repository. The available `.lib` / `.db` files are timing/characterization files, not simulation models. You need the VM’s standard-cell Verilog model compiled before the gate netlist.
- The SDF instance path is wrong: the testbench instance is `DUT`, but the script uses `/tb/dut`. It must be `/tb/DUT` (case-sensitive).
- `vmap work` should be `vmap work work`.
- The testbench is not compatible with the exported P&R netlist:
  - Netlist ports are `RST_N`, `UART_RX_IN`, `UART_TX_O`, `parity_error`, `framing_error`, and 4-bit `SI`/`SO`.
  - TB uses `RST`, `RX_IN`, `TX_OUT`, `parity_err`, `stp_err`, and 3-bit `SI`/`SO`.
  - The netlist has no parameters, while the TB overrides RTL parameters.
  - The TB accesses RTL-only hierarchy such as `DUT.rx_clk`, `DUT.Regfile_u`, and `DUT.sys_ctrl_u`; these do not exist in the flattened gate-level netlist.
  - Reset must be adapted for `RST_N` active-low behavior.

A minimal corrected GLS compile/run structure is:

```tcl
vlib work
vmap work work

# Compile the VM's functional standard-cell Verilog library here.
vlog -sv /path/to/stdcell_functional_models.v

vlog -sv /home/ICer/UART_System/System_pnr/pnr/export/sys_top.v
vlog -sv tb_gls.sv

vsim -sdfmax /tb/DUT=/home/ICer/UART_System/System_pnr/pnr/export/sys_top.sdf \
     -sdfnoerror work.tb
```

So: the P&R outputs are present, but the `Sim` setup is incomplete for GLS until you add the standard-cell Verilog models and replace/adapt `tb.sv` as a gate-level testbench.

## User

ok all the data u need is in this folder where exactly is the std cell func mode.v located

## Assistant

I’ll search the full project for Verilog standard-cell models and distinguish them from the timing `.lib` files and the P/G stubs.

## Activity

    $ find . -type f \( -iname '*.v' -o -iname '*.sv' -o -iname '*.vg' -o -iname '*.vlib' \) -print0 | xargs -0 rg -l -i 'module[[:space:]]+(INVX|NAND|DFF|BUF|AOI|OAI)|celldefine|standard[[:space:]_-]*cell' 2>/dev/null; printf '%s\n' '--- library-related candidate files ---'; find . -type f \( -iname '*cell*' -o -iname '*std*' -o -iname '*tsmc*' -o -iname '*model*' \) | sort; printf '%s\n' '--- files defining a representative netlist cell ---'; rg -l '^module[[:space:]]+DFFRQX2M|^module[[:space:]]+INVX2M' . --glob '*.{v,sv,vg,vlib}' 2>/dev/null
    ./Spyglass2/spyglass-1/sys_top/lint/lint_rtl/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c_1.v
    ./Spyglass2/spyglass-1/sys_top/lint/lint_rtl/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c_0.v
    ./Spyglass2/spyglass-1/sys_top/lint/lint_rtl/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c_2.v
    ./Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c_1.v
    ./Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c_0.v
    ./Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c_2.v
    ./System_pnr/pnr/export/sys_top_pg.v
    ./Spyglass2/spyglass-1/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c_1.v
    ./Spyglass2/spyglass-1/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c_0.v
    ./Spyglass2/spyglass-1/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c_2.v
    --- library-related candidate files ---
    ./Cell_Library/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db
    ./Cell_Library/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db
    ./Cell_Library/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db
    ./Spyglass/spyglass-1/sys_top/cdc/cdc_abstract/spyglass_reports/clock-reset/Setup_blackbox01/sys_top_bbox_model.sgdc
    ./Spyglass/spyglass-1/sys_top/cdc/cdc_abstract/spyglass_spysch/clock-reset/clock_reset_sync_rst_cell_file
    ./Spyglass/spyglass-1/sys_top/cdc/cdc_setup_check/spyglass_reports/clock-reset/Setup_blackbox01/sys_top_bbox_model.sgdc
    ./Spyglass/spyglass-1/sys_top/cdc/cdc_setup_check/spyglass_spysch/clock-reset/cklibcelltermcount
    ./Spyglass/spyglass-1/sys_top/cdc/cdc_setup_check/spyglass_spysch/clock-reset/clock_reset_sync_rst_cell_file
    ./Spyglass/spyglass-1/sys_top/cdc/cdc_verify/spyglass_reports/clock-reset/Setup_blackbox01/sys_top_bbox_model.sgdc
    ./Spyglass/spyglass-1/sys_top/cdc/cdc_verify/spyglass_spysch/clock-reset/cklibcelltermcount
    ./Spyglass/spyglass-1/sys_top/cdc/cdc_verify/spyglass_spysch/clock-reset/clock_reset_sync_rst_cell_file
    ./Spyglass/spyglass-1/sys_top/cdc/cdc_verify_struct/spyglass_reports/clock-reset/Setup_blackbox01/sys_top_bbox_model.sgdc
    ./Spyglass/spyglass-1/sys_top/cdc/cdc_verify_struct/spyglass_spysch/clock-reset/cklibcelltermcount
    ./Spyglass/spyglass-1/sys_top/cdc/cdc_verify_struct/spyglass_spysch/clock-reset/clock_reset_sync_rst_cell_file
    ./Spyglass/spyglass-1/sys_top/cdc/clock_reset_integrity/spyglass_spysch/clock-reset/clock_reset_sync_rst_cell_file
    ./Spyglass2/spyglass-1/Design_Read/spyglass_spysch/libcell_dump.gui
    ./Spyglass2/spyglass-1/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c_2.v
    ./Spyglass2/spyglass-1/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c_0.v
    ./Spyglass2/spyglass-1/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c_1.v
    ./Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/libcell_dump.gui
    ./Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c_2.v
    ./Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c_0.v
    ./Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c_1.v
    ./Spyglass2/spyglass-1/sys_top/cdc/cdc_setup_check/spyglass_reports/clock-reset/Setup_blackbox01/sys_top_bbox_model.sgdc
    ./Spyglass2/spyglass-1/sys_top/cdc/cdc_setup_check/spyglass_spysch/clock-reset/cklibcelltermcount
    ./Spyglass2/spyglass-1/sys_top/cdc/cdc_setup_check/spyglass_spysch/clock-reset/clock_reset_sync_rst_cell_file
    ./Spyglass2/spyglass-1/sys_top/cdc/cdc_setup_check/spyglass_spysch/libcell_dump.gui
    ./Spyglass2/spyglass-1/sys_top/cdc/cdc_verify/spyglass_reports/clock-reset/Setup_blackbox01/sys_top_bbox_model.sgdc
    ./Spyglass2/spyglass-1/sys_top/cdc/cdc_verify/spyglass_spysch/clock-reset/cklibcelltermcount
    ./Spyglass2/spyglass-1/sys_top/cdc/cdc_verify/spyglass_spysch/clock-reset/clock_reset_sync_rst_cell_file
    ./Spyglass2/spyglass-1/sys_top/cdc/cdc_verify/spyglass_spysch/libcell_dump.gui
    ./Spyglass2/spyglass-1/sys_top/cdc/cdc_verify_struct/spyglass_reports/clock-reset/Setup_blackbox01/sys_top_bbox_model.sgdc
    ./Spyglass2/spyglass-1/sys_top/cdc/cdc_verify_struct/spyglass_spysch/clock-reset/cklibcelltermcount
    ./Spyglass2/spyglass-1/sys_top/cdc/cdc_verify_struct/spyglass_spysch/clock-reset/clock_reset_sync_rst_cell_file
    ./Spyglass2/spyglass-1/sys_top/cdc/cdc_verify_struct/spyglass_spysch/libcell_dump.gui
    ./Spyglass2/spyglass-1/sys_top/cdc/clock_reset_integrity/spyglass_spysch/clock-reset/clock_reset_sync_rst_cell_file
    ./Spyglass2/spyglass-1/sys_top/cdc/clock_reset_integrity/spyglass_spysch/libcell_dump.gui
    ./Spyglass2/spyglass-1/sys_top/dft/dft_scan_ready/spyglass_spysch/libcell_dump.gui
    ./Spyglass2/spyglass-1/sys_top/lint/lint_rtl/spyglass_spysch/libcell_dump.gui
    ./Spyglass2/spyglass-1/sys_top/lint/lint_rtl/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c_2.v
    ./Spyglass2/spyglass-1/sys_top/lint/lint_rtl/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c_0.v
    ./Spyglass2/spyglass-1/sys_top/lint/lint_rtl/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c_1.v
    ./Synthesis_Formality_DFT/Formality/FM_WORK/Imp/WORK/SCMETRO_TSMC_CL013G_RVT_FF_1P32V_M40C.df
    ./Synthesis_Formality_DFT/Formality/FM_WORK/Imp/WORK/SCMETRO_TSMC_CL013G_RVT_SS_1P08V_125C.df
    ./Synthesis_Formality_DFT/Formality/FM_WORK/Imp/WORK/SCMETRO_TSMC_CL013G_RVT_TT_1P2V_25C.df
    ./Synthesis_Formality_DFT/Formality/FM_WORK/Ref/WORK/SCMETRO_TSMC_CL013G_RVT_FF_1P32V_M40C.df
    ./Synthesis_Formality_DFT/Formality/FM_WORK/Ref/WORK/SCMETRO_TSMC_CL013G_RVT_SS_1P08V_125C.df
    ./Synthesis_Formality_DFT/Formality/FM_WORK/Ref/WORK/SCMETRO_TSMC_CL013G_RVT_TT_1P2V_25C.df
    ./Synthesis_Formality_DFT/Synthesis/alib-52/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db.alib
    ./Synthesis_Formality_DFT/Synthesis/alib-52/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db.alib
    ./Synthesis_Formality_DFT/Synthesis/alib-52/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db.alib
    ./System_pnr/std_cells/captables/tsmc13fsg.capTbl
    ./System_pnr/std_cells/lef/tsmc13_m_macros.lef
    ./System_pnr/std_cells/lef/tsmc13fsg_4lm_tech.lef
    ./System_pnr/std_cells/lef/tsmc13fsg_5lm_tech.lef
    ./System_pnr/std_cells/lef/tsmc13fsg_6lm_tech.lef
    ./System_pnr/std_cells/lef/tsmc13fsg_7lm_tech.lef
    ./System_pnr/std_cells/lef/tsmc13fsg_8lm_tech.lef
    ./System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db
    ./System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
    ./System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db
    ./System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
    ./System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db
    ./System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
    --- files defining a representative netlist cell ---
    ./System_pnr/pnr/export/sys_top_pg.v
    ./Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c_1.v
    ./Spyglass2/spyglass-1/sys_top/lint/lint_rtl/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c_1.v
    ./Spyglass2/spyglass-1/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c_1.v
    ./Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c_0.v
    ./Spyglass2/spyglass-1/sys_top/lint/lint_rtl/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c_0.v
    ./Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c_2.v
    ./Spyglass2/spyglass-1/sys_top/lint/lint_rtl/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c_2.v
    ./Spyglass2/spyglass-1/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c_0.v
    ./Spyglass2/spyglass-1/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c_2.v
    ✓ • 0ms

## Activity

    $ model_file='Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c_1.v'; sed -n '1,180p' "$model_file"; printf '%s\n' '--- model coverage vs gate netlist cell types ---'; rg '^module ' "$model_file" | wc -l; rg '^module ' System_pnr/pnr/export/sys_top_pg.v | wc -l; printf '%s\n' '--- test for functional primitives ---'; rg -n 'assign |buf |not |nand |nor |and |or |always|udp|table' "$model_file" | head -30; printf '%s\n' '--- size and duplicate variants ---'; wc -l Spyglass2/spyglass-1/Design_Read/spyglass_spysch/spyglass/*.v
    //This is a temporary file generated by spyglass Lib2V utility from the library
    //<scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib>. Do not modify this or use this.
    //spyglass xref filename </home/ICer/UART_System/Spyglass2/./spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c_1.v>
    //spyglass xref version SpyGlass_vL-2016.06
    
    //spyglass xref lineno 284, -1
    `celldefine
    module ADDFHX1M (A, B, CI, S, CO);
        input  A;
        input  B;
        input  CI;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 1690, -1
    `celldefine
    module ADDFHX2M (A, B, CI, S, CO);
        input  A;
        input  B;
        input  CI;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 3096, -1
    `celldefine
    module ADDFHX4M (A, B, CI, S, CO);
        input  A;
        input  B;
        input  CI;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 4502, -1
    `celldefine
    module ADDFHX8M (A, B, CI, S, CO);
        input  A;
        input  B;
        input  CI;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 5908, -1
    `celldefine
    module ADDFHXLM (A, B, CI, S, CO);
        input  A;
        input  B;
        input  CI;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 7314, -1
    `celldefine
    module ADDFX1M (A, B, CI, S, CO);
        input  A;
        input  B;
        input  CI;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 8720, -1
    `celldefine
    module ADDFX2M (A, B, CI, S, CO);
        input  A;
        input  B;
        input  CI;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 10126, -1
    `celldefine
    module ADDFX4M (A, B, CI, S, CO);
        input  A;
        input  B;
        input  CI;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 11532, -1
    `celldefine
    module ADDFX8M (A, B, CI, S, CO);
        input  A;
        input  B;
        input  CI;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 12938, -1
    `celldefine
    module ADDFXLM (A, B, CI, S, CO);
        input  A;
        input  B;
        input  CI;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 14344, -1
    `celldefine
    module ADDHX1M (A, B, S, CO);
        input  A;
        input  B;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 14842, -1
    `celldefine
    module ADDHX2M (A, B, S, CO);
        input  A;
        input  B;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 15340, -1
    `celldefine
    module ADDHX4M (A, B, S, CO);
        input  A;
        input  B;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 15838, -1
    `celldefine
    module ADDHX8M (A, B, S, CO);
        input  A;
        input  B;
        output S;
        output CO;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 16336, -1
    `celldefine
    module AND2X12M (A, B, Y);
        input  A;
        input  B;
        output Y;
        parameter SPYGLASS_LIBCELL = 1;
    endmodule
    `endcelldefine
    
    //spyglass xref lineno 16548, -1
    --- model coverage vs gate netlist cell types ---
    618
    119
    --- test for functional primitives ---
    2://<scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib>. Do not modify this or use this.
    --- size and duplicate variants ---
      7053 Spyglass2/spyglass-1/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c_2.v
      7053 Spyglass2/spyglass-1/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c_0.v
      7053 Spyglass2/spyglass-1/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c_1.v
     21159 total
    ✓ • 0ms

## Assistant

There is no functional standard-cell Verilog model in the project.

The closest matching files are:

- [TT SpyGlass cell stubs](/home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c_1.v)
- [SS SpyGlass cell stubs](/home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c_0.v)
- [FF SpyGlass cell stubs](/home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Spyglass2/spyglass-1/sys_top/Design_Read/spyglass_spysch/spyglass/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c_2.v)

But these are explicitly generated for SpyGlass and every cell body is empty (`endmodule`), so they only resolve module names; they will propagate `Z`/unknown values and cannot support GLS.

The only actual library data included is the timing library:

- [TT Liberty timing library](/home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib)
- corresponding `.db` versions in that same directory.

Those are for synthesis/STA, not simulation.

So the missing file is a functional Verilog cell library, typically named something like `scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.v` or `*_functional.v`, normally supplied by the PDK/VM installation. It is not present anywhere in this folder.

## User

where am i suppoesed to use the gsd file then

## Assistant

You don’t use the `.gds` file for GLS.

`sys_top.gds` is the physical layout database used for tapeout/layout viewing, DRC/LVS, and signoff. It has no functional logic models, so ModelSim/Questa cannot compile it or simulate it.

For GLS, use:

- `System_pnr/pnr/export/sys_top.v` — post-layout gate-level netlist
- `System_pnr/pnr/export/sys_top.sdf` — extracted timing delays
- Functional standard-cell Verilog library — still missing from this folder
- A GLS-compatible testbench

The `.gds` file is only relevant if you want to open/inspect the placed-and-routed layout in a layout viewer such as KLayout or Cadence Virtuoso.

## User

ok i found the required file and updated its location , the issue is that i got an error when running vsim , error module parameter WIDTH not found for override , the same for ALU_OUT_WIDTH and other parameters , optimization failed

## Assistant

That error is expected with the post-P&R netlist: it is a fixed, flattened implementation, not the parameterized RTL module. I’ll confirm the current interfaces so I can point you to the exact TB change.

## Activity

    $ sed -n '1,55p' Sim/tb.sv; sed -n '1,38p' System_pnr/pnr/export/sys_top.v; sed -n '1,80p' Sim/gls_run.do
    `timescale 1ns/1ps
    module tb;
        localparam int WIDTH=8, ALU_OUT_WIDTH=16, RF_DEPTH=16, RF_ADDR_WIDTH=4;
        localparam int FUN_WIDTH=4, FIFO_DEPTH=8, FIFO_ADDR_WIDTH=3, PTR_SIZE=4;
        localparam time REF_HALF_PERIOD=5ns, UART_HALF_PERIOD=135.6335ns;
    
        integer rx_prescale=32;
        integer error_count=0;
        logic REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, parity_err, stp_err;
        // Keep DFT logic inactive during the normal functional regression.
        // Leaving test_mode unconnected drives it to Z, which corrupts the
        // clock/reset muxes in SYS_TOP_dft.
        logic scan_clk, scan_rst, test_mode, SE;
        logic [2:0] SI, SO;
    
        sys_top #(.WIDTH(WIDTH), .ALU_OUT_WIDTH(ALU_OUT_WIDTH), .RF_DEPTH(RF_DEPTH),
                  .RF_ADDR_WIDTH(RF_ADDR_WIDTH), .FUN_WIDTH(FUN_WIDTH),
                  .FIFO_DEPTH(FIFO_DEPTH), .FIFO_ADDR_WIDTH(FIFO_ADDR_WIDTH),
                  .PTR_SIZE(PTR_SIZE)) DUT (
            .REF_CLK(REF_CLK), .UART_CLK(UART_CLK), .RST(RST),
            .RX_IN(RX_IN), .TX_OUT(TX_OUT),
            .parity_err(parity_err), .stp_err(stp_err),
            .scan_clk(scan_clk), .scan_rst(scan_rst),
            .test_mode(test_mode), .SE(SE), .SI(SI), .SO(SO)
        );
    
        always #REF_HALF_PERIOD REF_CLK=~REF_CLK;
        always #UART_HALF_PERIOD UART_CLK=~UART_CLK;
    
        task automatic check_equal8(input string name, input logic [7:0] actual,
                                    input logic [7:0] expected);
            begin
                if (actual !== expected) begin
                    error_count=error_count+1;
                    $error("%s: expected 0x%02h, got 0x%02h", name, expected, actual);
                end else $display("PASS: %s = 0x%02h", name, actual);
            end
        endtask
    
        task automatic initialize;
            begin
                REF_CLK=0; UART_CLK=0; RX_IN=1; RST=0;
                scan_clk=0; scan_rst=0; test_mode=0; SE=0; SI='0;
                repeat (2) @(negedge UART_CLK);
                RST=1;
                // Wait for ref_rst, uart_rst, tx_rst, and rx_rst to release.
                repeat (10) @(negedge DUT.rx_clk);
            end
        endtask
    
        // The configuration used in this test has even parity enabled.
        task automatic send_frame(input logic [7:0] data);
            integer i;
            logic parity_bit;
            begin
    module sys_top (
        REF_CLK,
        UART_CLK,
        RST_N,
        UART_RX_IN,
        scan_clk,
        scan_rst,
        test_mode,
        SE,
        SI,
        SO,
        UART_TX_O,
        parity_error,
        framing_error);
       input REF_CLK;
       input UART_CLK;
       input RST_N;
       input UART_RX_IN;
       input scan_clk;
       input scan_rst;
       input test_mode;
       input SE;
       input [3:0] SI;
       output [3:0] SO;
       output UART_TX_O;
       output parity_error;
       output framing_error;
    
       // Internal wires
       wire FE_PHN13_n1904__Exclude_0_NET;
       wire FE_PHN12_n1907__Exclude_0_NET;
       wire FE_PHN10_SI_3_;
       wire FE_PHN9_RST_N;
       wire FE_PHN8_RST_N;
       wire FE_PHN7_scan_rst;
       wire FE_PHN6_scan_rst;
       wire FE_PHN5_scan_rst;
       wire FE_PHN4_scan_rst;
    vlib work
    vmap work
    
    # Compile Standard Cell Library
    vlog -sv /home/ICer/UART_System/System_pnr/pnr/export/sys_top_pg.v
    
    # Compile Gate-Level Netlist
    vlog -sv /home/ICer/UART_System/System_pnr/pnr/export/sys_top.v
    
    # Compile Testbench
    vlog -sv tb.sv
    
    # Start Simulation
    vsim -sdfmax /tb/dut=/home/ICer/UART_System/System_pnr/pnr/export/sys_top.sdf -sdfnoerror work.tb
    
    # Load waveform
    do wave.do
    
    # Run
    run -all
    ✓ • 0ms

## Assistant

The error is because `sys_top.v` is a gate netlist, and its `sys_top` module has no parameters. Remove the whole `#(...)` parameter override from [tb.sv](/home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Sim/tb.sv:16).

Change:

```sv
sys_top #(.WIDTH(WIDTH), .ALU_OUT_WIDTH(ALU_OUT_WIDTH), .RF_DEPTH(RF_DEPTH),
          .RF_ADDR_WIDTH(RF_ADDR_WIDTH), .FUN_WIDTH(FUN_WIDTH),
          .FIFO_DEPTH(FIFO_DEPTH), .PTR_SIZE(PTR_SIZE)) DUT (
```

to:

```sv
sys_top DUT (
```

But the next errors will be port mismatches, because the P&R netlist interface is fixed:

```sv
sys_top DUT (
    .REF_CLK(REF_CLK),
    .UART_CLK(UART_CLK),
    .RST_N(RST_N),
    .UART_RX_IN(RX_IN),
    .scan_clk(scan_clk),
    .scan_rst(scan_rst),
    .test_mode(test_mode),
    .SE(SE),
    .SI(SI),
    .SO(SO),
    .UART_TX_O(TX_OUT),
    .parity_error(parity_err),
    .framing_error(stp_err)
);
```

Declare `RST_N` instead of `RST`, and make `SI` and `SO` 4-bit:

```sv
logic REF_CLK, UART_CLK, RST_N, RX_IN, TX_OUT, parity_err, stp_err;
logic [3:0] SI, SO;
```

Reset is active-low in this netlist, so initialize with `RST_N=0` and release it using `RST_N=1`.

Also, your current [gls_run.do](/home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Sim/gls_run.do:5) still compiles `sys_top_pg.v`, not the library file you found. Replace that command with the functional cell-model path. Do not compile `sys_top_pg.v`, because it also defines `sys_top` and will collide with `sys_top.v`.

Finally, correct the SDF target to:

```tcl
vsim -sdfmax /tb/DUT=/home/ICer/UART_System/System_pnr/pnr/export/sys_top.sdf -sdfnoerror work.tb
```

After these compile-level fixes, the testbench’s references such as `DUT.rx_clk` and `DUT.Regfile_u` will still fail because those RTL hierarchy names do not exist in the flat gate-level netlist.

## User

u wont see the updated changes immediately since i am chaiging things in the vm instead , now i get diff errors , failed to find regFile_u in herachial name DUT.regFile_u.REG2 same for REG3 and others too

## Assistant

That is also expected. `Regfile_u` is an RTL instance name, and P&R flattened/renamed the design. It does not exist in the gate netlist, so all references like these must be removed:

```sv
DUT.Regfile_u.REG2
DUT.Regfile_u.REG3
DUT.Regfile_u.reg_file[...]
DUT.sys_ctrl_u.cfg_locked
DUT.rx_clk
DUT.tx_clk
```

For GLS, the testbench must verify only top-level observable behavior:

- Drive `REF_CLK`, `UART_CLK`, `RST_N`, and `UART_RX_IN`.
- Observe `UART_TX_O`, `parity_error`, `framing_error`, and optionally `SO`.
- Check UART output bytes/protocol behavior rather than internal register contents.

For example, remove:

```sv
wait (DUT.Regfile_u.REG2 === 8'h41);
check_equal8("reg2 configuration", DUT.Regfile_u.REG2, 8'h41);
if (DUT.sys_ctrl_u.cfg_locked !== 1'b1) ...
```

Keep the external transaction, then allow enough time for it to finish:

```sv
send_write(4'h2, 8'h41);
repeat (20) @(posedge REF_CLK);
```

Likewise, change waits based on internal clocks:

```sv
@(negedge DUT.rx_clk)
@(negedge DUT.tx_clk)
```

to use the top-level clocks. In this design, UART-related logic derives its timing from `UART_CLK`, so use `UART_CLK` plus the appropriate cycle count.

The testbench is currently an RTL white-box regression. GLS needs a black-box version: same stimulus, but no dependence on internal paths or register names.

## User

you know what , fix all the probelms in my .sv tb in the Sim folder

## Assistant

I’ll convert the simulation TB into a gate-level black-box testbench: fixed netlist interface, active-low reset, and no dependence on RTL hierarchy.

## Activity

    $ rg -n 'DUT\.|module sys_top|UART_TX|tx_clk|UART_CLK|Prescale|RST_N|RST\b' rtl/System_Top/SYS_TOP_dft.v rtl/UART/TX_TOP.sv rtl/ClkDiv_ClkGate/Clk_divider.sv rtl/SYS_Control_RegisterFile/SYS_CTRL.sv | head -240; printf '%s\n' '--- all hierarchy references in GLS TB ---'; rg -n 'DUT\.' Sim/tb.sv; printf '%s\n' '--- repository status ---'; git status --short
    rtl/System_Top/SYS_TOP_dft.v:1:module sys_top #(parameter
    rtl/System_Top/SYS_TOP_dft.v:14:    input REF_CLK,UART_CLK,
    rtl/System_Top/SYS_TOP_dft.v:15:    input RST_N,
    rtl/System_Top/SYS_TOP_dft.v:21:    output UART_TX_O,
    rtl/System_Top/SYS_TOP_dft.v:26:assign clk_m_UART = test_mode ? scan_clk : UART_CLK;
    rtl/System_Top/SYS_TOP_dft.v:52:wire tx_clk, rx_clk;
    rtl/System_Top/SYS_TOP_dft.v:88:assign rst_m = test_mode ? scan_rst : RST_N;
    rtl/System_Top/SYS_TOP_dft.v:91:assign tx_clk = test_mode ? scan_clk : tx_func_clk;
    rtl/System_Top/SYS_TOP_dft.v:95:.clk(tx_clk),
    rtl/System_Top/SYS_TOP_dft.v:103:.W_RST(ref_rst),
    rtl/System_Top/SYS_TOP_dft.v:105:.R_CLK(tx_clk),
    rtl/System_Top/SYS_TOP_dft.v:106:.R_RST(tx_rst),
    rtl/System_Top/SYS_TOP_dft.v:134:.RST(ref_rst),
    rtl/System_Top/SYS_TOP_dft.v:178:UART #(.DATA_WIDTH(WIDTH)) UART_TX_RX (
    rtl/System_Top/SYS_TOP_dft.v:179:.TX_RST(tx_rst),
    rtl/System_Top/SYS_TOP_dft.v:180:.RX_RST(rx_rst),
    rtl/System_Top/SYS_TOP_dft.v:181:.TX_CLK(tx_clk),
    rtl/System_Top/SYS_TOP_dft.v:188:.TX_OUT_S(UART_TX_O),
    rtl/System_Top/SYS_TOP_dft.v:190:.Prescale(reg2[7:2]),
    rtl/System_Top/SYS_TOP_dft.v:228:      .clk(tx_clk),
    --- all hierarchy references in GLS TB ---
    47:            repeat (10) @(negedge DUT.rx_clk);
    57:            RX_IN=0; repeat (rx_prescale) @(negedge DUT.rx_clk); // start
    60:                repeat (rx_prescale) @(negedge DUT.rx_clk);
    62:            RX_IN=parity_bit; repeat (rx_prescale) @(negedge DUT.rx_clk);
    63:            RX_IN=1;          repeat (rx_prescale) @(negedge DUT.rx_clk); // stop
    97:            @(negedge DUT.tx_clk);       // middle/end of the start bit
    98:            @(negedge DUT.tx_clk); #1ps; // first data bit
    101:                if (i<WIDTH-1) begin @(negedge DUT.tx_clk); #1ps; end
    103:            @(negedge DUT.tx_clk); #1ps; received_parity=TX_OUT;
    104:            @(negedge DUT.tx_clk); #1ps;
    122:        wait (DUT.Regfile_u.REG2 === 8'h41);
    124:        repeat (2) @(negedge DUT.rx_clk);
    126:        wait (DUT.Regfile_u.REG3 === 8'h20);
    128:        check_equal8("reg2 configuration",DUT.Regfile_u.REG2,8'h41);
    129:        check_equal8("reg3 configuration",DUT.Regfile_u.REG3,8'h20);
    130:        if (DUT.sys_ctrl_u.cfg_locked !== 1'b1) begin
    137:        check_equal8("reg5 normal write",DUT.Regfile_u.reg_file[5],8'h07);
    138:        check_equal8("reg9 normal write",DUT.Regfile_u.reg_file[9],8'h03);
    154:        check_equal8("ALU operand A",DUT.Regfile_u.REG0,8'h03);
    155:        check_equal8("ALU operand B",DUT.Regfile_u.REG1,8'h04);
    172:        check_equal8("protected reg0",DUT.Regfile_u.REG0,8'h64);
    173:        check_equal8("protected reg1",DUT.Regfile_u.REG1,8'h02);
    174:        check_equal8("protected reg2",DUT.Regfile_u.REG2,8'h41);
    175:        check_equal8("protected reg3",DUT.Regfile_u.REG3,8'h20);
    179:            check_equal8("normal register write",DUT.Regfile_u.reg_file[address],8'h09);
    --- repository status ---
    fatal: not a git repository (or any parent up to mount point /)
    Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).
    ✗ (128) • 0ms

## Activity

    $ sed -n '1,260p' rtl/System_Top/SYS_TOP_dft.v; sed -n '1,220p' rtl/ClkDiv_ClkGate/Clk_divider.sv; sed -n '1,240p' rtl/UART/TX_TOP.sv; sed -n '1,230p' rtl/UART/UART.v
    module sys_top #(parameter
                            WIDTH=8,
                            ALU_OUT_WIDTH=2*WIDTH,
                            RF_DEPTH=16,
                            RF_ADDR_WIDTH=$clog2(RF_DEPTH),
    
                            FUN_WIDTH=4,
                            FIFO_DEPTH=8,
                            FIFO_ADDR_WIDTH=$clog2(FIFO_DEPTH),
                            PTR_SIZE = FIFO_ADDR_WIDTH+1,
                NUM_OF_CHAINS = 4)
    
    (
        input REF_CLK,UART_CLK,
        input RST_N,
        input UART_RX_IN,
        input scan_clk,scan_rst,test_mode,SE,
        input [NUM_OF_CHAINS-1 : 0] SI,
    
        output [NUM_OF_CHAINS -1 : 0 ] SO,
        output UART_TX_O,
        output parity_error,
        output framing_error
    );
    wire clk_m_UART , clk_m_REF , rst_m;
    assign clk_m_UART = test_mode ? scan_clk : UART_CLK;
    assign clk_m_REF = test_mode ? scan_clk : REF_CLK;
    
    //rst synch , clk gating , clk dividers
    wire alu_cg;
    
    //ALU
    wire alu_out_v;
    wire [ALU_OUT_WIDTH-1:0] alu_out;
    wire [FUN_WIDTH-1:0] alu_func;
    wire en,alu_clken;
    
    // Regfile
    wire [WIDTH-1:0] reg0,reg1,reg2,reg3;
    wire wr_en,rd_en;
    wire [WIDTH-1:0] rd_data;
    wire rd_data_vld;
    wire [RF_ADDR_WIDTH-1:0] address;
    wire [WIDTH-1:0] wr_data;
    wire rd_inc;
    
    //rx & tx
    wire [WIDTH-1:0] rx_p_out;
    wire rx_out_v;
    wire clk_div_en;
    reg [5:0] rx_ratio;
    wire tx_clk, rx_clk;
    wire busy;
    
    //Data_Sync
    wire [WIDTH-1:0] synced_p_data;
    wire synced_v_data;
    
    //sys_ctrl outputs
    wire [WIDTH-1:0] sys2fifo;
    wire sys2fifo_v;
    wire fifo_full;
    wire fifo_empty;
    wire [WIDTH-1:0] fifo2tx;
    wire tx_func_clk;
    wire rx_func_clk;
    
    
    wire alu_clk_en_test;
    
          wire ref_func_rst;
          wire uart_func_rst;
          wire tx_func_rst;
          wire rx_func_rst;
    
          // Final resets applied to sequential logic
          wire ref_rst;
          wire uart_rst;
          wire tx_rst;
          wire rx_rst;
    
          assign ref_rst  = test_mode ? scan_rst : ref_func_rst;
          assign uart_rst = test_mode ? scan_rst : uart_func_rst;
          assign tx_rst   = test_mode ? scan_rst : tx_func_rst;
          assign rx_rst   = test_mode ? scan_rst : rx_func_rst;
    
    
    assign rst_m = test_mode ? scan_rst : RST_N;
    assign alu_clk_en_test = alu_clken | test_mode;
    
    assign tx_clk = test_mode ? scan_clk : tx_func_clk;
    assign rx_clk = test_mode ? scan_clk : rx_func_clk;
    
    PULSE_GEN Pulse_U(
    .clk(tx_clk),
    .rst(tx_rst),
    .lvl_sig(busy),
    .pulse_sig(rd_inc)
    );
    
    FIFO_TOP #(.BUS_WIDTH(WIDTH),.DEPTH(FIFO_DEPTH),.ADDR_WIDTH(FIFO_ADDR_WIDTH),.PTR_SIZE(PTR_SIZE)) FIFO_u (
    .W_CLK(clk_m_REF),
    .W_RST(ref_rst),
    .W_INC(sys2fifo_v),
    .R_CLK(tx_clk),
    .R_RST(tx_rst),
    .R_INC(rd_inc),
    .WR_DATA(sys2fifo),
    .FULL(fifo_full),
    .EMPTY(fifo_empty),
    .RD_DATA(fifo2tx)
    
    );
    
    
    ALU #(.WIDTH(WIDTH),.OUT_WIDTH(ALU_OUT_WIDTH),.FUN_WIDTH(FUN_WIDTH)) ALU_u (
    .A(reg0),
    .B(reg1),
    .ALU_FUN(alu_func),
    .clk(alu_cg),
    .rst(ref_rst),
    .en(en),
    .ALU_OUT(alu_out),
    .OUT_VALID(alu_out_v)
    );
    
    
    Register #(.WIDTH(WIDTH),.DEPTH(RF_DEPTH),.ADDRESS(RF_ADDR_WIDTH)) Regfile_u (
    .WrData(wr_data),
    .Address(address),
    .WrEn(wr_en),
    .RdEn(rd_en),
    .CLK(clk_m_REF),
    .RST(ref_rst),
    .RdData(rd_data),
    .RdData_VLD(rd_data_vld),
    .REG0(reg0),
    .REG1(reg1),
    .REG2(reg2),
    .REG3(reg3)
    );
    
    
    
    
    SYS_CTRL #(.WIDTH(WIDTH),.ALU_OUT_WIDTH(ALU_OUT_WIDTH),.ADDR(RF_ADDR_WIDTH)) sys_ctrl_u (
    .clk(clk_m_REF),
    .rst(ref_rst),
    .OUT_VALID(alu_out_v),
    .ALU_OUT(alu_out),
    .RdData(rd_data),
    .RX_P_DATA(synced_p_data),
    .RdData_Valid(rd_data_vld),
    .RX_D_VLD(synced_v_data),
    .ALU_FUN(alu_func),
    .EN(en),
    .CLK_EN(alu_clken),
    .Address(address),
    .WrEn(wr_en),
    .RdEn(rd_en),
    .WrData(wr_data),
    .TX_P_DATA(sys2fifo),
    .TX_D_VLD(sys2fifo_v),
    .clk_div_en(clk_div_en),
    .fifo_full(fifo_full)
    );
    
    
    Data_Synch Rx2SysCtrl (
    .unsync_bus(rx_p_out),
    .bus_enable(rx_out_v),
    .clk(clk_m_REF),
    .rst(ref_rst),
    .sync_bus(synced_p_data),
    .en_pulse(synced_v_data)
    );
    
    UART #(.DATA_WIDTH(WIDTH)) UART_TX_RX (
    .TX_RST(tx_rst),
    .RX_RST(rx_rst),
    .TX_CLK(tx_clk),
    .RX_CLK(rx_clk),
    .RX_IN_S(UART_RX_IN),
    .RX_OUT_P(rx_p_out),
    .RX_OUT_V(rx_out_v),
    .TX_IN_P(fifo2tx),
    .TX_IN_V(~fifo_empty),
    .TX_OUT_S(UART_TX_O),
    .TX_OUT_V(busy),
    .Prescale(reg2[7:2]),
    .parity_enable(reg2[0]),
    .parity_type(reg2[1]),
    .parity_error(parity_error),
    .framing_error(framing_error)
    
    );
    
    clk_div #(.WIDTH(6)) TX_CLK (
    .i_ref_clk(clk_m_UART),
    .i_rst_n(uart_rst),
    .i_clk_en(clk_div_en),
    .i_div_ratio(reg3[5:0]),
    .o_div_clk(tx_func_clk)
    );
    
    clk_div #(.WIDTH(6)) RX_CLK (
    .i_ref_clk(clk_m_UART),
    .i_rst_n(uart_rst),
    .i_clk_en(clk_div_en),
    .i_div_ratio(rx_ratio),
    .o_div_clk(rx_func_clk)
    );
    
    RST_SYNCH RF1 (
    .rst(rst_m),
    .clk(clk_m_REF),
    .synch_rst(ref_func_rst)
    );
    
    RST_SYNCH uart_rst_sync (
          .rst(rst_m),
          .clk(clk_m_UART),
          .synch_rst(uart_func_rst)
      );
    
    RST_SYNCH tx_rst_sync (
          .rst(uart_rst),
          .clk(tx_clk),
          .synch_rst(tx_func_rst)
      );
    
    RST_SYNCH rx_rst_sync (
          .rst(uart_rst),
          .clk(rx_clk),
          .synch_rst(rx_func_rst)
      );
    
    
    CLK_GATE ALU_CG (
    .CLK(clk_m_REF),
    .CLK_EN(alu_clk_en_test),
    .GATED_CLK(alu_cg)
    
    );
    
    always@(*)begin
    
        case (reg2[7:2])
    
            'd8:rx_ratio=4;
            'd16:rx_ratio=2;
            'd32:rx_ratio=1;
            default:rx_ratio=1;
        endcase
    
    end
    endmodule
    module clk_div #(parameter WIDTH=8)(
    
        input i_ref_clk,
        input i_rst_n,
        input i_clk_en,
        input [WIDTH-1:0] i_div_ratio,
    
        output o_div_clk
    );
    
    reg [WIDTH-1:0] count;
    wire [WIDTH-1:0] high_th,low_th;
    wire [WIDTH-1:0] active_th;
    wire is_valid;
    
    reg div_clk_reg;
    
    assign high_th=i_div_ratio>>1;
    assign low_th = i_div_ratio - high_th;
    assign active_th = !div_clk_reg ? high_th : low_th;
    
    assign o_div_clk = !is_valid ?i_ref_clk:div_clk_reg;
    
    
    assign is_valid = i_clk_en && !((i_div_ratio == 0) || (i_div_ratio == 1));
    
    
    always@(posedge i_ref_clk or negedge i_rst_n)begin
    
        if(!i_rst_n)begin
            count<='b1;
            div_clk_reg<='b0;
    
        end
    
        else begin
            if (is_valid)begin
                if(count>=active_th)begin
                    div_clk_reg<=!div_clk_reg;
                    count     <= 'b1;
                end
                else begin
                    count<=count+1;
                    end
            end
            else begin
                count<='b1;
                div_clk_reg<=0;
            end
        end
    end
    endmodule
    import uart_pkg::*;
    
    
    module TX_TOP #(parameter WIDTH = 8)(
    
      input [WIDTH-1:0] P_DATA,
      input Data_Valid,
      input PAR_TYP,PAR_EN,
      input clk,rst,
    
      output TX_OUT,
      output busy
    
    );
    
    //serializer
    wire ser_done,ser_en,ser_data;
    
    //FSM
    mux_sel_e mux_sel;
    
    //parity_Calc
    wire par_bit;
    
    serializer #(.WIDTH(WIDTH)) U1 (
    .P_DATA(P_DATA),
    .ser_en(ser_en),
    .clk(clk),
    .rst(rst),
    .ser_done(ser_done),
    .ser_data(ser_data)
    );
    
    TX_FSM U2 (
    .clk(clk),
    .rst(rst),
    .Data_Valid(Data_Valid),
    .PAR_EN(PAR_EN),
    .ser_done(ser_done),
    .ser_en(ser_en),
    .mux_sel(mux_sel),
    .busy(busy)
    );
    
    parity #(.WIDTH(WIDTH)) U3 (
    .P_DATA(P_DATA),
    .PAR_TYP(PAR_TYP),
    // Capture parity exactly when the serializer captures P_DATA.  Data_Valid
    // can remain high while the FIFO advances to the next word during a frame.
    .DATA_Valid(ser_en),
    .clk(clk),
    .rst(rst),
    .par_bit(par_bit)
    );
    
    MUX U4 (
    .mux_sel(mux_sel),
    .ser_data(ser_data),
    .par_bit(par_bit),
    .TX_OUT(TX_OUT)
    );
    
    endmodule
    
    module UART # ( parameter DATA_WIDTH = 8)
    
    (
     input   wire                          TX_RST,RX_RST,
     input   wire                          TX_CLK,
     input   wire                          RX_CLK,
     input   wire                          RX_IN_S,
    
     output  wire   [DATA_WIDTH-1:0]       RX_OUT_P,
     output  wire                          RX_OUT_V,
    
     input   wire   [DATA_WIDTH-1:0]       TX_IN_P,
     input   wire                          TX_IN_V,
    
     output  wire                          TX_OUT_S,
     output  wire                          TX_OUT_V,
    
     input   wire   [5:0]                  Prescale,
     input   wire                          parity_enable,
     input   wire                          parity_type,
    
     output  wire                          parity_error,
     output  wire                          framing_error
    
    );
    
    
    TX_TOP  #(.WIDTH(DATA_WIDTH)) U0_UART_TX (
    .clk(TX_CLK),
    .rst(TX_RST),
    .P_DATA(TX_IN_P),
    .Data_Valid(TX_IN_V),
    .PAR_EN(parity_enable),
    .PAR_TYP(parity_type),
    .TX_OUT(TX_OUT_S),
    .busy(TX_OUT_V)
    );
    
    
    RX_TOP U0_UART_RX (
    .clk(RX_CLK),
    .rst(RX_RST),
    .RX_IN(RX_IN_S),
    .Prescale(Prescale),
    .PAR_EN(parity_enable),
    .PAR_TYP(parity_type),
    .P_DATA(RX_OUT_P),
    .Data_Valid(RX_OUT_V),
    .Parity_Err(parity_error),
    .Stop_Err(framing_error)
    );
    
    
    
    
    endmodule
    
    ✓ • 0ms

## Activity

    $ sed -n '1,260p' rtl/UART/RX_TOP.sv 2>/dev/null || sed -n '1,260p' rtl/UART/UART_RX.sv; sed -n '1,260p' rtl/SYS_Control_RegisterFile/Register.v; rg -n 'REG2|reg_file|RST|rst' rtl/SYS_Control_RegisterFile/Register.v; sed -n '1,100p' rtl/UART/TX_FSM.sv
    module RX_TOP #(parameter WIDTH=8)(
      input RX_IN,
      input [5:0] Prescale,
      input PAR_EN,
      input PAR_TYP,
      input clk,rst,
    
      output [WIDTH-1:0] P_DATA,
      output Parity_Err,
      output Stop_Err,
      output Data_Valid
    );
    /////////////////////////////////////////////////
    wire data_samp_en,edge_en;
    
    wire [5:0] edge_cnt;
    wire [3:0] bit_cnt;
    
    wire par_chk_en,par_err,par_done,stp_done;
    
    wire strt_chk_en,strt_glitch;
    
    wire stp_chk_en, stp_err;
    
    wire deser_en, samp_b,samp_valid;
    /////////////////////////////////////////////////////
    
    RX_FSM U7 (
    .RX_IN(RX_IN),
    .clk(clk),
    .rst(rst),
    //.edge_cnt(edge_cnt),
    //.Prescale(Prescale),
    .bit_cnt(bit_cnt),
    .Sample_valid(samp_valid),
    .par_done(par_done),
    .stp_done(stp_done),
    .par_err(par_err),
    .strt_glitch(strt_glitch),
    .stp_err(stp_err),
    .par_en(PAR_EN),
    .data_samp_en(data_samp_en),
    .edge_en(edge_en),
    .par_chk_en(par_chk_en),
    .strt_chk_en(strt_chk_en),
    .stp_chk_en(stp_chk_en),
    .deser_en(deser_en),
    .data_valid(Data_Valid)
    );
    
    stp_chk U6 (
    .stp_chk_en(stp_chk_en),
    .Sampled_bit(samp_b),
    .clk(clk),
    .rst(rst),
    .stp_err(stp_err),
    .stp_done(stp_done)
    );
    
    
    Strt_chk U5 (
    .Strt_chk_en(strt_chk_en),
    .Sampled_bit(samp_b),
    .clk(clk),
    .rst(rst),
    .strt_glitch(strt_glitch)
    );
    
    
    Parity_chk U4 (
    .Par_chk_en(par_chk_en),
    .Par_typ(PAR_TYP),
    .Sampled_bit(samp_b),
    .clk(clk),
    .rst(rst),
    .par_err(par_err),
    .par_done(par_done)
    );
    
    
    Edge_Bit_Counter U1 (
    .Edge_En(edge_en),
    .clk(clk),
    .rst(rst),
    .Par_EN(PAR_EN),
    .Prescale(Prescale),
    .Bit_cnt(bit_cnt),
    .Edge_cnt(edge_cnt)
    );
    
    Data_sampling U2 (
    .Edge_cnt(edge_cnt),
    .Prescale(Prescale),
    .clk(clk),
    .rst(rst),
    .data_samp_en(data_samp_en),
    .RX_IN(RX_IN),
    .Sampled_bit(samp_b),
    .Sample_Valid(samp_valid)
    );
    
    DeSerializer U3 (
    .Sampled_bit(samp_b),
    .derser_en(deser_en),
    .clk(clk),
    .rst(rst),
    .P_DATA(P_DATA)
    );
    
    assign Parity_Err = par_err;
    assign Stop_Err   = stp_err;
    
    
    
    endmodule
    
    module Register #(parameter WIDTH=8,DEPTH=16,ADDRESS=$clog2(DEPTH))(
      input [WIDTH-1:0] WrData,
      input [ADDRESS-1:0] Address,
      input WrEn,RdEn,
      input CLK,RST,
    
      output reg [WIDTH-1:0] RdData,
      output reg RdData_VLD,
      output [WIDTH-1:0] REG0,REG1,REG2,REG3
    );
    reg [WIDTH-1:0] reg_file [0:DEPTH-1];
    integer i;
    always@(posedge CLK or negedge RST )begin
    
      if(!RST)begin
        RdData_VLD<='b0;
        RdData<='b0;
        for(i=0;i<DEPTH;i=i+1)begin
          if(i==2)begin
            reg_file[i]<='b100000_01;
          end
          else if(i==3)begin
            reg_file[i]<='b0010_0000;
          end
          else begin
            reg_file[i]<={WIDTH{1'b0}};
          end
        end
    
    
      end
    
    else if(WrEn && (!RdEn))begin
      reg_file[Address]<=WrData;
    end
    
    else if(RdEn && (!WrEn))begin
      RdData<=reg_file[Address];
      RdData_VLD<='b1;
    end
    
    else begin
      RdData_VLD<='b0;
    end
    
    
    
    end
    assign REG0=reg_file[0];
    assign REG1=reg_file[1];
    assign REG2=reg_file[2];
    assign REG3=reg_file[3];
    endmodule
    
    5:  input CLK,RST,
    9:  output [WIDTH-1:0] REG0,REG1,REG2,REG3
    11:reg [WIDTH-1:0] reg_file [0:DEPTH-1];
    13:always@(posedge CLK or negedge RST )begin
    15:  if(!RST)begin
    20:        reg_file[i]<='b100000_01;
    23:        reg_file[i]<='b0010_0000;
    26:        reg_file[i]<={WIDTH{1'b0}};
    34:  reg_file[Address]<=WrData;
    38:  RdData<=reg_file[Address];
    49:assign REG0=reg_file[0];
    50:assign REG1=reg_file[1];
    51:assign REG2=reg_file[2];
    52:assign REG3=reg_file[3];
    import uart_pkg::*;
    
    
    module TX_FSM (
    
      input clk, rst,
      input Data_Valid,
      input PAR_EN,ser_done,
    
      output reg ser_en,
    output mux_sel_e mux_sel,
      output reg busy
    );
    //////////////////////////////////////////////
    typedef enum logic [2:0]{
      IDLE=3'b000,
      START_STATE=3'b001,
      DATA_STATE=3'b011,
      PARITY_STATE=3'b010,
      STOP_STATE=3'b110
    
    }state_e;
    
    state_e current_state,next_state;
    /////////////////////////////////////////////////
    
    
    
    
    //////////////////////////////////////////////////////////////////////////////
    always@(posedge clk or negedge rst)begin
    
      if(!rst)begin
        current_state<=IDLE;
      end
    else
      current_state<=next_state;
    
    end
    //////////////////////////////////////////////////////////////////////////////////
    
    always@(*)begin
      next_state=current_state;
      case(current_state)
    
        IDLE:next_state=Data_Valid?START_STATE:IDLE;
    
        START_STATE:next_state=DATA_STATE;
    
        DATA_STATE:begin
          if(ser_done)begin
            if(PAR_EN)
              next_state=PARITY_STATE;
            else
              next_state=STOP_STATE;
          end
        else
          next_state=DATA_STATE;
        end
    
        PARITY_STATE:next_state=STOP_STATE;
    
        STOP_STATE:next_state=IDLE;
    
        default:next_state = IDLE;
      endcase
    
    
    end
    //////////////////////////////////////////////////////////////////////////////
    
    always@(*)begin
      ser_en='b0;
      mux_sel=MUX_IDLE;
      busy='b0;
    
      case(current_state)
        IDLE:begin
          busy='b0;
          mux_sel=MUX_IDLE;//so at mux_sel=0 tx_out =1
        end
    
        START_STATE:begin
          mux_sel=MUX_START;//start bit
          busy='b1;
          ser_en = 1;
        end
    
        DATA_STATE:begin
          busy='b1;
          ser_en='b0;
          mux_sel=MUX_DATA; // data transmission
    
        end
    
        PARITY_STATE:begin
          busy='b1;
          mux_sel=MUX_PARITY; //parity_bit
    
        end
    ✓ • 0ms

## Activity

    $ sed -n '1,210p' Sim/tb.sv
    `timescale 1ns/1ps
    module tb;
        localparam int WIDTH=8, ALU_OUT_WIDTH=16, RF_DEPTH=16, RF_ADDR_WIDTH=4;
        localparam int FUN_WIDTH=4, FIFO_DEPTH=8, FIFO_ADDR_WIDTH=3, PTR_SIZE=4;
        localparam time REF_HALF_PERIOD=5ns, UART_HALF_PERIOD=135.6335ns;
    
        integer rx_prescale=32;
        integer error_count=0;
        logic REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, parity_err, stp_err;
        // Keep DFT logic inactive during the normal functional regression.
        // Leaving test_mode unconnected drives it to Z, which corrupts the
        // clock/reset muxes in SYS_TOP_dft.
        logic scan_clk, scan_rst, test_mode, SE;
        logic [2:0] SI, SO;
    
        sys_top #(.WIDTH(WIDTH), .ALU_OUT_WIDTH(ALU_OUT_WIDTH), .RF_DEPTH(RF_DEPTH),
                  .RF_ADDR_WIDTH(RF_ADDR_WIDTH), .FUN_WIDTH(FUN_WIDTH),
                  .FIFO_DEPTH(FIFO_DEPTH), .FIFO_ADDR_WIDTH(FIFO_ADDR_WIDTH),
                  .PTR_SIZE(PTR_SIZE)) DUT (
            .REF_CLK(REF_CLK), .UART_CLK(UART_CLK), .RST(RST),
            .RX_IN(RX_IN), .TX_OUT(TX_OUT),
            .parity_err(parity_err), .stp_err(stp_err),
            .scan_clk(scan_clk), .scan_rst(scan_rst),
            .test_mode(test_mode), .SE(SE), .SI(SI), .SO(SO)
        );
    
        always #REF_HALF_PERIOD REF_CLK=~REF_CLK;
        always #UART_HALF_PERIOD UART_CLK=~UART_CLK;
    
        task automatic check_equal8(input string name, input logic [7:0] actual,
                                    input logic [7:0] expected);
            begin
                if (actual !== expected) begin
                    error_count=error_count+1;
                    $error("%s: expected 0x%02h, got 0x%02h", name, expected, actual);
                end else $display("PASS: %s = 0x%02h", name, actual);
            end
        endtask
    
        task automatic initialize;
            begin
                REF_CLK=0; UART_CLK=0; RX_IN=1; RST=0;
                scan_clk=0; scan_rst=0; test_mode=0; SE=0; SI='0;
                repeat (2) @(negedge UART_CLK);
                RST=1;
                // Wait for ref_rst, uart_rst, tx_rst, and rx_rst to release.
                repeat (10) @(negedge DUT.rx_clk);
            end
        endtask
    
        // The configuration used in this test has even parity enabled.
        task automatic send_frame(input logic [7:0] data);
            integer i;
            logic parity_bit;
            begin
                parity_bit=^data;
                RX_IN=0; repeat (rx_prescale) @(negedge DUT.rx_clk); // start
                for (i=0; i<WIDTH; i=i+1) begin
                    RX_IN=data[i];
                    repeat (rx_prescale) @(negedge DUT.rx_clk);
                end
                RX_IN=parity_bit; repeat (rx_prescale) @(negedge DUT.rx_clk);
                RX_IN=1;          repeat (rx_prescale) @(negedge DUT.rx_clk); // stop
            end
        endtask
    
        task automatic send_write(input logic [3:0] address, input logic [7:0] data);
            begin
                send_frame(8'hAA); send_frame({4'h0,address}); send_frame(data);
                repeat (8) @(posedge REF_CLK);
            end
        endtask
    
        task automatic send_read(input logic [3:0] address);
            begin send_frame(8'hBB); send_frame({4'h0,address}); end
        endtask
    
        task automatic send_alu_new(input logic [7:0] a, input logic [7:0] b,
                                    input logic [3:0] func);
            begin
                send_frame(8'hCC); send_frame(a); send_frame(b); send_frame({4'h0,func});
            end
        endtask
    
        task automatic send_alu_stored(input logic [3:0] func);
            begin send_frame(8'hDD); send_frame({4'h0,func}); end
        endtask
    
        // Decodes one entire UART TX frame.  TX data changes on tx_clk rising
        // edges, so sample at falling edges (the middle of each bit period).
        task automatic expect_tx_byte(input logic [7:0] expected);
            integer i;
            logic [7:0] received;
            logic received_parity;
            begin
                @(negedge TX_OUT);           // UART start-bit transition
                @(negedge DUT.tx_clk);       // middle/end of the start bit
                @(negedge DUT.tx_clk); #1ps; // first data bit
                for (i=0; i<WIDTH; i=i+1) begin
                    received[i]=TX_OUT;
                    if (i<WIDTH-1) begin @(negedge DUT.tx_clk); #1ps; end
                end
                @(negedge DUT.tx_clk); #1ps; received_parity=TX_OUT;
                @(negedge DUT.tx_clk); #1ps;
                if (TX_OUT !== 1'b1) begin
                    error_count=error_count+1;
                    $error("TX stop bit error: got %b", TX_OUT);
                end
                check_equal8("UART TX byte", received, expected);
                if (received_parity !== (^expected)) begin
                    error_count=error_count+1;
                    $error("TX parity error for 0x%02h", expected);
                end
            end
        endtask
    
        initial begin
            initialize;
    
            // Initial UART configuration.  The first write uses reset prescale 32.
            send_write(4'h2,8'h41); // prescale 16, even parity enabled
            wait (DUT.Regfile_u.REG2 === 8'h41);
            rx_prescale=16;
            repeat (2) @(negedge DUT.rx_clk);
            send_write(4'h3,8'h20);
            wait (DUT.Regfile_u.REG3 === 8'h20);
            repeat (4) @(posedge REF_CLK);
            check_equal8("reg2 configuration",DUT.Regfile_u.REG2,8'h41);
            check_equal8("reg3 configuration",DUT.Regfile_u.REG3,8'h20);
            if (DUT.sys_ctrl_u.cfg_locked !== 1'b1) begin
                error_count=error_count+1;
                $error("Configuration did not lock");
            end
    
            send_write(4'h5,8'h07);
            send_write(4'h9,8'h03);
            check_equal8("reg5 normal write",DUT.Regfile_u.reg_file[5],8'h07);
            check_equal8("reg9 normal write",DUT.Regfile_u.reg_file[9],8'h03);
    
            fork
                expect_tx_byte(8'h07);
                send_read(4'h5);
            join
            fork
                expect_tx_byte(8'h41);
                send_read(4'h2);
            join
    
            // 3 + 4 = 0x0007, transmitted LSB then MSB.
            fork
                begin expect_tx_byte(8'h07); expect_tx_byte(8'h00); end
                send_alu_new(8'd3,8'd4,4'h0);
            join
            check_equal8("ALU operand A",DUT.Regfile_u.REG0,8'h03);
            check_equal8("ALU operand B",DUT.Regfile_u.REG1,8'h04);
    
            // Stored operands: 3 * 4 = 0x000C.
            fork
                begin expect_tx_byte(8'h0C); expect_tx_byte(8'h00); end
                send_alu_stored(4'h2);
            join
    
            // New operands: 100 / 2 = 50 = 0x0032.
            fork
                begin expect_tx_byte(8'h32); expect_tx_byte(8'h00); end
                send_alu_new(8'd100,8'd2,4'h3);
            join
    
            // Generic writes must not change reserved locations after locking.
            send_write(4'h0,8'h99); send_write(4'h1,8'h99);
            send_write(4'h2,8'h99); send_write(4'h3,8'h99);
            check_equal8("protected reg0",DUT.Regfile_u.REG0,8'h64);
            check_equal8("protected reg1",DUT.Regfile_u.REG1,8'h02);
            check_equal8("protected reg2",DUT.Regfile_u.REG2,8'h41);
            check_equal8("protected reg3",DUT.Regfile_u.REG3,8'h20);
    
            for (int address=4; address<RF_DEPTH; address++) begin
                send_write(address[3:0],8'h09);
                check_equal8("normal register write",DUT.Regfile_u.reg_file[address],8'h09);
            end
    
            if (error_count==0) $display("\n******** ALL TESTS PASSED ********\n");
            else $display("\n******** TEST FAILED: %0d error(s) ********\n",error_count);
            $stop;
        end
    
        // A failed protocol must report an error instead of making `run -all`
        // run forever while a wait statement is blocked.
        initial begin
            #20ms;
            $fatal(1, "Testbench timeout: functional test did not complete");
        end
    endmodule
    ✓ • 0ms

## Activity

    file changes: Completed · 1 changes
    Update { move_path: None }: /home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Sim/tb.sv
    @@ -6,5 +6,7 @@
     
    -    integer rx_prescale=32;
    +    // Reset initializes REG2 to 8'h41 and REG3 to 8'h20.  Consequently RX
    +    // and TX bits each span 32 UART_CLK cycles in functional mode.
    +    localparam int RX_BIT_UART_CYCLES=32, TX_BIT_UART_CYCLES=32;
         integer error_count=0;
    -    logic REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, parity_err, stp_err;
    +    logic REF_CLK, UART_CLK, RST_N, RX_IN, TX_OUT, parity_err, stp_err;
         // Keep DFT logic inactive during the normal functional regression.
    @@ -13,11 +15,9 @@
         logic scan_clk, scan_rst, test_mode, SE;
    -    logic [2:0] SI, SO;
    +    logic [3:0] SI, SO;
     
    -    sys_top #(.WIDTH(WIDTH), .ALU_OUT_WIDTH(ALU_OUT_WIDTH), .RF_DEPTH(RF_DEPTH),
    -              .RF_ADDR_WIDTH(RF_ADDR_WIDTH), .FUN_WIDTH(FUN_WIDTH),
    -              .FIFO_DEPTH(FIFO_DEPTH), .FIFO_ADDR_WIDTH(FIFO_ADDR_WIDTH),
    -              .PTR_SIZE(PTR_SIZE)) DUT (
    -        .REF_CLK(REF_CLK), .UART_CLK(UART_CLK), .RST(RST),
    -        .RX_IN(RX_IN), .TX_OUT(TX_OUT),
    -        .parity_err(parity_err), .stp_err(stp_err),
    +    // P&R netlist: fixed parameters and flattened implementation hierarchy.
    +    sys_top DUT (
    +        .REF_CLK(REF_CLK), .UART_CLK(UART_CLK), .RST_N(RST_N),
    +        .UART_RX_IN(RX_IN), .UART_TX_O(TX_OUT),
    +        .parity_error(parity_err), .framing_error(stp_err),
             .scan_clk(scan_clk), .scan_rst(scan_rst),

## Activity

    file changes: Completed · 1 changes
    Update { move_path: None }: /home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Sim/tb.sv
    @@ -41,8 +41,8 @@
             begin
    -            REF_CLK=0; UART_CLK=0; RX_IN=1; RST=0;
    +            REF_CLK=0; UART_CLK=0; RX_IN=1; RST_N=0;
                 scan_clk=0; scan_rst=0; test_mode=0; SE=0; SI='0;
    -            repeat (2) @(negedge UART_CLK);
    -            RST=1;
    -            // Wait for ref_rst, uart_rst, tx_rst, and rx_rst to release.
    -            repeat (10) @(negedge DUT.rx_clk);
    +            repeat (4) @(negedge UART_CLK);
    +            RST_N=1;
    +            // Wait for reset synchronization and divided clocks to settle.
    +            repeat (100) @(negedge UART_CLK);
             end
    @@ -56,9 +56,9 @@
                 parity_bit=^data;
    -            RX_IN=0; repeat (rx_prescale) @(negedge DUT.rx_clk); // start
    +            RX_IN=0; repeat (RX_BIT_UART_CYCLES) @(negedge UART_CLK); // start
                 for (i=0; i<WIDTH; i=i+1) begin
                     RX_IN=data[i];
    -                repeat (rx_prescale) @(negedge DUT.rx_clk);
    +                repeat (RX_BIT_UART_CYCLES) @(negedge UART_CLK);
                 end
    -            RX_IN=parity_bit; repeat (rx_prescale) @(negedge DUT.rx_clk);
    -            RX_IN=1;          repeat (rx_prescale) @(negedge DUT.rx_clk); // stop
    +            RX_IN=parity_bit; repeat (RX_BIT_UART_CYCLES) @(negedge UART_CLK);
    +            RX_IN=1;          repeat (RX_BIT_UART_CYCLES) @(negedge UART_CLK); // stop
             end

## Activity

    file changes: Completed · 1 changes
    Update { move_path: None }: /home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Sim/tb.sv
    @@ -88,4 +88,4 @@
     
    -    // Decodes one entire UART TX frame.  TX data changes on tx_clk rising
    -    // edges, so sample at falling edges (the middle of each bit period).
    +    // Decode TX solely through top-level signals.  Internal tx_clk does not
    +    // survive hierarchy flattening in the gate-level netlist.
         task automatic expect_tx_byte(input logic [7:0] expected);
    @@ -96,10 +96,15 @@
                 @(negedge TX_OUT);           // UART start-bit transition
    -            @(negedge DUT.tx_clk);       // middle/end of the start bit
    -            @(negedge DUT.tx_clk); #1ps; // first data bit
    +            repeat (TX_BIT_UART_CYCLES + TX_BIT_UART_CYCLES/2)
    +                @(negedge UART_CLK);
    +            #1ns; // first data-bit sampling point
                 for (i=0; i<WIDTH; i=i+1) begin
                     received[i]=TX_OUT;
    -                if (i<WIDTH-1) begin @(negedge DUT.tx_clk); #1ps; end
    +                if (i<WIDTH-1) begin
    +                    repeat (TX_BIT_UART_CYCLES) @(negedge UART_CLK);
    +                    #1ns;
    +                end
                 end
    -            @(negedge DUT.tx_clk); #1ps; received_parity=TX_OUT;
    -            @(negedge DUT.tx_clk); #1ps;
    +            repeat (TX_BIT_UART_CYCLES) @(negedge UART_CLK); #1ns;
    +            received_parity=TX_OUT;
    +            repeat (TX_BIT_UART_CYCLES) @(negedge UART_CLK); #1ns;
                 if (TX_OUT !== 1'b1) begin

## Activity

    file changes: Completed · 1 changes
    Update { move_path: None }: /home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Sim/tb.sv
    @@ -124,16 +124,8 @@
     
    -        // Initial UART configuration.  The first write uses reset prescale 32.
    +        // Initial UART configuration.  Do not inspect register hierarchy:
    +        // it is flattened in the gate-level netlist.
             send_write(4'h2,8'h41); // prescale 16, even parity enabled
    -        wait (DUT.Regfile_u.REG2 === 8'h41);
    -        rx_prescale=16;
    -        repeat (2) @(negedge DUT.rx_clk);
    +        repeat (8) @(posedge REF_CLK);
             send_write(4'h3,8'h20);
    -        wait (DUT.Regfile_u.REG3 === 8'h20);
    -        repeat (4) @(posedge REF_CLK);
    -        check_equal8("reg2 configuration",DUT.Regfile_u.REG2,8'h41);
    -        check_equal8("reg3 configuration",DUT.Regfile_u.REG3,8'h20);
    -        if (DUT.sys_ctrl_u.cfg_locked !== 1'b1) begin
    -            error_count=error_count+1;
    -            $error("Configuration did not lock");
    -        end
    +        repeat (16) @(posedge REF_CLK);
     
    @@ -141,4 +133,2 @@
             send_write(4'h9,8'h03);
    -        check_equal8("reg5 normal write",DUT.Regfile_u.reg_file[5],8'h07);
    -        check_equal8("reg9 normal write",DUT.Regfile_u.reg_file[9],8'h03);
     
    @@ -158,4 +148,2 @@
             join
    -        check_equal8("ALU operand A",DUT.Regfile_u.REG0,8'h03);
    -        check_equal8("ALU operand B",DUT.Regfile_u.REG1,8'h04);
     
    @@ -173,9 +161,6 @@
     
    -        // Generic writes must not change reserved locations after locking.
    +        // Exercise protected and normal-address writes through the external
    +        // UART interface; internal registers no longer have stable names.
             send_write(4'h0,8'h99); send_write(4'h1,8'h99);
             send_write(4'h2,8'h99); send_write(4'h3,8'h99);
    -        check_equal8("protected reg0",DUT.Regfile_u.REG0,8'h64);
    -        check_equal8("protected reg1",DUT.Regfile_u.REG1,8'h02);
    -        check_equal8("protected reg2",DUT.Regfile_u.REG2,8'h41);
    -        check_equal8("protected reg3",DUT.Regfile_u.REG3,8'h20);
     
    @@ -183,3 +168,2 @@
                 send_write(address[3:0],8'h09);
    -            check_equal8("normal register write",DUT.Regfile_u.reg_file[address],8'h09);
             end

## Assistant

The TB has now been converted away from every `DUT.<RTL-instance>` reference. I’m adding external UART readback checks so the removed white-box register checks remain functionally covered.

## Activity

    file changes: Completed · 1 changes
    Update { move_path: None }: /home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Sim/tb.sv
    @@ -166,4 +166,25 @@
     
    +        fork
    +            expect_tx_byte(8'h64);
    +            send_read(4'h0);
    +        join
    +        fork
    +            expect_tx_byte(8'h02);
    +            send_read(4'h1);
    +        join
    +        fork
    +            expect_tx_byte(8'h41);
    +            send_read(4'h2);
    +        join
    +        fork
    +            expect_tx_byte(8'h20);
    +            send_read(4'h3);
    +        join
    +
             for (int address=4; address<RF_DEPTH; address++) begin
                 send_write(address[3:0],8'h09);
    +            fork
    +                expect_tx_byte(8'h09);
    +                send_read(address[3:0]);
    +            join
             end

## Activity

    $ printf '%s\n' '--- remaining internal hierarchy references ---'; rg -n 'DUT\.|Regfile_u|sys_ctrl_u|rx_clk|tx_clk' Sim/tb.sv || true; printf '%s\n' '--- netlist-interface references ---'; rg -n '\.(RST|RX_IN|TX_OUT|parity_err|stp_err)\(' Sim/tb.sv || true; printf '%s\n' '--- edited TB ---'; sed -n '1,245p' Sim/tb.sv; printf '%s\n' '--- available simulators ---'; command -v vlog || true; command -v verilator || true; command -v iverilog || true
    --- remaining internal hierarchy references ---
    89:    // Decode TX solely through top-level signals.  Internal tx_clk does not
    --- netlist-interface references ---
    --- edited TB ---
    `timescale 1ns/1ps
    module tb;
        localparam int WIDTH=8, ALU_OUT_WIDTH=16, RF_DEPTH=16, RF_ADDR_WIDTH=4;
        localparam int FUN_WIDTH=4, FIFO_DEPTH=8, FIFO_ADDR_WIDTH=3, PTR_SIZE=4;
        localparam time REF_HALF_PERIOD=5ns, UART_HALF_PERIOD=135.6335ns;
    
        // Reset initializes REG2 to 8'h41 and REG3 to 8'h20.  Consequently RX
        // and TX bits each span 32 UART_CLK cycles in functional mode.
        localparam int RX_BIT_UART_CYCLES=32, TX_BIT_UART_CYCLES=32;
        integer error_count=0;
        logic REF_CLK, UART_CLK, RST_N, RX_IN, TX_OUT, parity_err, stp_err;
        // Keep DFT logic inactive during the normal functional regression.
        // Leaving test_mode unconnected drives it to Z, which corrupts the
        // clock/reset muxes in SYS_TOP_dft.
        logic scan_clk, scan_rst, test_mode, SE;
        logic [3:0] SI, SO;
    
        // P&R netlist: fixed parameters and flattened implementation hierarchy.
        sys_top DUT (
            .REF_CLK(REF_CLK), .UART_CLK(UART_CLK), .RST_N(RST_N),
            .UART_RX_IN(RX_IN), .UART_TX_O(TX_OUT),
            .parity_error(parity_err), .framing_error(stp_err),
            .scan_clk(scan_clk), .scan_rst(scan_rst),
            .test_mode(test_mode), .SE(SE), .SI(SI), .SO(SO)
        );
    
        always #REF_HALF_PERIOD REF_CLK=~REF_CLK;
        always #UART_HALF_PERIOD UART_CLK=~UART_CLK;
    
        task automatic check_equal8(input string name, input logic [7:0] actual,
                                    input logic [7:0] expected);
            begin
                if (actual !== expected) begin
                    error_count=error_count+1;
                    $error("%s: expected 0x%02h, got 0x%02h", name, expected, actual);
                end else $display("PASS: %s = 0x%02h", name, actual);
            end
        endtask
    
        task automatic initialize;
            begin
                REF_CLK=0; UART_CLK=0; RX_IN=1; RST_N=0;
                scan_clk=0; scan_rst=0; test_mode=0; SE=0; SI='0;
                repeat (4) @(negedge UART_CLK);
                RST_N=1;
                // Wait for reset synchronization and divided clocks to settle.
                repeat (100) @(negedge UART_CLK);
            end
        endtask
    
        // The configuration used in this test has even parity enabled.
        task automatic send_frame(input logic [7:0] data);
            integer i;
            logic parity_bit;
            begin
                parity_bit=^data;
                RX_IN=0; repeat (RX_BIT_UART_CYCLES) @(negedge UART_CLK); // start
                for (i=0; i<WIDTH; i=i+1) begin
                    RX_IN=data[i];
                    repeat (RX_BIT_UART_CYCLES) @(negedge UART_CLK);
                end
                RX_IN=parity_bit; repeat (RX_BIT_UART_CYCLES) @(negedge UART_CLK);
                RX_IN=1;          repeat (RX_BIT_UART_CYCLES) @(negedge UART_CLK); // stop
            end
        endtask
    
        task automatic send_write(input logic [3:0] address, input logic [7:0] data);
            begin
                send_frame(8'hAA); send_frame({4'h0,address}); send_frame(data);
                repeat (8) @(posedge REF_CLK);
            end
        endtask
    
        task automatic send_read(input logic [3:0] address);
            begin send_frame(8'hBB); send_frame({4'h0,address}); end
        endtask
    
        task automatic send_alu_new(input logic [7:0] a, input logic [7:0] b,
                                    input logic [3:0] func);
            begin
                send_frame(8'hCC); send_frame(a); send_frame(b); send_frame({4'h0,func});
            end
        endtask
    
        task automatic send_alu_stored(input logic [3:0] func);
            begin send_frame(8'hDD); send_frame({4'h0,func}); end
        endtask
    
        // Decode TX solely through top-level signals.  Internal tx_clk does not
        // survive hierarchy flattening in the gate-level netlist.
        task automatic expect_tx_byte(input logic [7:0] expected);
            integer i;
            logic [7:0] received;
            logic received_parity;
            begin
                @(negedge TX_OUT);           // UART start-bit transition
                repeat (TX_BIT_UART_CYCLES + TX_BIT_UART_CYCLES/2)
                    @(negedge UART_CLK);
                #1ns; // first data-bit sampling point
                for (i=0; i<WIDTH; i=i+1) begin
                    received[i]=TX_OUT;
                    if (i<WIDTH-1) begin
                        repeat (TX_BIT_UART_CYCLES) @(negedge UART_CLK);
                        #1ns;
                    end
                end
                repeat (TX_BIT_UART_CYCLES) @(negedge UART_CLK); #1ns;
                received_parity=TX_OUT;
                repeat (TX_BIT_UART_CYCLES) @(negedge UART_CLK); #1ns;
                if (TX_OUT !== 1'b1) begin
                    error_count=error_count+1;
                    $error("TX stop bit error: got %b", TX_OUT);
                end
                check_equal8("UART TX byte", received, expected);
                if (received_parity !== (^expected)) begin
                    error_count=error_count+1;
                    $error("TX parity error for 0x%02h", expected);
                end
            end
        endtask
    
        initial begin
            initialize;
    
            // Initial UART configuration.  Do not inspect register hierarchy:
            // it is flattened in the gate-level netlist.
            send_write(4'h2,8'h41); // prescale 16, even parity enabled
            repeat (8) @(posedge REF_CLK);
            send_write(4'h3,8'h20);
            repeat (16) @(posedge REF_CLK);
    
            send_write(4'h5,8'h07);
            send_write(4'h9,8'h03);
    
            fork
                expect_tx_byte(8'h07);
                send_read(4'h5);
            join
            fork
                expect_tx_byte(8'h41);
                send_read(4'h2);
            join
    
            // 3 + 4 = 0x0007, transmitted LSB then MSB.
            fork
                begin expect_tx_byte(8'h07); expect_tx_byte(8'h00); end
                send_alu_new(8'd3,8'd4,4'h0);
            join
    
            // Stored operands: 3 * 4 = 0x000C.
            fork
                begin expect_tx_byte(8'h0C); expect_tx_byte(8'h00); end
                send_alu_stored(4'h2);
            join
    
            // New operands: 100 / 2 = 50 = 0x0032.
            fork
                begin expect_tx_byte(8'h32); expect_tx_byte(8'h00); end
                send_alu_new(8'd100,8'd2,4'h3);
            join
    
            // Exercise protected and normal-address writes through the external
            // UART interface; internal registers no longer have stable names.
            send_write(4'h0,8'h99); send_write(4'h1,8'h99);
            send_write(4'h2,8'h99); send_write(4'h3,8'h99);
    
            fork
                expect_tx_byte(8'h64);
                send_read(4'h0);
            join
            fork
                expect_tx_byte(8'h02);
                send_read(4'h1);
            join
            fork
                expect_tx_byte(8'h41);
                send_read(4'h2);
            join
            fork
                expect_tx_byte(8'h20);
                send_read(4'h3);
            join
    
            for (int address=4; address<RF_DEPTH; address++) begin
                send_write(address[3:0],8'h09);
                fork
                    expect_tx_byte(8'h09);
                    send_read(address[3:0]);
                join
            end
    
            if (error_count==0) $display("\n******** ALL TESTS PASSED ********\n");
            else $display("\n******** TEST FAILED: %0d error(s) ********\n",error_count);
            $stop;
        end
    
        // A failed protocol must report an error instead of making `run -all`
        // run forever while a wait statement is blocked.
        initial begin
            #20ms;
            $fatal(1, "Testbench timeout: functional test did not complete");
        end
    endmodule
    --- available simulators ---
    /usr/bin/verilator
    /usr/bin/iverilog
    ✓ • 0ms

## Activity

    $ iverilog -g2012 -i -s tb -o /tmp/gls_tb_syntax System_pnr/pnr/export/sys_top.v Sim/tb.sv
    ✓ • 0ms

## Assistant

Updated [Sim/tb.sv](/home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Sim/tb.sv) for gate-level simulation.

It now:

- Instantiates the fixed P&R `sys_top` interface with the correct port names and 4-bit scan ports.
- Uses `RST_N` correctly.
- Removes all invalid parameter overrides.
- Removes all references to flattened RTL hierarchy (`Regfile_u`, `sys_ctrl_u`, `rx_clk`, `tx_clk`).
- Drives and samples UART using only top-level clocks/signals.
- Replaces internal register checks with UART readback checks.
- Compiles syntactically against `sys_top.v` successfully with an HDL parser.

The only remaining expected setup requirements are in the VM script: compile the functional cell-model file (not `sys_top_pg.v`) and use the SDF target `/tb/DUT`.

## User

ok now i get cannot find instance /dut specififed in sdf , error command line sdf instance pathname /tb/dut cannot be resolved

## Assistant

Use the exact, case-sensitive testbench instance name:

```tcl
vsim -sdfmax /tb/DUT=/home/ICer/UART_System/System_pnr/pnr/export/sys_top.sdf \
     -sdfnoerror work.tb
```

Your TB declares:

```sv
sys_top DUT (...);
```

So the instance is `DUT`, uppercase—not `dut`.

Also make sure you saved the updated `gls_run.do` in the VM before rerunning.

## User

is this tb self checkin ?

## Assistant

Yes. The TB is self-checking.

It automatically:

- Decodes transmitted UART frames.
- Checks each received byte against the expected value with `check_equal8`.
- Checks parity and stop-bit correctness.
- Counts failures in `error_count`.
- Prints `ALL TESTS PASSED` if no mismatches occurred, otherwise prints the failure count.
- Stops after completion.
- Fails with `$fatal` if it hangs longer than 20 ms.

It no longer checks internal register paths directly, because those RTL hierarchy names do not exist after P&R. Instead, it checks register behavior through UART readback, which is appropriate for GLS.

## User

by self checking i mean will it give me which pass and fail

## Assistant

Yes.

For every checked UART byte, it prints either:

```text
PASS: UART TX byte = 0x07
```

or an error such as:

```text
** Error: UART TX byte: expected 0x07, got 0x05
```

It also reports specific parity or stop-bit errors, for example:

```text
** Error: TX parity error for 0x07
** Error: TX stop bit error: got 0
```

At the end it prints either:

```text
******** ALL TESTS PASSED ********
```

or:

```text
******** TEST FAILED: N error(s) ********
```

## User

i am getting lots of errors like no objects found matching /tb/UART_TX_RX/P_DATA same for other modules also extend the time before it stops automatically

## Assistant

Those messages come from the old RTL waveform script, not the self-checker. I’ll replace it with GLS-safe top-level signals and extend the TB timeout.

## Activity

    file changes: Completed · 2 changes
    Update { move_path: None }: /home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Sim/tb.sv
    @@ -199,3 +199,3 @@
         initial begin
    -        #20ms;
    +        #100ms;
             $fatal(1, "Testbench timeout: functional test did not complete");
    Update { move_path: None }: /home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Sim/wave.do
    @@ -2,55 +2,22 @@
     quietly WaveActivateNextPane {} 0
    -add wave -noupdate -expand -group TX -color Salmon /tb/DUT/UART_TX_RX/U0_UART_TX/P_DATA
    -add wave -noupdate -expand -group TX /tb/DUT/UART_TX_RX/U0_UART_TX/Data_Valid
    -add wave -noupdate -expand -group TX /tb/DUT/UART_TX_RX/U0_UART_TX/clk
    -add wave -noupdate -expand -group TX /tb/DUT/UART_TX_RX/U0_UART_TX/TX_OUT
    -add wave -noupdate -expand -group TX /tb/DUT/UART_TX_RX/U0_UART_TX/mux_sel
    -add wave -noupdate -expand -group TX /tb/DUT/UART_TX_RX/U0_UART_TX/par_bit
    -add wave -noupdate -expand -group states -color Cyan /tb/DUT/sys_ctrl_u/current_state
    -add wave -noupdate -expand -group states -color Cyan /tb/DUT/sys_ctrl_u/next_state
    -add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/WrData
    -add wave -noupdate -expand -group Regfile -format Analog-Step -height 30 -max 88.0 /tb/DUT/Regfile_u/Address
    -add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/WrEn
    -add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/RdEn
    -add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/CLK
    -add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/RdData
    -add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/RdData_VLD
    -add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/REG0
    -add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/REG1
    -add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/REG2
    -add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/REG3
    -add wave -noupdate -expand -group Regfile /tb/DUT/Regfile_u/i
    -add wave -noupdate -expand -group SYS_CTRL /tb/DUT/sys_ctrl_u/OUT_VALID
    -add wave -noupdate -expand -group SYS_CTRL /tb/DUT/sys_ctrl_u/ALU_OUT
    -add wave -noupdate -expand -group SYS_CTRL /tb/DUT/sys_ctrl_u/RX_P_DATA
    -add wave -noupdate -expand -group SYS_CTRL /tb/DUT/sys_ctrl_u/RX_D_VLD
    -add wave -noupdate -expand -group SYS_CTRL /tb/DUT/sys_ctrl_u/fifo_full
    -add wave -noupdate -expand -group SYS_CTRL /tb/DUT/sys_ctrl_u/ALU_FUN
    -add wave -noupdate -expand -group SYS_CTRL -color Yellow /tb/DUT/sys_ctrl_u/TX_P_DATA
    -add wave -noupdate -expand -group SYS_CTRL -color Yellow /tb/DUT/sys_ctrl_u/TX_D_VLD
    -add wave -noupdate -expand -group FIFO /tb/DUT/FIFO_u/w_ptr_synch
    -add wave -noupdate -expand -group FIFO /tb/DUT/FIFO_u/w_clken
    -add wave -noupdate -expand -group FIFO /tb/DUT/FIFO_u/full_w
    -add wave -noupdate -expand -group FIFO /tb/DUT/FIFO_u/empty_w
    -add wave -noupdate -expand -group RX /tb/DUT/UART_TX_RX/U0_UART_RX/Prescale
    -add wave -noupdate -expand -group RX /tb/DUT/UART_TX_RX/U0_UART_RX/clk
    -add wave -noupdate -expand -group RX /tb/DUT/UART_TX_RX/U0_UART_RX/P_DATA
    -add wave -noupdate -expand -group RX /tb/DUT/UART_TX_RX/U0_UART_RX/Data_Valid
    -TreeUpdate [SetDefaultTree]
    -WaveRestoreCursors {{Cursor 1} {1458146390 ps} 0}
    -quietly wave cursor active 1
    -configure wave -namecolwidth 150
    +
    +# GLS-safe waves: only stable top-level TB/DUT ports.  P&R flattening removes
    +# the RTL instance paths used by the former waveform setup.
    +add wave -noupdate -group Testbench /tb/REF_CLK
    +add wave -noupdate -group Testbench /tb/UART_CLK
    +add wave -noupdate -group Testbench /tb/RST_N
    +add wave -noupdate -group UART -color Yellow /tb/RX_IN
    +add wave -noupdate -group UART -color Salmon /tb/TX_OUT
    +add wave -noupdate -group Status /tb/parity_err
    +add wave -noupdate -group Status /tb/stp_err
    +add wave -noupdate -group DFT /tb/test_mode
    +add wave -noupdate -group DFT /tb/scan_clk
    +add wave -noupdate -group DFT /tb/scan_rst
    +add wave -noupdate -group DFT /tb/SE
    +add wave -noupdate -group DFT /tb/SI
    +add wave -noupdate -group DFT /tb/SO
    +add wave -noupdate -group Checker /tb/error_count
    +update
    +configure wave -namecolwidth 180
     configure wave -valuecolwidth 100
    -configure wave -justifyvalue left
    -configure wave -signalnamewidth 1
    -configure wave -snapdistance 10
    -configure wave -datasetprefix 0
    -configure wave -rowmargin 4
    -configure wave -childrowmargin 2
    -configure wave -gridoffset 0
    -configure wave -gridperiod 1
    -configure wave -griddelta 40
    -configure wave -timeline 0
    -configure wave -timelineunits ps
    -update
    -WaveRestoreZoom {1394449312 ps} {1781634167 ps}
    +configure wave -timelineunits ns

## Activity

    $ rg -n 'DUT/|UART_TX_RX|Regfile_u|sys_ctrl_u|#(20|100)ms' Sim/tb.sv Sim/wave.do; iverilog -g2012 -i -s tb -o /tmp/gls_tb_syntax System_pnr/pnr/export/sys_top.v Sim/tb.sv
    Sim/tb.sv:200:        #100ms;
    ✓ • 0ms

## Assistant

Fixed both issues.

- [wave.do](/home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Sim/wave.do) now displays only GLS-safe top-level signals, so the old missing RTL hierarchy warnings are gone.
- [tb.sv](/home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Sim/tb.sv:200) timeout is now `100ms` instead of `20ms`.

The TB still compiles cleanly against the gate netlist.

## User

still nothing is displayed in the waveforms , i also get no object matching /tb/REF_CLK and others too

## Assistant

This is optimization removing/renaming TB nets before the waveform script runs. I’ll preserve simulation visibility through the `vsim` command, then the top-level waveform paths will resolve.

## Activity

    file changes: Completed · 1 changes
    Update { move_path: None }: /home/zeyad/Digital_Diploma_Temsah/Shared_Folder/UART_System/Sim/gls_run.do
    @@ -13,3 +13,4 @@
     # Start Simulation
    -vsim -sdfmax /tb/dut=/home/ICer/UART_System/System_pnr/pnr/export/sys_top.sdf -sdfnoerror work.tb
    +# Keep TB and DUT signal visibility after vopt; wave.do uses /tb/* paths.
    +vsim -voptargs=+acc -sdfmax /tb/DUT=/home/ICer/UART_System/System_pnr/pnr/export/sys_top.sdf -sdfnoerror work.tb
     

## Assistant

Updated `vsim` to preserve waveform visibility:

```tcl
vsim -voptargs=+acc \
     -sdfmax /tb/DUT=/home/ICer/UART_System/System_pnr/pnr/export/sys_top.sdf \
     -sdfnoerror work.tb
```

The `+acc` is required because optimization otherwise removes/renames signals such as `/tb/REF_CLK` before `wave.do` runs.

Restart the simulation using the updated `gls_run.do`; loading only `wave.do` into an already-optimized simulation will not restore removed signals.
