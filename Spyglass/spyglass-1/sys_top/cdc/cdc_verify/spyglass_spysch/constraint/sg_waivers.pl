################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'7',
                          "totalGeneratedCount"=>'0',
                          "totalReportCount"=>'0'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "Reset_sync04" -comment "Created by ICer on 23-Sep-2026 02:54:17"%',
                       "-rule"=>'"Reset_sync04"',
                       "-comment"=>'"Created by ICer on 23-Sep-2026 02:54:17"',
                       "violations_waived"=>'26',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "Ac_cdc01a" -comment "Created by ICer on 23-Sep-2026 03:16:51"%',
                       "-rule"=>'"Ac_cdc01a"',
                       "-comment"=>'"Created by ICer on 23-Sep-2026 03:16:51"',
                       "violations_waived"=>'109',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "Ac_clockperiod03" -comment "Created by ICer on 23-Sep-2026 03:27:36"%',
                       "-rule"=>'"Ac_clockperiod03"',
                       "-comment"=>'"Created by ICer on 23-Sep-2026 03:27:36"',
                       "violations_waived"=>'106',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'4',
                       "waiverCmd"=>'q%waive  -rule "Ac_datahold01a" -comment "Created by ICer on 23-Sep-2026 03:35:11  m4 3aref leh"%',
                       "-rule"=>'"Ac_datahold01a"',
                       "-comment"=>'"Created by ICer on 23-Sep-2026 03:35:11  m4 3aref leh"',
                       "violations_waived"=>'110 111 112 113',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'4'
                      );

spyWaiversDataCount("totalWaivers"=>'4',
"totalWaiversApplied"=>'4',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'4',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
