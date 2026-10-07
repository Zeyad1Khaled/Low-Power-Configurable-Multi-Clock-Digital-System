################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'9',
                          "totalGeneratedCount"=>'45',
                          "totalReportCount"=>'36'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "Ac_cdc01a" -comment "Created by ICer on 07-Oct-2026 22:25:52"%',
                       "-rule"=>'"Ac_cdc01a"',
                       "-comment"=>'"Created by ICer on 07-Oct-2026 22:25:52"',
                       "violations_waived"=>'115',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint_cdc/sys_top/cdc/cdc_verify/lint_cdc_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "Ac_datahold01a" -comment "Created by ICer on 07-Oct-2026 22:27:45"%',
                       "-rule"=>'"Ac_datahold01a"',
                       "-comment"=>'"Created by ICer on 07-Oct-2026 22:27:45"',
                       "violations_waived"=>'116 117 118 119',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint_cdc/sys_top/cdc/cdc_verify/lint_cdc_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "Propagate_Clocks" -comment "Created by ICer on 07-Oct-2026 22:27:52"%',
                       "-rule"=>'"Propagate_Clocks"',
                       "-comment"=>'"Created by ICer on 07-Oct-2026 22:27:52"',
                       "violations_waived"=>'5 6 7',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint_cdc/sys_top/cdc/cdc_verify/lint_cdc_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'4',
                       "waiverCmd"=>'q%waive  -rule "Reset_sync04" -comment "Created by ICer on 07-Oct-2026 22:28:03"%',
                       "-rule"=>'"Reset_sync04"',
                       "-comment"=>'"Created by ICer on 07-Oct-2026 22:28:03"',
                       "violations_waived"=>'27',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint_cdc/sys_top/cdc/cdc_verify/lint_cdc_waiver_file.awl"',
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
