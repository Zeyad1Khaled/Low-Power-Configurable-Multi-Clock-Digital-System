################################################################################
#This is an internally genertaed by SpyGlass for Message Tagging Support
################################################################################


use spyglass;
use SpyGlass;
use SpyGlass::Objects;
spyRebootMsgTagSupport();

spySetMsgTagCount(111,34);
spyCacheTagValuesFromBatch(["W287b_VIOLATION_CSV_TAG"]);
spyParseTextMessageTagFile("./spyglass-1/lint/lint_turbo_rtl/spyglass_spysch/sg_msgtag.txt");

if(!defined $::spyInIspy || !$::spyInIspy)
{
    spyDefineReportGroupingOrder("ALL",
(
"BUILTIN"   => [SGTAGTRUE, SGTAGFALSE]
,"TEMPLATE" => "A"
)
);
}
spyMessageTagTestBenchmark(17,"./spyglass-1/lint/lint_turbo_rtl/spyglass.vdb");

1;
