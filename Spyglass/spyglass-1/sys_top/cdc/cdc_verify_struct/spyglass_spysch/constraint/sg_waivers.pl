################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'4',
                          "totalGeneratedCount"=>'0',
                          "totalReportCount"=>'0'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "Setup_port01" -comment "Created by ICer on 22-Sep-2026 21:49:24  rst port partial constraints"%',
                       "-rule"=>'"Setup_port01"',
                       "-comment"=>'"Created by ICer on 22-Sep-2026 21:49:24  rst port partial constraints"',
                       "violations_waived"=>'41 43',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "Reset_sync04" -comment "Created by ICer on 23-Sep-2026 02:24:44"%',
                       "-rule"=>'"Reset_sync04"',
                       "-comment"=>'"Created by ICer on 23-Sep-2026 02:24:44"',
                       "violations_waived"=>'26',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv02" -comment "Created by ICer on 23-Sep-2026 02:48:30"%',
                       "-rule"=>'"Ac_conv02"',
                       "-comment"=>'"Created by ICer on 23-Sep-2026 02:48:30"',
                       "violations_waived"=>'45',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/cdc/cdc_verify_struct/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyWaiversDataCount("totalWaivers"=>'3',
"totalWaiversApplied"=>'3',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'3',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
