################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'10',
                          "totalGeneratedCount"=>'46',
                          "totalReportCount"=>'36'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "Ac_cdc01a" -comment "Created by ICer on 05-Oct-2026 03:51:38"%',
                       "-rule"=>'"Ac_cdc01a"',
                       "-comment"=>'"Created by ICer on 05-Oct-2026 03:51:38"',
                       "violations_waived"=>'116',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "Ac_clockperiod03" -comment "Created by ICer on 05-Oct-2026 03:51:43"%',
                       "-rule"=>'"Ac_clockperiod03"',
                       "-comment"=>'"Created by ICer on 05-Oct-2026 03:51:43"',
                       "violations_waived"=>'113',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "Ac_datahold01a" -comment "Created by ICer on 05-Oct-2026 03:51:49"%',
                       "-rule"=>'"Ac_datahold01a"',
                       "-comment"=>'"Created by ICer on 05-Oct-2026 03:51:49"',
                       "violations_waived"=>'117 118 119 120',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'4',
                       "waiverCmd"=>'q%waive  -rule "Propagate_Clocks" -comment "Created by ICer on 05-Oct-2026 03:51:54"%',
                       "-rule"=>'"Propagate_Clocks"',
                       "-comment"=>'"Created by ICer on 05-Oct-2026 03:51:54"',
                       "violations_waived"=>'5 6 7',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'4'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'5',
                       "waiverCmd"=>'q%waive  -rule "Reset_sync04" -comment "Created by ICer on 05-Oct-2026 03:51:58"%',
                       "-rule"=>'"Reset_sync04"',
                       "-comment"=>'"Created by ICer on 05-Oct-2026 03:51:58"',
                       "violations_waived"=>'27',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/cdc/cdc_verify/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'5'
                      );

spyWaiversDataCount("totalWaivers"=>'5',
"totalWaiversApplied"=>'5',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'5',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
