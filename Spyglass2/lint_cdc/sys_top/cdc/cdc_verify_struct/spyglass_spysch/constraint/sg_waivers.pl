################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'5',
                          "totalGeneratedCount"=>'37',
                          "totalReportCount"=>'32'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv02" -comment "Created by ICer on 07-Oct-2026 22:23:02"%',
                       "-rule"=>'"Ac_conv02"',
                       "-comment"=>'"Created by ICer on 07-Oct-2026 22:23:02"',
                       "violations_waived"=>'52',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint_cdc/sys_top/cdc/cdc_verify_struct/lint_cdc_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "Propagate_Clocks" -comment "Created by ICer on 07-Oct-2026 22:23:09"%',
                       "-rule"=>'"Propagate_Clocks"',
                       "-comment"=>'"Created by ICer on 07-Oct-2026 22:23:09"',
                       "violations_waived"=>'5 6 7',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint_cdc/sys_top/cdc/cdc_verify_struct/lint_cdc_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "Reset_sync04" -comment "Created by ICer on 07-Oct-2026 22:23:33"%',
                       "-rule"=>'"Reset_sync04"',
                       "-comment"=>'"Created by ICer on 07-Oct-2026 22:23:33"',
                       "violations_waived"=>'27',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint_cdc/sys_top/cdc/cdc_verify_struct/lint_cdc_waiver_file.awl"',
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
