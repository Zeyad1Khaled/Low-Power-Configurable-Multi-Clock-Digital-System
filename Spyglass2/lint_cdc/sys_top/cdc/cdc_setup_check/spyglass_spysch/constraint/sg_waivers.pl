################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'3',
                          "totalGeneratedCount"=>'20',
                          "totalReportCount"=>'17'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "Propagate_Clocks" -comment "Created by ICer on 07-Oct-2026 22:21:05  virtual clock "%',
                       "-rule"=>'"Propagate_Clocks"',
                       "-comment"=>'"Created by ICer on 07-Oct-2026 22:21:05  virtual clock "',
                       "violations_waived"=>'5 6 7',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint_cdc/sys_top/cdc/cdc_setup_check/lint_cdc_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyWaiversDataCount("totalWaivers"=>'1',
"totalWaiversApplied"=>'1',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'1',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
