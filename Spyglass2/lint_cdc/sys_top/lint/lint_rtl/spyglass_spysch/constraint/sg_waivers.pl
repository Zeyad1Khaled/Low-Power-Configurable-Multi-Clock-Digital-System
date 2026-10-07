################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'6',
                          "totalGeneratedCount"=>'10',
                          "totalReportCount"=>'4'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -exact  -rule "InferLatch" -comment "Created by ICer on 05-Oct-2026 02:40:14  Intentional latch due to use of icg cell"%',
                       "-rule"=>'"InferLatch"',
                       "-exact"=>'1',
                       "-comment"=>'"Created by ICer on 05-Oct-2026 02:40:14  Intentional latch due to use of icg cell"',
                       "violations_waived"=>'20',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -exact  -rule "InferLatch" -comment "Created by ICer on 05-Oct-2026 02:40:14  Intentional latch due to use of icg cell"%',
                       "-rule"=>'"InferLatch"',
                       "-exact"=>'1',
                       "-comment"=>'"Created by ICer on 05-Oct-2026 02:40:14  Intentional latch due to use of icg cell"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -exact  -rule "STARC05-1.4.3.4" -comment "Created by ICer on 05-Oct-2026 02:40:45  Intentional due to muxing clk with div_clk"%',
                       "-rule"=>'q%STARC05-1.4.3.4%',
                       "-exact"=>'1',
                       "-comment"=>'"Created by ICer on 05-Oct-2026 02:40:45  Intentional due to muxing clk with div_clk"',
                       "violations_waived"=>'21 22',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'4',
                       "waiverCmd"=>'q%waive  -exact  -rule "STARC05-1.4.3.4" -comment "Created by ICer on 05-Oct-2026 02:40:45  Intentional due to muxing clk with div_clk"%',
                       "-rule"=>'q%STARC05-1.4.3.4%',
                       "-exact"=>'1',
                       "-comment"=>'"Created by ICer on 05-Oct-2026 02:40:45  Intentional due to muxing clk with div_clk"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'4'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'5',
                       "waiverCmd"=>'q%waive  -exact  -rule "W240" -comment "Created by ICer on 05-Oct-2026 02:41:28  Intentional due to dft insetion and unused dft signals"%',
                       "-rule"=>'"W240"',
                       "-exact"=>'1',
                       "-comment"=>'"Created by ICer on 05-Oct-2026 02:41:28  Intentional due to dft insetion and unused dft signals"',
                       "violations_waived"=>'4 5 6',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'5'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'6',
                       "waiverCmd"=>'q%waive  -exact  -rule "W240" -comment "Created by ICer on 05-Oct-2026 02:41:28  Intentional due to dft insetion and unused dft signals"%',
                       "-rule"=>'"W240"',
                       "-exact"=>'1',
                       "-comment"=>'"Created by ICer on 05-Oct-2026 02:41:28  Intentional due to dft insetion and unused dft signals"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/sys_top/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'6'
                      );

spyWaiversDataCount("totalWaivers"=>'6',
"totalWaiversApplied"=>'6',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'6',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
