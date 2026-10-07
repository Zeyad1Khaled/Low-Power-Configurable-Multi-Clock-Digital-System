################################################################################
#This is an internally genertaed by SpyGlass for Message Tagging Support
################################################################################


use spyglass;
use SpyGlass;
use SpyGlass::Objects;
spyRebootMsgTagSupport();

spySetMsgTagCount(61,39);
spyCacheTagValuesFromBatch(["AC_COHERENCY06_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_CONV_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_CP02_CSV_TAG"]);
spyCacheTagValuesFromBatch(["AC_DATAHOLD01_SFF_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_DATAHOLD_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_GLITCH03_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_INITSTATE01_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_INITSTATE01_SS_SCH01"]);
spyCacheTagValuesFromBatch(["ADV_CLK_CDC_ANALYSIS_SS"]);
spyCacheTagValuesFromBatch(["ADV_CLK_SYNC_RTL2NETLISTSTAT"]);
spyCacheTagValuesFromBatch(["ADV_CLK_SYNC_SS_SCH"]);
spyCacheTagValuesFromBatch(["Ac_cdc01a_SFF_SS_SCH"]);
spyCacheTagValuesFromBatch(["Ac_conv02_SFF_SS_SCH"]);
spyCacheTagValuesFromBatch(["Clock_conv01_WRN"]);
spyCacheTagValuesFromBatch(["QS_CSV_TAG"]);
spyCacheTagValuesFromBatch(["SETUP_BBOX01_SDC_TAG"]);
spyCacheTagValuesFromBatch(["SETUP_BBOX01_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_LIBRARY_SS_RTL"]);
spyCacheTagValuesFromBatch(["SETUP_LIBRARY_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_PORT_SDC_TAG"]);
spyCacheTagValuesFromBatch(["SETUP_PORT_SS_SCH"]);
spyCacheTagValuesFromBatch(["VIRT_CLK_MAP_SS_SCH"]);
spyParseTextMessageTagFile("./spyglass-1/sys_top/cdc/cdc_verify/spyglass_spysch/sg_msgtag.txt");

if(!defined $::spyInIspy || !$::spyInIspy)
{
    spyDefineReportGroupingOrder("ALL",
(
"BUILTIN"   => [SGTAGTRUE, SGTAGFALSE]
,"TEMPLATE" => "A"
)
);
}
spyMessageTagTestBenchmark(118,"./spyglass-1/sys_top/cdc/cdc_verify/spyglass.vdb");

1;
