################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'2',
                          "totalGeneratedCount"=>'5',
                          "totalReportCount"=>'3'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "InferLatch" -comment "Created by ICer on 22-Sep-2026 21:41:07   Clk Gating"%',
                       "-rule"=>'"InferLatch"',
                       "-comment"=>'"Created by ICer on 22-Sep-2026 21:41:07   Clk Gating"',
                       "violations_waived"=>'9',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "STARC05-1.4.3.4" -comment "Created by ICer on 22-Sep-2026 21:41:48  CLK_DIV"%',
                       "-rule"=>'q%STARC05-1.4.3.4%',
                       "-comment"=>'"Created by ICer on 22-Sep-2026 21:41:48  CLK_DIV"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "W287b" -comment "Created by ICer on 22-Sep-2026 21:42:12  Unconnected output ports "%',
                       "-rule"=>'"W287b"',
                       "-comment"=>'"Created by ICer on 22-Sep-2026 21:42:12  Unconnected output ports "',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'5'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'4',
                       "waiverCmd"=>'q%waive  -rule "FlopEConst" -comment "Created by ICer on 23-Sep-2026 03:37:32"%',
                       "-rule"=>'"FlopEConst"',
                       "-comment"=>'"Created by ICer on 23-Sep-2026 03:37:32"',
                       "violations_waived"=>'10',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'6'
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
