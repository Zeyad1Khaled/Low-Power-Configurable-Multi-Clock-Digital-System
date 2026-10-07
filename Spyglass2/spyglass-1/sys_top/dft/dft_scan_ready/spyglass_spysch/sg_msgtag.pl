################################################################################
#This is an internally genertaed by SpyGlass for Message Tagging Support
################################################################################


use spyglass;
use SpyGlass;
use SpyGlass::Objects;
spyRebootMsgTagSupport();

spySetMsgTagCount(46,34);
spyCacheTagValuesFromBatch(["Async_07_CSV_TAG"]);
spyCacheTagValuesFromBatch(["Async_08_CSV_TAG"]);
spyCacheTagValuesFromBatch(["Clock_11_CSV_TAG"]);
spyCacheTagValuesFromBatch(["Clock_11_capture_CSV_TAG"]);
spyCacheTagValuesFromBatch(["DFT_DATA_CSV_TAG"]);
spyParseTextMessageTagFile("./spyglass-1/sys_top/dft/dft_scan_ready/spyglass_spysch/sg_msgtag.txt");

if(!defined $::spyInIspy || !$::spyInIspy)
{
    spyDefineReportGroupingOrder("ALL",
(
"BUILTIN"   => [SGTAGTRUE, SGTAGFALSE]
,"TEMPLATE" => "A"
)
);
}
spyMessageTagTestBenchmark(580,"./spyglass-1/sys_top/dft/dft_scan_ready/spyglass.vdb");

1;
