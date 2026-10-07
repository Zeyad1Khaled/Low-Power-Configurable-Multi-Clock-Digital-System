################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'5',
                          "totalGeneratedCount"=>'8',
                          "totalReportCount"=>'3'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "InferLatch" -comment "Created by ICer on 22-Sep-2026 03:25:28  Intentional Latch for Clock Gating Cell, will be removed when instantiating the ICG Built-in Cell"%',
                       "-rule"=>'"InferLatch"',
                       "-comment"=>'"Created by ICer on 22-Sep-2026 03:25:28  Intentional Latch for Clock Gating Cell, will be removed when instantiating the ICG Built-in Cell"',
                       "violations_waived"=>'12',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "STARC05-1.4.3.4" -msg "Clock signal \'sys_top.RX_CLK.div_clk_reg\' used as a non-clock (Used with name \'sys_top.RX_CLK.div_clk_reg\')" -comment "Created by ICer on 22-Sep-2026 03:54:21"%',
                       "-rule"=>'q%STARC05-1.4.3.4%',
                       "-msg"=>'q%Clock signal \'sys_top.RX_CLK.div_clk_reg\' used as a non-clock (Used with name \'sys_top.RX_CLK.div_clk_reg\')%',
                       "-comment"=>'"Created by ICer on 22-Sep-2026 03:54:21"',
                       "violations_waived"=>'14',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "STARC05-1.4.3.4" -msg "Clock signal \'sys_top.TX_CLK.div_clk_reg\' used as a non-clock (Used with name \'sys_top.TX_CLK.div_clk_reg\')" -comment "Created by ICer on 22-Sep-2026 03:54:21 div_clk_reg is the divider output state , its not used as an unrelated data clock/control signal "%',
                       "-rule"=>'q%STARC05-1.4.3.4%',
                       "-msg"=>'q%Clock signal \'sys_top.TX_CLK.div_clk_reg\' used as a non-clock (Used with name \'sys_top.TX_CLK.div_clk_reg\')%',
                       "-comment"=>'"Created by ICer on 22-Sep-2026 03:54:21 div_clk_reg is the divider output state , its not used as an unrelated data clock/control signal "',
                       "violations_waived"=>'13',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'4'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'4',
                       "waiverCmd"=>'q%waive  -rule "W287b" -comment "Created by ICer on 22-Sep-2026 03:57:40"%',
                       "-rule"=>'"W287b"',
                       "-comment"=>'"Created by ICer on 22-Sep-2026 03:57:40"',
                       "violations_waived"=>'4 5',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'5'
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
