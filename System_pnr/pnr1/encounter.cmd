#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Mon Oct  5 00:47:56 2026                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /home/ahesham/Projects/System/System_pnr/pnr/sys_top_post_power.enc.dat sys_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
placeDesign -inPlaceOpt -prePlaceOpt
addTieHiLo -cell TIELOM -prefix LTIE
addTieHiLo -cell TIEHIM -prefix HTIE
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
setDrawView place
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
clearClockDomains
setClockDomains -all
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix sys_top_preCTS -outDir timingReports
clockDesign -genSpecOnly Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
refinePlace -preserveRouting
setNanoRouteMode -routeWithEco true
routeDesign -globalDetail -viaOpt -wireOpt
clearDrc
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
zoomBox -5.901 46.607 33.676 8.487
zoomBox -2.184 41.311 7.306 36.749
zoomBox -0.354 40.797 1.171 39.660
selectWire 0.2500 0.2500 1.2500 160.2200 4 VDD
deselectAll
selectWire 0.2500 0.2500 1.2500 160.2200 4 VDD
setLayerPreference allM4 -isVisible 0
deselectAll
selectVia 0.2500 40.4450 1.1400 40.7350 4 VDD
setLayerPreference allM4Cont -isVisible 0
deselectAll
selectVia 0.3100 40.4450 1.1400 40.7350 3 VDD
deselectAll
selectVia 0.2500 40.4600 1.1400 40.7200 2 VDD
deselectAll
selectVia 0.2500 40.4600 1.1400 40.7200 2 VDD
setLayerPreference allM2Cont -isVisible 0
deselectAll
selectVia 0.3100 40.4450 1.1400 40.7350 3 VDD
setLayerPreference allM3Cont -isVisible 0
deselectAll
selectWire 0.2500 40.4600 6.2800 40.7200 1 VDD
deselectAll
setLayerPreference allM3Cont -isVisible 1
selectVia 0.3100 40.4450 1.1400 40.7350 3 VDD
deselectAll
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2Cont -isVisible 0
selectVia 0.3100 40.4450 1.1400 40.7350 3 VDD
deselectAll
selectWire 0.2500 40.4600 6.2800 40.7200 1 VDD
deselectAll
selectPhyPin -0.1000 40.1000 0.1000 40.3000 2 UART_RX_IN
deselectAll
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 0
setLayerPreference allM2 -isVisible 1
setLayerPreference allM2 -isVisible 0
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 0
selectVia 0.2500 40.4600 1.1400 40.7200 2 VDD
uiSetTool move
saveDesign /home/ahesham/Projects/System/System_pnr/pnr/sys_top_post_route.enc
editMove 0.0175 -0.0015
uiSetTool select
deselectAll
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix sys_top_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix sys_top_postRoute -outDir timingReports
optDesign -postRoute -hold
clearDrc
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
zoomBox -12.699 49.520 62.812 -14.094
zoomBox -5.176 30.270 22.913 -2.719
clearDrc
verifyGeometry -noMinArea
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix sys_top_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -slackReports -numPaths 50 -prefix sys_top_postRoute -outDir timingReports
panCenter -30.181 98.323
saveDesign /home/ahesham/Projects/System/System_pnr/pnr/sys_top_pre_finish.enc
addFiller -cell {FILL1M FILL2M FILL4M FILL8M FILL16M FILL32M FILL64M} -prefix FILLER -markFixed
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix sys_top_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix sys_top_postRoute -outDir timingReports
saveNetlist export/sys_top.v
saveNetlist export/sys_top_pg.v -includePowerGround
rcOut -spf export/sys_top.spf
delayCal -sdf export/sys_top.sdf -version 3.0
report_power -outfile report/power.rpt
streamOut export/sys_top.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
saveDesign /home/ahesham/Projects/System/System_pnr/pnr/sys_top_signoff.enc
