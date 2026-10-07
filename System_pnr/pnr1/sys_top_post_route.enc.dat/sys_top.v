module sys_top (
	REF_CLK, 
	UART_CLK, 
	RST_N, 
	UART_RX_IN, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	SE, 
	SI, 
	SO, 
	UART_TX_O, 
	parity_error, 
	framing_error);
   input REF_CLK;
   input UART_CLK;
   input RST_N;
   input UART_RX_IN;
   input scan_clk;
   input scan_rst;
   input test_mode;
   input SE;
   input [3:0] SI;
   output [3:0] SO;
   output UART_TX_O;
   output parity_error;
   output framing_error;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N1;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N1;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N1;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N2;
   wire scan_clk__L2_N1;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire clk_m_REF__L6_N1;
   wire clk_m_REF__L6_N0;
   wire clk_m_REF__L5_N0;
   wire clk_m_REF__L4_N0;
   wire clk_m_REF__L3_N0;
   wire clk_m_REF__L2_N0;
   wire clk_m_REF__L1_N0;
   wire alu_cg__L1_N0;
   wire clk_m_UART__L5_N0;
   wire clk_m_UART__L4_N1;
   wire clk_m_UART__L4_N0;
   wire clk_m_UART__L3_N1;
   wire clk_m_UART__L3_N0;
   wire clk_m_UART__L2_N1;
   wire clk_m_UART__L2_N0;
   wire clk_m_UART__L1_N0;
   wire n1904__Exclude_0_NET;
   wire tx_clk__L1_N0;
   wire n1907__Exclude_0_NET;
   wire rx_clk__L1_N0;
   wire HTIE_LTIEHI_NET;
   wire FE_OFN24_n1641;
   wire FE_OFN23_reg1_5_;
   wire FE_OFN22_reg0_4_;
   wire FE_OFN21_reg0_5_;
   wire FE_OFN20_reg0_6_;
   wire FE_OFN19_reg1_4_;
   wire FE_OFN18_reg1_6_;
   wire FE_OFN17_reg0_7_;
   wire FE_OFN16_reg1_7_;
   wire FE_OFN15_SE;
   wire FE_OFN14_n1737;
   wire FE_OFN13_n1741;
   wire FE_OFN12_n1795;
   wire FE_OFN11_n1743;
   wire FE_OFN10_n1794;
   wire FE_OFN9_n1786;
   wire FE_OFN8_n1778;
   wire FE_OFN7_n1770;
   wire FE_OFN6_n1762;
   wire FE_OFN5_n1754;
   wire FE_OFN4_n1746;
   wire FE_OFN3_UART_TX_O;
   wire FE_OFN2_n1745;
   wire FE_OFN1_ref_rst;
   wire FE_OFN0_ref_rst;
   wire clk_m_UART;
   wire clk_m_REF;
   wire ref_rst;
   wire ref_func_rst;
   wire uart_rst;
   wire tx_rst;
   wire tx_func_rst;
   wire rx_rst;
   wire rx_func_rst;
   wire rst_m;
   wire alu_clk_en_test;
   wire tx_clk;
   wire rx_clk;
   wire busy;
   wire fifo_full;
   wire fifo_empty;
   wire alu_cg;
   wire alu_out_v;
   wire rd_data_vld;
   wire rx_out_v;
   wire Pulse_U_rcv_flop;
   wire Pulse_U_pls_flop;
   wire Regfile_u_reg_file_15__0_;
   wire Regfile_u_reg_file_15__1_;
   wire Regfile_u_reg_file_15__2_;
   wire Regfile_u_reg_file_15__3_;
   wire Regfile_u_reg_file_15__4_;
   wire Regfile_u_reg_file_15__5_;
   wire Regfile_u_reg_file_15__6_;
   wire Regfile_u_reg_file_15__7_;
   wire Regfile_u_reg_file_14__0_;
   wire Regfile_u_reg_file_14__1_;
   wire Regfile_u_reg_file_14__2_;
   wire Regfile_u_reg_file_14__3_;
   wire Regfile_u_reg_file_14__4_;
   wire Regfile_u_reg_file_14__5_;
   wire Regfile_u_reg_file_14__6_;
   wire Regfile_u_reg_file_14__7_;
   wire Regfile_u_reg_file_13__0_;
   wire Regfile_u_reg_file_13__1_;
   wire Regfile_u_reg_file_13__2_;
   wire Regfile_u_reg_file_13__3_;
   wire Regfile_u_reg_file_13__4_;
   wire Regfile_u_reg_file_13__5_;
   wire Regfile_u_reg_file_13__6_;
   wire Regfile_u_reg_file_13__7_;
   wire Regfile_u_reg_file_12__0_;
   wire Regfile_u_reg_file_12__1_;
   wire Regfile_u_reg_file_12__2_;
   wire Regfile_u_reg_file_12__3_;
   wire Regfile_u_reg_file_12__4_;
   wire Regfile_u_reg_file_12__5_;
   wire Regfile_u_reg_file_12__6_;
   wire Regfile_u_reg_file_12__7_;
   wire Regfile_u_reg_file_11__0_;
   wire Regfile_u_reg_file_11__1_;
   wire Regfile_u_reg_file_11__2_;
   wire Regfile_u_reg_file_11__3_;
   wire Regfile_u_reg_file_11__4_;
   wire Regfile_u_reg_file_11__5_;
   wire Regfile_u_reg_file_11__6_;
   wire Regfile_u_reg_file_11__7_;
   wire Regfile_u_reg_file_10__0_;
   wire Regfile_u_reg_file_10__1_;
   wire Regfile_u_reg_file_10__2_;
   wire Regfile_u_reg_file_10__3_;
   wire Regfile_u_reg_file_10__4_;
   wire Regfile_u_reg_file_10__5_;
   wire Regfile_u_reg_file_10__6_;
   wire Regfile_u_reg_file_10__7_;
   wire Regfile_u_reg_file_9__0_;
   wire Regfile_u_reg_file_9__1_;
   wire Regfile_u_reg_file_9__2_;
   wire Regfile_u_reg_file_9__3_;
   wire Regfile_u_reg_file_9__4_;
   wire Regfile_u_reg_file_9__5_;
   wire Regfile_u_reg_file_9__6_;
   wire Regfile_u_reg_file_9__7_;
   wire Regfile_u_reg_file_8__0_;
   wire Regfile_u_reg_file_8__1_;
   wire Regfile_u_reg_file_8__2_;
   wire Regfile_u_reg_file_8__3_;
   wire Regfile_u_reg_file_8__4_;
   wire Regfile_u_reg_file_8__5_;
   wire Regfile_u_reg_file_8__6_;
   wire Regfile_u_reg_file_8__7_;
   wire Regfile_u_reg_file_7__0_;
   wire Regfile_u_reg_file_7__1_;
   wire Regfile_u_reg_file_7__2_;
   wire Regfile_u_reg_file_7__3_;
   wire Regfile_u_reg_file_7__4_;
   wire Regfile_u_reg_file_7__5_;
   wire Regfile_u_reg_file_7__6_;
   wire Regfile_u_reg_file_7__7_;
   wire Regfile_u_reg_file_6__0_;
   wire Regfile_u_reg_file_6__1_;
   wire Regfile_u_reg_file_6__2_;
   wire Regfile_u_reg_file_6__3_;
   wire Regfile_u_reg_file_6__4_;
   wire Regfile_u_reg_file_6__5_;
   wire Regfile_u_reg_file_6__6_;
   wire Regfile_u_reg_file_6__7_;
   wire Regfile_u_reg_file_5__0_;
   wire Regfile_u_reg_file_5__1_;
   wire Regfile_u_reg_file_5__2_;
   wire Regfile_u_reg_file_5__3_;
   wire Regfile_u_reg_file_5__4_;
   wire Regfile_u_reg_file_5__5_;
   wire Regfile_u_reg_file_5__6_;
   wire Regfile_u_reg_file_5__7_;
   wire Regfile_u_reg_file_4__0_;
   wire Regfile_u_reg_file_4__1_;
   wire Regfile_u_reg_file_4__2_;
   wire Regfile_u_reg_file_4__3_;
   wire Regfile_u_reg_file_4__4_;
   wire Regfile_u_reg_file_4__6_;
   wire Regfile_u_reg_file_4__7_;
   wire Regfile_u_n18;
   wire Regfile_u_n17;
   wire sys_ctrl_u_reg3_cfg;
   wire sys_ctrl_u_reg2_cfg;
   wire sys_ctrl_u_cfg_locked;
   wire Rx2SysCtrl_pulse_out;
   wire FIFO_u_U4_WR_PTR_BIN_3_;
   wire FIFO_u_U5_RD_PTR_BIN_3_;
   wire UART_TX_RX_U0_UART_TX_par_bit;
   wire UART_TX_RX_U0_UART_TX_ser_data;
   wire UART_TX_RX_U0_UART_TX_ser_done;
   wire UART_TX_RX_U0_UART_RX_samp_b;
   wire UART_TX_RX_U0_UART_RX_stp_chk_en;
   wire UART_TX_RX_U0_UART_RX_strt_glitch;
   wire UART_TX_RX_U0_UART_RX_stp_done;
   wire UART_TX_RX_U0_UART_RX_par_done;
   wire UART_TX_RX_U0_UART_RX_samp_valid;
   wire UART_TX_RX_U0_UART_TX_U1_loading;
   wire UART_TX_RX_U0_UART_RX_U7_data_valid_next;
   wire UART_TX_RX_U0_UART_RX_U7_sample_valid_d;
   wire UART_TX_RX_U0_UART_RX_U7_n_state_0_;
   wire UART_TX_RX_U0_UART_RX_U6_N5;
   wire UART_TX_RX_U0_UART_RX_U5_N4;
   wire UART_TX_RX_U0_UART_RX_U4_par_done_next;
   wire UART_TX_RX_U0_UART_RX_U4_parity_reg;
   wire UART_TX_RX_U0_UART_RX_U1_N116;
   wire UART_TX_RX_U0_UART_RX_U1_N115;
   wire UART_TX_RX_U0_UART_RX_U1_N114;
   wire UART_TX_RX_U0_UART_RX_U1_N113;
   wire UART_TX_RX_U0_UART_RX_U1_N112;
   wire UART_TX_RX_U0_UART_RX_U1_N111;
   wire UART_TX_RX_U0_UART_RX_U2_N39;
   wire UART_TX_RX_U0_UART_RX_U2_s1;
   wire UART_TX_RX_U0_UART_RX_U2_s0;
   wire C118_DATA15_0;
   wire C118_DATA15_1;
   wire C118_DATA15_2;
   wire C118_DATA15_3;
   wire C118_DATA15_4;
   wire C118_DATA15_5;
   wire C118_DATA15_6;
   wire C118_DATA15_7;
   wire eq_x_40_n25;
   wire eq_x_37_n25;
   wire n613;
   wire n616;
   wire n617;
   wire n618;
   wire n619;
   wire n620;
   wire n621;
   wire n622;
   wire n623;
   wire n624;
   wire n625;
   wire n626;
   wire n627;
   wire n628;
   wire n629;
   wire n630;
   wire n631;
   wire n632;
   wire n633;
   wire n634;
   wire n635;
   wire n636;
   wire n637;
   wire n638;
   wire n639;
   wire n640;
   wire n641;
   wire n642;
   wire n643;
   wire n645;
   wire n646;
   wire n647;
   wire n648;
   wire n649;
   wire n650;
   wire n651;
   wire n652;
   wire n653;
   wire n654;
   wire n655;
   wire n656;
   wire n657;
   wire n658;
   wire n659;
   wire n660;
   wire n661;
   wire n662;
   wire n663;
   wire n664;
   wire n665;
   wire n666;
   wire n667;
   wire n668;
   wire n669;
   wire n670;
   wire n671;
   wire n672;
   wire n673;
   wire n674;
   wire n675;
   wire n676;
   wire n677;
   wire n678;
   wire n679;
   wire n680;
   wire n681;
   wire n682;
   wire n683;
   wire n684;
   wire n685;
   wire n686;
   wire n687;
   wire n688;
   wire n689;
   wire n690;
   wire n691;
   wire n692;
   wire n693;
   wire n694;
   wire n695;
   wire n696;
   wire n697;
   wire n698;
   wire n699;
   wire n700;
   wire n701;
   wire n702;
   wire n703;
   wire n704;
   wire n705;
   wire n706;
   wire n707;
   wire n708;
   wire n709;
   wire n710;
   wire n711;
   wire n712;
   wire n713;
   wire n714;
   wire n715;
   wire n716;
   wire n717;
   wire n718;
   wire n719;
   wire n720;
   wire n721;
   wire n722;
   wire n723;
   wire n724;
   wire n725;
   wire n726;
   wire n727;
   wire n728;
   wire n729;
   wire n730;
   wire n731;
   wire n732;
   wire n733;
   wire n734;
   wire n735;
   wire n736;
   wire n737;
   wire n738;
   wire n739;
   wire n740;
   wire n741;
   wire n742;
   wire n743;
   wire n744;
   wire n745;
   wire n746;
   wire n747;
   wire n748;
   wire n749;
   wire n750;
   wire n751;
   wire n752;
   wire n753;
   wire n754;
   wire n755;
   wire n756;
   wire n757;
   wire n758;
   wire n759;
   wire n760;
   wire n761;
   wire n762;
   wire n763;
   wire n764;
   wire n765;
   wire n766;
   wire n767;
   wire n768;
   wire n769;
   wire n770;
   wire n771;
   wire n772;
   wire n773;
   wire n774;
   wire n775;
   wire n776;
   wire n777;
   wire n778;
   wire n779;
   wire n780;
   wire n781;
   wire n782;
   wire n783;
   wire n784;
   wire n785;
   wire n786;
   wire n787;
   wire n788;
   wire n789;
   wire n790;
   wire n791;
   wire n792;
   wire n793;
   wire n794;
   wire n795;
   wire n796;
   wire n797;
   wire n798;
   wire n799;
   wire n800;
   wire n801;
   wire n802;
   wire n803;
   wire n804;
   wire n805;
   wire n806;
   wire n807;
   wire n808;
   wire n809;
   wire n810;
   wire n811;
   wire n812;
   wire n813;
   wire n814;
   wire n815;
   wire n816;
   wire n817;
   wire n818;
   wire n819;
   wire n820;
   wire n821;
   wire n822;
   wire n823;
   wire n824;
   wire n825;
   wire n826;
   wire n827;
   wire n828;
   wire n829;
   wire n830;
   wire n831;
   wire n832;
   wire n833;
   wire n834;
   wire n835;
   wire n836;
   wire n837;
   wire n838;
   wire n839;
   wire n840;
   wire n841;
   wire n842;
   wire n843;
   wire n844;
   wire n845;
   wire n846;
   wire n847;
   wire n848;
   wire n849;
   wire n850;
   wire n851;
   wire n852;
   wire n853;
   wire n854;
   wire n855;
   wire n856;
   wire n857;
   wire n858;
   wire n859;
   wire n860;
   wire n861;
   wire n862;
   wire n863;
   wire n864;
   wire n865;
   wire n866;
   wire n867;
   wire n868;
   wire n869;
   wire n870;
   wire n871;
   wire n872;
   wire n873;
   wire n874;
   wire n875;
   wire n876;
   wire n877;
   wire n878;
   wire n879;
   wire n881;
   wire n882;
   wire n883;
   wire n884;
   wire n885;
   wire DP_OP_196J1_124_5161_n43;
   wire DP_OP_196J1_124_5161_n29;
   wire DP_OP_196J1_124_5161_n28;
   wire DP_OP_196J1_124_5161_n27;
   wire DP_OP_196J1_124_5161_n26;
   wire DP_OP_196J1_124_5161_n25;
   wire DP_OP_196J1_124_5161_n24;
   wire DP_OP_196J1_124_5161_n23;
   wire DP_OP_196J1_124_5161_n22;
   wire DP_OP_196J1_124_5161_n16;
   wire DP_OP_196J1_124_5161_n15;
   wire DP_OP_196J1_124_5161_n14;
   wire DP_OP_196J1_124_5161_n13;
   wire DP_OP_196J1_124_5161_n12;
   wire DP_OP_196J1_124_5161_n11;
   wire DP_OP_196J1_124_5161_n10;
   wire DP_OP_196J1_124_5161_n9;
   wire intadd_0_A_4_;
   wire intadd_0_A_3_;
   wire intadd_0_A_2_;
   wire intadd_0_A_1_;
   wire intadd_0_A_0_;
   wire intadd_0_B_4_;
   wire intadd_0_B_3_;
   wire intadd_0_B_2_;
   wire intadd_0_SUM_4_;
   wire intadd_0_SUM_3_;
   wire intadd_0_SUM_2_;
   wire intadd_0_SUM_1_;
   wire intadd_0_SUM_0_;
   wire intadd_0_n5;
   wire intadd_0_n4;
   wire intadd_0_n3;
   wire intadd_0_n2;
   wire intadd_0_n1;
   wire intadd_1_A_3_;
   wire intadd_1_A_2_;
   wire intadd_1_A_1_;
   wire intadd_1_A_0_;
   wire intadd_1_B_4_;
   wire intadd_1_B_3_;
   wire intadd_1_B_2_;
   wire intadd_1_SUM_4_;
   wire intadd_1_SUM_3_;
   wire intadd_1_SUM_2_;
   wire intadd_1_SUM_1_;
   wire intadd_1_SUM_0_;
   wire intadd_1_n5;
   wire intadd_1_n4;
   wire intadd_1_n3;
   wire intadd_1_n2;
   wire intadd_1_n1;
   wire intadd_2_A_3_;
   wire intadd_2_A_2_;
   wire intadd_2_A_1_;
   wire intadd_2_B_3_;
   wire intadd_2_B_2_;
   wire intadd_2_SUM_3_;
   wire intadd_2_SUM_2_;
   wire intadd_2_SUM_1_;
   wire intadd_2_SUM_0_;
   wire intadd_2_n4;
   wire intadd_2_n3;
   wire intadd_2_n2;
   wire intadd_2_n1;
   wire intadd_3_A_3_;
   wire intadd_3_A_2_;
   wire intadd_3_B_2_;
   wire intadd_3_B_0_;
   wire intadd_3_SUM_2_;
   wire intadd_3_SUM_0_;
   wire intadd_3_n4;
   wire intadd_3_n3;
   wire intadd_3_n2;
   wire intadd_3_n1;
   wire intadd_4_A_0_;
   wire intadd_4_B_1_;
   wire intadd_4_CI;
   wire intadd_4_SUM_0_;
   wire intadd_4_n3;
   wire intadd_4_n2;
   wire intadd_4_n1;
   wire intadd_5_A_2_;
   wire intadd_5_B_1_;
   wire intadd_5_n3;
   wire intadd_5_n2;
   wire intadd_5_n1;
   wire intadd_6_A_2_;
   wire intadd_6_A_0_;
   wire intadd_6_B_2_;
   wire intadd_6_B_1_;
   wire intadd_6_B_0_;
   wire intadd_6_SUM_2_;
   wire intadd_6_SUM_1_;
   wire intadd_6_SUM_0_;
   wire intadd_6_n3;
   wire intadd_6_n2;
   wire intadd_6_n1;
   wire intadd_7_A_1_;
   wire intadd_7_A_0_;
   wire intadd_7_B_2_;
   wire intadd_7_B_1_;
   wire intadd_7_B_0_;
   wire intadd_7_CI;
   wire intadd_7_SUM_2_;
   wire intadd_7_SUM_1_;
   wire intadd_7_SUM_0_;
   wire intadd_7_n3;
   wire intadd_7_n2;
   wire intadd_7_n1;
   wire n887;
   wire n888;
   wire n889;
   wire n890;
   wire n891;
   wire n892;
   wire n893;
   wire n894;
   wire n895;
   wire n896;
   wire n897;
   wire n898;
   wire n899;
   wire n900;
   wire n902;
   wire n903;
   wire n904;
   wire n905;
   wire n906;
   wire n907;
   wire n908;
   wire n909;
   wire n910;
   wire n911;
   wire n912;
   wire n913;
   wire n914;
   wire n915;
   wire n916;
   wire n917;
   wire n918;
   wire n919;
   wire n920;
   wire n921;
   wire n922;
   wire n923;
   wire n924;
   wire n925;
   wire n926;
   wire n927;
   wire n928;
   wire n929;
   wire n930;
   wire n931;
   wire n933;
   wire n934;
   wire n935;
   wire n936;
   wire n938;
   wire n939;
   wire n940;
   wire n941;
   wire n942;
   wire n943;
   wire n944;
   wire n945;
   wire n946;
   wire n947;
   wire n948;
   wire n949;
   wire n950;
   wire n951;
   wire n952;
   wire n953;
   wire n954;
   wire n955;
   wire n956;
   wire n957;
   wire n958;
   wire n959;
   wire n960;
   wire n961;
   wire n962;
   wire n963;
   wire n964;
   wire n965;
   wire n966;
   wire n967;
   wire n968;
   wire n969;
   wire n970;
   wire n971;
   wire n972;
   wire n973;
   wire n974;
   wire n975;
   wire n976;
   wire n977;
   wire n978;
   wire n979;
   wire n980;
   wire n981;
   wire n982;
   wire n983;
   wire n984;
   wire n985;
   wire n986;
   wire n987;
   wire n988;
   wire n989;
   wire n990;
   wire n991;
   wire n992;
   wire n993;
   wire n994;
   wire n995;
   wire n996;
   wire n997;
   wire n998;
   wire n999;
   wire n1000;
   wire n1001;
   wire n1002;
   wire n1003;
   wire n1004;
   wire n1005;
   wire n1006;
   wire n1007;
   wire n1008;
   wire n1009;
   wire n1010;
   wire n1011;
   wire n1012;
   wire n1013;
   wire n1014;
   wire n1015;
   wire n1016;
   wire n1017;
   wire n1018;
   wire n1019;
   wire n1020;
   wire n1021;
   wire n1022;
   wire n1023;
   wire n1024;
   wire n1025;
   wire n1026;
   wire n1027;
   wire n1028;
   wire n1029;
   wire n1030;
   wire n1031;
   wire n1032;
   wire n1033;
   wire n1034;
   wire n1035;
   wire n1036;
   wire n1037;
   wire n1038;
   wire n1039;
   wire n1040;
   wire n1041;
   wire n1042;
   wire n1043;
   wire n1044;
   wire n1045;
   wire n1046;
   wire n1047;
   wire n1048;
   wire n1049;
   wire n1050;
   wire n1051;
   wire n1052;
   wire n1053;
   wire n1054;
   wire n1055;
   wire n1056;
   wire n1057;
   wire n1058;
   wire n1059;
   wire n1060;
   wire n1061;
   wire n1062;
   wire n1063;
   wire n1064;
   wire n1065;
   wire n1066;
   wire n1067;
   wire n1069;
   wire n1070;
   wire n1071;
   wire n1072;
   wire n1073;
   wire n1074;
   wire n1075;
   wire n1076;
   wire n1077;
   wire n1078;
   wire n1079;
   wire n1080;
   wire n1081;
   wire n1082;
   wire n1083;
   wire n1084;
   wire n1085;
   wire n1086;
   wire n1087;
   wire n1088;
   wire n1089;
   wire n1090;
   wire n1091;
   wire n1092;
   wire n1093;
   wire n1094;
   wire n1095;
   wire n1096;
   wire n1097;
   wire n1098;
   wire n1099;
   wire n1100;
   wire n1101;
   wire n1102;
   wire n1103;
   wire n1104;
   wire n1105;
   wire n1106;
   wire n1107;
   wire n1108;
   wire n1109;
   wire n1110;
   wire n1111;
   wire n1112;
   wire n1113;
   wire n1114;
   wire n1116;
   wire n1117;
   wire n1118;
   wire n1119;
   wire n1120;
   wire n1121;
   wire n1122;
   wire n1123;
   wire n1124;
   wire n1125;
   wire n1126;
   wire n1127;
   wire n1128;
   wire n1129;
   wire n1130;
   wire n1131;
   wire n1132;
   wire n1133;
   wire n1134;
   wire n1135;
   wire n1136;
   wire n1137;
   wire n1138;
   wire n1139;
   wire n1140;
   wire n1141;
   wire n1142;
   wire n1143;
   wire n1144;
   wire n1145;
   wire n1146;
   wire n1147;
   wire n1148;
   wire n1149;
   wire n1150;
   wire n1151;
   wire n1152;
   wire n1153;
   wire n1154;
   wire n1155;
   wire n1156;
   wire n1157;
   wire n1158;
   wire n1159;
   wire n1160;
   wire n1161;
   wire n1162;
   wire n1163;
   wire n1164;
   wire n1165;
   wire n1166;
   wire n1167;
   wire n1169;
   wire n1170;
   wire n1171;
   wire n1173;
   wire n1174;
   wire n1175;
   wire n1176;
   wire n1177;
   wire n1178;
   wire n1179;
   wire n1180;
   wire n1181;
   wire n1182;
   wire n1183;
   wire n1184;
   wire n1185;
   wire n1186;
   wire n1187;
   wire n1188;
   wire n1189;
   wire n1190;
   wire n1191;
   wire n1192;
   wire n1193;
   wire n1194;
   wire n1195;
   wire n1196;
   wire n1197;
   wire n1199;
   wire n1200;
   wire n1201;
   wire n1202;
   wire n1203;
   wire n1204;
   wire n1205;
   wire n1206;
   wire n1207;
   wire n1208;
   wire n1209;
   wire n1210;
   wire n1211;
   wire n1212;
   wire n1213;
   wire n1214;
   wire n1215;
   wire n1216;
   wire n1217;
   wire n1218;
   wire n1219;
   wire n1220;
   wire n1221;
   wire n1222;
   wire n1223;
   wire n1224;
   wire n1225;
   wire n1226;
   wire n1227;
   wire n1228;
   wire n1229;
   wire n1230;
   wire n1231;
   wire n1232;
   wire n1233;
   wire n1234;
   wire n1235;
   wire n1236;
   wire n1237;
   wire n1238;
   wire n1239;
   wire n1240;
   wire n1241;
   wire n1242;
   wire n1243;
   wire n1244;
   wire n1245;
   wire n1246;
   wire n1247;
   wire n1248;
   wire n1249;
   wire n1250;
   wire n1251;
   wire n1252;
   wire n1253;
   wire n1255;
   wire n1256;
   wire n1257;
   wire n1258;
   wire n1259;
   wire n1260;
   wire n1261;
   wire n1262;
   wire n1263;
   wire n1264;
   wire n1265;
   wire n1266;
   wire n1267;
   wire n1268;
   wire n1269;
   wire n1270;
   wire n1271;
   wire n1272;
   wire n1273;
   wire n1274;
   wire n1275;
   wire n1276;
   wire n1277;
   wire n1278;
   wire n1279;
   wire n1280;
   wire n1281;
   wire n1282;
   wire n1283;
   wire n1284;
   wire n1285;
   wire n1286;
   wire n1287;
   wire n1288;
   wire n1289;
   wire n1290;
   wire n1291;
   wire n1292;
   wire n1293;
   wire n1294;
   wire n1295;
   wire n1296;
   wire n1297;
   wire n1298;
   wire n1299;
   wire n1300;
   wire n1301;
   wire n1302;
   wire n1303;
   wire n1304;
   wire n1305;
   wire n1306;
   wire n1307;
   wire n1308;
   wire n1309;
   wire n1310;
   wire n1311;
   wire n1312;
   wire n1313;
   wire n1314;
   wire n1315;
   wire n1316;
   wire n1317;
   wire n1318;
   wire n1319;
   wire n1320;
   wire n1321;
   wire n1322;
   wire n1323;
   wire n1324;
   wire n1325;
   wire n1326;
   wire n1327;
   wire n1328;
   wire n1329;
   wire n1330;
   wire n1331;
   wire n1332;
   wire n1333;
   wire n1334;
   wire n1335;
   wire n1336;
   wire n1337;
   wire n1338;
   wire n1339;
   wire n1340;
   wire n1341;
   wire n1342;
   wire n1343;
   wire n1344;
   wire n1345;
   wire n1346;
   wire n1347;
   wire n1348;
   wire n1349;
   wire n1350;
   wire n1351;
   wire n1352;
   wire n1353;
   wire n1354;
   wire n1355;
   wire n1356;
   wire n1357;
   wire n1358;
   wire n1359;
   wire n1360;
   wire n1361;
   wire n1362;
   wire n1363;
   wire n1364;
   wire n1365;
   wire n1366;
   wire n1367;
   wire n1368;
   wire n1369;
   wire n1370;
   wire n1371;
   wire n1372;
   wire n1373;
   wire n1374;
   wire n1375;
   wire n1376;
   wire n1377;
   wire n1378;
   wire n1379;
   wire n1380;
   wire n1381;
   wire n1382;
   wire n1383;
   wire n1384;
   wire n1385;
   wire n1386;
   wire n1387;
   wire n1388;
   wire n1389;
   wire n1390;
   wire n1391;
   wire n1392;
   wire n1393;
   wire n1394;
   wire n1395;
   wire n1396;
   wire n1397;
   wire n1398;
   wire n1399;
   wire n1400;
   wire n1401;
   wire n1402;
   wire n1403;
   wire n1404;
   wire n1405;
   wire n1406;
   wire n1407;
   wire n1408;
   wire n1409;
   wire n1410;
   wire n1411;
   wire n1412;
   wire n1413;
   wire n1414;
   wire n1415;
   wire n1416;
   wire n1417;
   wire n1418;
   wire n1419;
   wire n1420;
   wire n1421;
   wire n1422;
   wire n1423;
   wire n1424;
   wire n1425;
   wire n1426;
   wire n1427;
   wire n1428;
   wire n1429;
   wire n1430;
   wire n1431;
   wire n1432;
   wire n1433;
   wire n1434;
   wire n1435;
   wire n1436;
   wire n1437;
   wire n1438;
   wire n1439;
   wire n1440;
   wire n1441;
   wire n1442;
   wire n1443;
   wire n1444;
   wire n1445;
   wire n1446;
   wire n1447;
   wire n1448;
   wire n1449;
   wire n1450;
   wire n1451;
   wire n1452;
   wire n1453;
   wire n1454;
   wire n1455;
   wire n1456;
   wire n1457;
   wire n1458;
   wire n1459;
   wire n1460;
   wire n1461;
   wire n1462;
   wire n1463;
   wire n1464;
   wire n1465;
   wire n1467;
   wire n1469;
   wire n1470;
   wire n1471;
   wire n1472;
   wire n1473;
   wire n1475;
   wire n1476;
   wire n1477;
   wire n1478;
   wire n1479;
   wire n1480;
   wire n1481;
   wire n1482;
   wire n1483;
   wire n1484;
   wire n1485;
   wire n1486;
   wire n1487;
   wire n1488;
   wire n1489;
   wire n1490;
   wire n1491;
   wire n1492;
   wire n1493;
   wire n1494;
   wire n1495;
   wire n1496;
   wire n1497;
   wire n1498;
   wire n1499;
   wire n1500;
   wire n1501;
   wire n1502;
   wire n1503;
   wire n1504;
   wire n1505;
   wire n1506;
   wire n1507;
   wire n1508;
   wire n1509;
   wire n1510;
   wire n1511;
   wire n1512;
   wire n1513;
   wire n1514;
   wire n1515;
   wire n1516;
   wire n1517;
   wire n1518;
   wire n1519;
   wire n1520;
   wire n1521;
   wire n1522;
   wire n1523;
   wire n1524;
   wire n1525;
   wire n1526;
   wire n1527;
   wire n1528;
   wire n1529;
   wire n1530;
   wire n1531;
   wire n1532;
   wire n1533;
   wire n1534;
   wire n1535;
   wire n1536;
   wire n1537;
   wire n1538;
   wire n1539;
   wire n1540;
   wire n1541;
   wire n1542;
   wire n1543;
   wire n1544;
   wire n1545;
   wire n1546;
   wire n1547;
   wire n1548;
   wire n1549;
   wire n1550;
   wire n1551;
   wire n1552;
   wire n1553;
   wire n1554;
   wire n1555;
   wire n1556;
   wire n1557;
   wire n1558;
   wire n1559;
   wire n1560;
   wire n1561;
   wire n1562;
   wire n1563;
   wire n1564;
   wire n1565;
   wire n1566;
   wire n1567;
   wire n1568;
   wire n1569;
   wire n1570;
   wire n1571;
   wire n1572;
   wire n1573;
   wire n1574;
   wire n1575;
   wire n1576;
   wire n1577;
   wire n1578;
   wire n1579;
   wire n1580;
   wire n1581;
   wire n1582;
   wire n1583;
   wire n1584;
   wire n1585;
   wire n1586;
   wire n1587;
   wire n1588;
   wire n1589;
   wire n1590;
   wire n1591;
   wire n1592;
   wire n1593;
   wire n1594;
   wire n1595;
   wire n1596;
   wire n1597;
   wire n1598;
   wire n1599;
   wire n1600;
   wire n1601;
   wire n1602;
   wire n1603;
   wire n1604;
   wire n1605;
   wire n1606;
   wire n1607;
   wire n1608;
   wire n1609;
   wire n1610;
   wire n1611;
   wire n1612;
   wire n1613;
   wire n1614;
   wire n1615;
   wire n1616;
   wire n1617;
   wire n1618;
   wire n1619;
   wire n1620;
   wire n1621;
   wire n1622;
   wire n1623;
   wire n1624;
   wire n1625;
   wire n1626;
   wire n1627;
   wire n1628;
   wire n1629;
   wire n1630;
   wire n1631;
   wire n1632;
   wire n1633;
   wire n1634;
   wire n1635;
   wire n1636;
   wire n1637;
   wire n1638;
   wire n1639;
   wire n1640;
   wire n1641;
   wire n1642;
   wire n1643;
   wire n1644;
   wire n1645;
   wire n1646;
   wire n1647;
   wire n1648;
   wire n1649;
   wire n1650;
   wire n1651;
   wire n1652;
   wire n1653;
   wire n1654;
   wire n1655;
   wire n1656;
   wire n1657;
   wire n1658;
   wire n1659;
   wire n1660;
   wire n1661;
   wire n1662;
   wire n1663;
   wire n1664;
   wire n1665;
   wire n1666;
   wire n1667;
   wire n1668;
   wire n1669;
   wire n1670;
   wire n1671;
   wire n1672;
   wire n1673;
   wire n1674;
   wire n1675;
   wire n1676;
   wire n1677;
   wire n1678;
   wire n1679;
   wire n1680;
   wire n1681;
   wire n1682;
   wire n1683;
   wire n1684;
   wire n1685;
   wire n1686;
   wire n1687;
   wire n1688;
   wire n1689;
   wire n1690;
   wire n1691;
   wire n1692;
   wire n1693;
   wire n1694;
   wire n1695;
   wire n1696;
   wire n1697;
   wire n1698;
   wire n1699;
   wire n1700;
   wire n1701;
   wire n1702;
   wire n1703;
   wire n1704;
   wire n1705;
   wire n1706;
   wire n1707;
   wire n1708;
   wire n1709;
   wire n1710;
   wire n1711;
   wire n1712;
   wire n1713;
   wire n1714;
   wire n1715;
   wire n1716;
   wire n1717;
   wire n1718;
   wire n1719;
   wire n1720;
   wire n1721;
   wire n1722;
   wire n1723;
   wire n1724;
   wire n1725;
   wire n1726;
   wire n1727;
   wire n1728;
   wire n1729;
   wire n1730;
   wire n1731;
   wire n1732;
   wire n1733;
   wire n1734;
   wire n1735;
   wire n1736;
   wire n1737;
   wire n1738;
   wire n1739;
   wire n1740;
   wire n1741;
   wire n1742;
   wire n1743;
   wire n1744;
   wire n1745;
   wire n1746;
   wire n1747;
   wire n1748;
   wire n1749;
   wire n1750;
   wire n1751;
   wire n1752;
   wire n1753;
   wire n1754;
   wire n1755;
   wire n1756;
   wire n1757;
   wire n1758;
   wire n1759;
   wire n1760;
   wire n1761;
   wire n1762;
   wire n1763;
   wire n1764;
   wire n1765;
   wire n1766;
   wire n1767;
   wire n1768;
   wire n1769;
   wire n1770;
   wire n1771;
   wire n1772;
   wire n1773;
   wire n1774;
   wire n1775;
   wire n1776;
   wire n1777;
   wire n1778;
   wire n1779;
   wire n1780;
   wire n1781;
   wire n1782;
   wire n1783;
   wire n1784;
   wire n1785;
   wire n1786;
   wire n1787;
   wire n1788;
   wire n1789;
   wire n1790;
   wire n1791;
   wire n1792;
   wire n1793;
   wire n1794;
   wire n1795;
   wire n1796;
   wire n1797;
   wire n1798;
   wire n1799;
   wire n1800;
   wire n1801;
   wire n1802;
   wire n1803;
   wire n1804;
   wire n1805;
   wire n1806;
   wire n1807;
   wire n1808;
   wire n1809;
   wire n1810;
   wire n1811;
   wire n1812;
   wire n1813;
   wire n1814;
   wire n1815;
   wire n1816;
   wire n1817;
   wire n1818;
   wire n1819;
   wire n1820;
   wire n1821;
   wire n1822;
   wire n1823;
   wire n1824;
   wire n1825;
   wire n1826;
   wire n1827;
   wire n1828;
   wire n1829;
   wire n1830;
   wire n1831;
   wire n1832;
   wire n1833;
   wire n1834;
   wire n1835;
   wire n1836;
   wire n1837;
   wire n1838;
   wire n1839;
   wire n1840;
   wire n1841;
   wire n1842;
   wire n1843;
   wire n1844;
   wire n1845;
   wire n1846;
   wire n1847;
   wire n1848;
   wire n1849;
   wire n1850;
   wire n1851;
   wire n1852;
   wire n1853;
   wire n1854;
   wire n1855;
   wire n1856;
   wire n1857;
   wire n1858;
   wire n1859;
   wire n1860;
   wire n1861;
   wire n1862;
   wire n1863;
   wire n1864;
   wire n1865;
   wire n1866;
   wire n1867;
   wire n1868;
   wire n1869;
   wire n1870;
   wire n1871;
   wire n1872;
   wire n1876;
   wire n1877;
   wire n1878;
   wire n1879;
   wire n1880;
   wire n1881;
   wire n1882;
   wire n1883;
   wire n1884;
   wire n1885;
   wire n1886;
   wire n1887;
   wire n1888;
   wire n1889;
   wire n1890;
   wire n1891;
   wire n1892;
   wire n1893;
   wire n1894;
   wire n1898;
   wire n1899;
   wire n1900;
   wire n1901;
   wire n1903;
   wire n1904;
   wire n1907;
   wire n1914;
   wire n1918;
   wire n1922;
   wire n1923;
   wire n1926;
   wire n1928;
   wire n1929;
   wire n1930;
   wire n1932;
   wire n1933;
   wire n1934;
   wire n1937;
   wire n1939;
   wire n1940;
   wire n1941;
   wire n1942;
   wire n1943;
   wire n1944;
   wire [7:0] reg0;
   wire [7:0] reg1;
   wire [15:0] alu_out;
   wire [7:0] rd_data;
   wire [7:0] reg2;
   wire [5:0] reg3;
   wire [7:0] synced_p_data;
   wire [7:0] rx_p_out;
   wire [2:0] rx_ratio;
   wire [3:0] FIFO_u_r_ptr_synch;
   wire [2:0] FIFO_u_r_ptr;
   wire [3:0] FIFO_u_w_ptr_synch;
   wire [2:0] FIFO_u_w_ptr;
   wire [2:0] FIFO_u_r_addr;
   wire [2:0] FIFO_u_w_addr;
   wire [15:0] ALU_u_ALU_OUT_Comb;
   wire [3:0] sys_ctrl_u_wr_addr;
   wire [7:0] sys_ctrl_u_frame2;
   wire [3:0] sys_ctrl_u_current_state;
   wire [3:0] Rx2SysCtrl_SYNC;
   wire [1:0] RF1_n_synch;
   wire [1:0] rx_rst_sync_n_synch;
   wire [1:0] tx_rst_sync_n_synch;
   wire [1:0] uart_rst_sync_n_synch;
   wire [63:0] FIFO_u_U1_mem;
   wire [3:0] FIFO_u_U2_WRptr_sync_s0;
   wire [3:0] FIFO_u_U4_WR_PTR_GRAY_NEXT;
   wire [2:0] FIFO_u_U4_WR_PTR_BIN_NEXT;
   wire [3:0] FIFO_u_U5_RD_PTR_GRAY_NEXT;
   wire [2:0] FIFO_u_U5_RD_PTR_BIN_NEXT;
   wire [5:0] UART_TX_RX_U0_UART_RX_edge_cnt;
   wire [3:0] UART_TX_RX_U0_UART_RX_bit_cnt;
   wire [3:0] FIFO_u_U3_RDptr_sync_s0;
   wire [7:0] UART_TX_RX_U0_UART_TX_U1_mem;
   wire [2:0] UART_TX_RX_U0_UART_TX_U1_counter;
   wire [2:0] UART_TX_RX_U0_UART_TX_U2_next_state;
   wire [2:0] UART_TX_RX_U0_UART_TX_U2_current_state;
   wire [2:0] UART_TX_RX_U0_UART_RX_U7_c_state;
   wire [3:0] UART_TX_RX_U0_UART_RX_U4_count;

   CLKINVX12M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX40M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   INVX2M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   INVXLM scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N1));
   INVXLM scan_clk__L5_I1 (.Y(scan_clk__L5_N1), 
	.A(scan_clk__L4_N1));
   INVX2M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   INVXLM scan_clk__L4_I1 (.Y(scan_clk__L4_N1), 
	.A(scan_clk__L3_N1));
   CLKBUFX1M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   INVXLM scan_clk__L3_I1 (.Y(scan_clk__L3_N1), 
	.A(scan_clk__L2_N2));
   CLKINVX40M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N1));
   BUFX2M scan_clk__L2_I2 (.Y(scan_clk__L2_N2), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L2_I1 (.Y(scan_clk__L2_N1), 
	.A(scan_clk__L1_N0));
   INVX2M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX40M clk_m_REF__L6_I1 (.Y(clk_m_REF__L6_N1), 
	.A(clk_m_REF__L5_N0));
   CLKINVX40M clk_m_REF__L6_I0 (.Y(clk_m_REF__L6_N0), 
	.A(clk_m_REF__L5_N0));
   CLKINVX40M clk_m_REF__L5_I0 (.Y(clk_m_REF__L5_N0), 
	.A(clk_m_REF__L4_N0));
   BUFX16M clk_m_REF__L4_I0 (.Y(clk_m_REF__L4_N0), 
	.A(clk_m_REF__L3_N0));
   CLKBUFX2M clk_m_REF__L3_I0 (.Y(clk_m_REF__L3_N0), 
	.A(clk_m_REF__L2_N0));
   INVX2M clk_m_REF__L2_I0 (.Y(clk_m_REF__L2_N0), 
	.A(clk_m_REF__L1_N0));
   CLKINVX16M clk_m_REF__L1_I0 (.Y(clk_m_REF__L1_N0), 
	.A(clk_m_REF));
   CLKBUFX40M alu_cg__L1_I0 (.Y(alu_cg__L1_N0), 
	.A(alu_cg));
   CLKBUFX40M clk_m_UART__L5_I0 (.Y(clk_m_UART__L5_N0), 
	.A(clk_m_UART__L4_N1));
   CLKBUFX1M clk_m_UART__L4_I1 (.Y(clk_m_UART__L4_N1), 
	.A(clk_m_UART__L3_N1));
   CLKINVX32M clk_m_UART__L4_I0 (.Y(clk_m_UART__L4_N0), 
	.A(clk_m_UART__L3_N0));
   CLKBUFX1M clk_m_UART__L3_I1 (.Y(clk_m_UART__L3_N1), 
	.A(clk_m_UART__L2_N1));
   CLKINVX40M clk_m_UART__L3_I0 (.Y(clk_m_UART__L3_N0), 
	.A(clk_m_UART__L2_N0));
   CLKBUFX1M clk_m_UART__L2_I1 (.Y(clk_m_UART__L2_N1), 
	.A(clk_m_UART__L1_N0));
   CLKBUFX24M clk_m_UART__L2_I0 (.Y(clk_m_UART__L2_N0), 
	.A(clk_m_UART__L1_N0));
   BUFX2M clk_m_UART__L1_I0 (.Y(clk_m_UART__L1_N0), 
	.A(clk_m_UART));
   CLKBUFX1M n1904__Exclude_0 (.Y(n1904__Exclude_0_NET), 
	.A(n1904));
   CLKBUFX40M tx_clk__L1_I0 (.Y(tx_clk__L1_N0), 
	.A(tx_clk));
   CLKBUFX1M n1907__Exclude_0 (.Y(n1907__Exclude_0_NET), 
	.A(n1907));
   CLKBUFX40M rx_clk__L1_I0 (.Y(rx_clk__L1_N0), 
	.A(rx_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   BUFX8M FE_OFC24_n1641 (.Y(FE_OFN24_n1641), 
	.A(n1641));
   BUFX10M FE_OFC23_reg1_5_ (.Y(FE_OFN23_reg1_5_), 
	.A(reg1[5]));
   CLKBUFX2M FE_OFC22_reg0_4_ (.Y(FE_OFN22_reg0_4_), 
	.A(reg0[4]));
   CLKBUFX2M FE_OFC21_reg0_5_ (.Y(FE_OFN21_reg0_5_), 
	.A(reg0[5]));
   CLKBUFX2M FE_OFC20_reg0_6_ (.Y(FE_OFN20_reg0_6_), 
	.A(reg0[6]));
   BUFX10M FE_OFC19_reg1_4_ (.Y(FE_OFN19_reg1_4_), 
	.A(reg1[4]));
   BUFX8M FE_OFC18_reg1_6_ (.Y(FE_OFN18_reg1_6_), 
	.A(reg1[6]));
   BUFX4M FE_OFC17_reg0_7_ (.Y(FE_OFN17_reg0_7_), 
	.A(reg0[7]));
   BUFX8M FE_OFC16_reg1_7_ (.Y(FE_OFN16_reg1_7_), 
	.A(reg1[7]));
   BUFX4M FE_OFC15_SE (.Y(FE_OFN15_SE), 
	.A(SE));
   BUFX2M FE_OFC14_n1737 (.Y(FE_OFN14_n1737), 
	.A(n1737));
   BUFX2M FE_OFC13_n1741 (.Y(FE_OFN13_n1741), 
	.A(n1741));
   BUFX2M FE_OFC12_n1795 (.Y(FE_OFN12_n1795), 
	.A(n1795));
   BUFX2M FE_OFC11_n1743 (.Y(FE_OFN11_n1743), 
	.A(n1743));
   BUFX2M FE_OFC10_n1794 (.Y(FE_OFN10_n1794), 
	.A(n1794));
   BUFX2M FE_OFC9_n1786 (.Y(FE_OFN9_n1786), 
	.A(n1786));
   BUFX2M FE_OFC8_n1778 (.Y(FE_OFN8_n1778), 
	.A(n1778));
   BUFX2M FE_OFC7_n1770 (.Y(FE_OFN7_n1770), 
	.A(n1770));
   BUFX2M FE_OFC6_n1762 (.Y(FE_OFN6_n1762), 
	.A(n1762));
   BUFX2M FE_OFC5_n1754 (.Y(FE_OFN5_n1754), 
	.A(n1754));
   BUFX2M FE_OFC4_n1746 (.Y(FE_OFN4_n1746), 
	.A(n1746));
   BUFX4M FE_OFC3_UART_TX_O (.Y(UART_TX_O), 
	.A(FE_OFN3_UART_TX_O));
   BUFX2M FE_OFC2_n1745 (.Y(FE_OFN2_n1745), 
	.A(n1745));
   BUFX8M FE_OFC1_ref_rst (.Y(FE_OFN1_ref_rst), 
	.A(FE_OFN0_ref_rst));
   CLKBUFX8M FE_OFC0_ref_rst (.Y(FE_OFN0_ref_rst), 
	.A(ref_rst));
   AO22X1M U760 (.Y(clk_m_REF), 
	.B1(REF_CLK__L2_N0), 
	.B0(n613), 
	.A1(scan_clk__L5_N0), 
	.A0(test_mode));
   CLKMX2X2M U953 (.Y(tx_clk), 
	.S0(test_mode), 
	.B(scan_clk__L7_N0), 
	.A(n885));
   CLKMX2X2M U954 (.Y(rx_clk), 
	.S0(test_mode), 
	.B(scan_clk__L7_N0), 
	.A(n884));
   SDFFRQX1M RF1_n_synch_reg_0_ (.SI(fifo_empty), 
	.SE(n1930), 
	.RN(rst_m), 
	.Q(RF1_n_synch[0]), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M rx_rst_sync_n_synch_reg_0_ (.SI(UART_TX_RX_U0_UART_TX_par_bit), 
	.SE(n1942), 
	.RN(uart_rst), 
	.Q(rx_rst_sync_n_synch[0]), 
	.D(HTIE_LTIEHI_NET), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M tx_rst_sync_n_synch_reg_0_ (.SI(sys_ctrl_u_wr_addr[3]), 
	.SE(n1934), 
	.RN(uart_rst), 
	.Q(tx_rst_sync_n_synch[0]), 
	.D(HTIE_LTIEHI_NET), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M uart_rst_sync_n_synch_reg_0_ (.SI(tx_rst_sync_n_synch[0]), 
	.SE(n1932), 
	.RN(rst_m), 
	.Q(uart_rst_sync_n_synch[0]), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk_m_UART__L5_N0));
   SDFFRQX1M RF1_n_synch_reg_1_ (.SI(Pulse_U_pls_flop), 
	.SE(n1942), 
	.RN(rst_m), 
	.Q(RF1_n_synch[1]), 
	.D(RF1_n_synch[0]), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M rx_rst_sync_n_synch_reg_1_ (.SI(UART_TX_RX_U0_UART_RX_U7_sample_valid_d), 
	.SE(n1930), 
	.RN(uart_rst), 
	.Q(rx_rst_sync_n_synch[1]), 
	.D(rx_rst_sync_n_synch[0]), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M tx_rst_sync_n_synch_reg_1_ (.SI(rx_func_rst), 
	.SE(n1939), 
	.RN(uart_rst), 
	.Q(tx_rst_sync_n_synch[1]), 
	.D(tx_rst_sync_n_synch[0]), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M uart_rst_sync_n_synch_reg_1_ (.SI(tx_func_rst), 
	.SE(n1934), 
	.RN(rst_m), 
	.Q(uart_rst_sync_n_synch[1]), 
	.D(uart_rst_sync_n_synch[0]), 
	.CK(clk_m_UART__L5_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U2_Sampled_bit_reg (.SI(UART_TX_RX_U0_UART_RX_edge_cnt[5]), 
	.SE(n1923), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_samp_b), 
	.D(n664), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U7_data_valid_reg (.SI(UART_TX_RX_U0_UART_RX_U7_c_state[2]), 
	.SE(n1944), 
	.RN(rx_rst), 
	.Q(rx_out_v), 
	.D(UART_TX_RX_U0_UART_RX_U7_data_valid_next), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M Rx2SysCtrl_SYNC_reg_0_ (.SI(ref_func_rst), 
	.SE(n1940), 
	.RN(ref_rst), 
	.Q(Rx2SysCtrl_SYNC[0]), 
	.D(rx_out_v), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_current_state_reg_2_ (.SI(sys_ctrl_u_current_state[1]), 
	.SE(n1942), 
	.RN(ref_rst), 
	.Q(sys_ctrl_u_current_state[2]), 
	.D(n651), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_reg2_cfg_reg (.SI(sys_ctrl_u_frame2[7]), 
	.SE(n1944), 
	.RN(ref_rst), 
	.Q(sys_ctrl_u_reg2_cfg), 
	.D(n648), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_cfg_locked_reg (.SI(rx_rst_sync_n_synch[0]), 
	.SE(n1926), 
	.RN(ref_rst), 
	.Q(sys_ctrl_u_cfg_locked), 
	.D(n650), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_RdData_VLD_reg (.SI(n1907__Exclude_0_NET), 
	.SE(n1918), 
	.RN(ref_rst), 
	.Q(rd_data_vld), 
	.D(n878), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_current_state_reg_1_ (.SI(sys_ctrl_u_current_state[0]), 
	.SE(FE_OFN15_SE), 
	.RN(ref_rst), 
	.Q(sys_ctrl_u_current_state[1]), 
	.D(n652), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_current_state_reg_3_ (.SI(sys_ctrl_u_current_state[2]), 
	.SE(n1922), 
	.RN(ref_rst), 
	.Q(sys_ctrl_u_current_state[3]), 
	.D(n879), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_reg3_cfg_reg (.SI(sys_ctrl_u_reg2_cfg), 
	.SE(n1937), 
	.RN(ref_rst), 
	.Q(sys_ctrl_u_reg3_cfg), 
	.D(n649), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_current_state_reg_0_ (.SI(sys_ctrl_u_cfg_locked), 
	.SE(n1933), 
	.RN(ref_rst), 
	.Q(sys_ctrl_u_current_state[0]), 
	.D(n653), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M ALU_u_OUT_VALID_reg (.SI(alu_out[15]), 
	.SE(n1942), 
	.RN(FE_OFN1_ref_rst), 
	.Q(alu_out_v), 
	.D(n1898), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M ALU_u_ALU_OUT_reg_9_ (.SI(alu_out[8]), 
	.SE(n1926), 
	.RN(FE_OFN0_ref_rst), 
	.Q(alu_out[9]), 
	.D(ALU_u_ALU_OUT_Comb[9]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M ALU_u_ALU_OUT_reg_10_ (.SI(alu_out[9]), 
	.SE(n1940), 
	.RN(FE_OFN0_ref_rst), 
	.Q(alu_out[10]), 
	.D(ALU_u_ALU_OUT_Comb[10]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M ALU_u_ALU_OUT_reg_11_ (.SI(alu_out[10]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_ref_rst), 
	.Q(alu_out[11]), 
	.D(ALU_u_ALU_OUT_Comb[11]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M ALU_u_ALU_OUT_reg_12_ (.SI(alu_out[11]), 
	.SE(n1930), 
	.RN(FE_OFN0_ref_rst), 
	.Q(alu_out[12]), 
	.D(ALU_u_ALU_OUT_Comb[12]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M ALU_u_ALU_OUT_reg_13_ (.SI(alu_out[12]), 
	.SE(n1943), 
	.RN(FE_OFN1_ref_rst), 
	.Q(alu_out[13]), 
	.D(ALU_u_ALU_OUT_Comb[13]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M ALU_u_ALU_OUT_reg_14_ (.SI(alu_out[13]), 
	.SE(n1937), 
	.RN(FE_OFN1_ref_rst), 
	.Q(alu_out[14]), 
	.D(ALU_u_ALU_OUT_Comb[14]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M ALU_u_ALU_OUT_reg_15_ (.SI(alu_out[14]), 
	.SE(n1926), 
	.RN(FE_OFN1_ref_rst), 
	.Q(alu_out[15]), 
	.D(ALU_u_ALU_OUT_Comb[15]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_loading_reg (.SI(UART_TX_RX_U0_UART_TX_U1_counter[2]), 
	.SE(n1928), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_U1_loading), 
	.D(n861), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_counter_reg_0_ (.SI(rx_out_v), 
	.SE(n1930), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_U1_counter[0]), 
	.D(n863), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_counter_reg_1_ (.SI(UART_TX_RX_U0_UART_TX_U1_counter[0]), 
	.SE(n1918), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_U1_counter[1]), 
	.D(n859), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_counter_reg_2_ (.SI(UART_TX_RX_U0_UART_TX_U1_counter[1]), 
	.SE(SE), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_U1_counter[2]), 
	.D(n862), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_ser_done_reg (.SI(UART_TX_RX_U0_UART_TX_ser_data), 
	.SE(n1942), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_ser_done), 
	.D(n860), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M Pulse_U_rcv_flop_reg (.SI(FIFO_u_r_ptr_synch[3]), 
	.SE(n1923), 
	.RN(tx_rst), 
	.Q(Pulse_U_rcv_flop), 
	.D(busy), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M FIFO_u_U5_RD_PTR_BIN_reg_0_ (.SI(fifo_full), 
	.SE(n1939), 
	.RN(tx_rst), 
	.Q(FIFO_u_r_addr[0]), 
	.D(FIFO_u_U5_RD_PTR_BIN_NEXT[0]), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M FIFO_u_U5_RD_PTR_BIN_reg_1_ (.SI(FIFO_u_r_addr[0]), 
	.SE(n1934), 
	.RN(tx_rst), 
	.Q(FIFO_u_r_addr[1]), 
	.D(FIFO_u_U5_RD_PTR_BIN_NEXT[1]), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M FIFO_u_U5_RD_PTR_GRAY_reg_0_ (.SI(FIFO_u_U5_RD_PTR_BIN_3_), 
	.SE(n1943), 
	.RN(tx_rst), 
	.Q(FIFO_u_r_ptr[0]), 
	.D(FIFO_u_U5_RD_PTR_GRAY_NEXT[0]), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M FIFO_u_U3_RDptr_sync_s0_reg_0_ (.SI(FIFO_u_w_ptr_synch[3]), 
	.SE(n1923), 
	.RN(ref_rst), 
	.Q(FIFO_u_U3_RDptr_sync_s0[0]), 
	.D(FIFO_u_r_ptr[0]), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M FIFO_u_U5_RD_PTR_BIN_reg_2_ (.SI(FIFO_u_r_addr[1]), 
	.SE(FE_OFN15_SE), 
	.RN(tx_rst), 
	.Q(FIFO_u_r_addr[2]), 
	.D(FIFO_u_U5_RD_PTR_BIN_NEXT[2]), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M FIFO_u_U5_RD_PTR_GRAY_reg_1_ (.SI(FIFO_u_r_ptr[0]), 
	.SE(n1932), 
	.RN(tx_rst), 
	.Q(FIFO_u_r_ptr[1]), 
	.D(FIFO_u_U5_RD_PTR_GRAY_NEXT[1]), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M FIFO_u_U3_RDptr_sync_s0_reg_1_ (.SI(FIFO_u_r_ptr_synch[0]), 
	.SE(SE), 
	.RN(ref_rst), 
	.Q(FIFO_u_U3_RDptr_sync_s0[1]), 
	.D(FIFO_u_r_ptr[1]), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M FIFO_u_U5_RD_PTR_GRAY_reg_2_ (.SI(FIFO_u_r_ptr[1]), 
	.SE(n1928), 
	.RN(tx_rst), 
	.Q(FIFO_u_r_ptr[2]), 
	.D(FIFO_u_U5_RD_PTR_GRAY_NEXT[2]), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M FIFO_u_U3_RDptr_sync_s0_reg_2_ (.SI(FIFO_u_r_ptr_synch[1]), 
	.SE(n1937), 
	.RN(ref_rst), 
	.Q(FIFO_u_U3_RDptr_sync_s0[2]), 
	.D(FIFO_u_r_ptr[2]), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M FIFO_u_U5_RD_PTR_BIN_reg_3_ (.SI(FIFO_u_r_addr[2]), 
	.SE(n1932), 
	.RN(tx_rst), 
	.Q(FIFO_u_U5_RD_PTR_BIN_3_), 
	.D(FIFO_u_U5_RD_PTR_GRAY_NEXT[3]), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M FIFO_u_U3_RDptr_sync_s0_reg_3_ (.SI(FIFO_u_r_ptr_synch[2]), 
	.SE(n1943), 
	.RN(ref_rst), 
	.Q(FIFO_u_U3_RDptr_sync_s0[3]), 
	.D(FIFO_u_U5_RD_PTR_BIN_3_), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M FIFO_u_U4_full_reg (.SI(FIFO_u_w_ptr[2]), 
	.SE(SE), 
	.RN(ref_rst), 
	.Q(fifo_full), 
	.D(eq_x_37_n25), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M FIFO_u_U4_WR_PTR_BIN_reg_0_ (.SI(FIFO_u_U1_mem[7]), 
	.SE(n1918), 
	.RN(ref_rst), 
	.Q(FIFO_u_w_addr[0]), 
	.D(FIFO_u_U4_WR_PTR_BIN_NEXT[0]), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M FIFO_u_U4_WR_PTR_BIN_reg_1_ (.SI(FIFO_u_w_addr[0]), 
	.SE(n1918), 
	.RN(ref_rst), 
	.Q(FIFO_u_w_addr[1]), 
	.D(FIFO_u_U4_WR_PTR_BIN_NEXT[1]), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M FIFO_u_U4_WR_PTR_BIN_reg_2_ (.SI(FIFO_u_w_addr[1]), 
	.SE(n1930), 
	.RN(ref_rst), 
	.Q(FIFO_u_w_addr[2]), 
	.D(FIFO_u_U4_WR_PTR_BIN_NEXT[2]), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M FIFO_u_U4_WR_PTR_BIN_reg_3_ (.SI(FIFO_u_w_addr[2]), 
	.SE(n1929), 
	.RN(ref_rst), 
	.Q(FIFO_u_U4_WR_PTR_BIN_3_), 
	.D(FIFO_u_U4_WR_PTR_GRAY_NEXT[3]), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M FIFO_u_U2_WRptr_sync_s0_reg_3_ (.SI(FIFO_u_w_ptr_synch[2]), 
	.SE(n1940), 
	.RN(tx_rst), 
	.Q(FIFO_u_U2_WRptr_sync_s0[3]), 
	.D(FIFO_u_U4_WR_PTR_BIN_3_), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M FIFO_u_U4_WR_PTR_GRAY_reg_1_ (.SI(FIFO_u_w_ptr[0]), 
	.SE(SE), 
	.RN(ref_rst), 
	.Q(FIFO_u_w_ptr[1]), 
	.D(FIFO_u_U4_WR_PTR_GRAY_NEXT[1]), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M FIFO_u_U2_WRptr_sync_s0_reg_1_ (.SI(FIFO_u_w_ptr_synch[0]), 
	.SE(n1943), 
	.RN(tx_rst), 
	.Q(FIFO_u_U2_WRptr_sync_s0[1]), 
	.D(FIFO_u_w_ptr[1]), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M FIFO_u_U4_WR_PTR_GRAY_reg_2_ (.SI(FIFO_u_w_ptr[1]), 
	.SE(n1930), 
	.RN(ref_rst), 
	.Q(FIFO_u_w_ptr[2]), 
	.D(FIFO_u_U4_WR_PTR_GRAY_NEXT[2]), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M FIFO_u_U2_WRptr_sync_s0_reg_2_ (.SI(FIFO_u_w_ptr_synch[1]), 
	.SE(n1937), 
	.RN(tx_rst), 
	.Q(FIFO_u_U2_WRptr_sync_s0[2]), 
	.D(FIFO_u_w_ptr[2]), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M FIFO_u_U4_WR_PTR_GRAY_reg_0_ (.SI(FIFO_u_U4_WR_PTR_BIN_3_), 
	.SE(SE), 
	.RN(ref_rst), 
	.Q(FIFO_u_w_ptr[0]), 
	.D(FIFO_u_U4_WR_PTR_GRAY_NEXT[0]), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M FIFO_u_U2_WRptr_sync_s0_reg_0_ (.SI(FIFO_u_U1_mem[16]), 
	.SE(n1943), 
	.RN(tx_rst), 
	.Q(FIFO_u_U2_WRptr_sync_s0[0]), 
	.D(FIFO_u_w_ptr[0]), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U4_parity_reg_reg (.SI(parity_error), 
	.SE(n1928), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_U4_parity_reg), 
	.D(n663), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U4_count_reg_0_ (.SI(rx_p_out[7]), 
	.SE(n1939), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_U4_count[0]), 
	.D(n662), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U4_count_reg_3_ (.SI(UART_TX_RX_U0_UART_RX_U4_count[2]), 
	.SE(n1933), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_U4_count[3]), 
	.D(n659), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U4_count_reg_1_ (.SI(UART_TX_RX_U0_UART_RX_U4_count[0]), 
	.SE(n1929), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_U4_count[1]), 
	.D(n661), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U4_count_reg_2_ (.SI(UART_TX_RX_U0_UART_RX_U4_count[1]), 
	.SE(n1928), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_U4_count[2]), 
	.D(n660), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U4_par_done_reg (.SI(UART_TX_RX_U0_UART_RX_U4_count[3]), 
	.SE(FE_OFN15_SE), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_par_done), 
	.D(UART_TX_RX_U0_UART_RX_U4_par_done_next), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U7_c_state_reg_2_ (.SI(UART_TX_RX_U0_UART_RX_U7_c_state[1]), 
	.SE(FE_OFN15_SE), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_U7_c_state[2]), 
	.D(n881), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U7_c_state_reg_1_ (.SI(UART_TX_RX_U0_UART_RX_U7_c_state[0]), 
	.SE(FE_OFN15_SE), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_U7_c_state[1]), 
	.D(n882), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U2_Sample_Valid_reg (.SI(Rx2SysCtrl_pulse_out), 
	.SE(n1923), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_samp_valid), 
	.D(UART_TX_RX_U0_UART_RX_U2_N39), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U6_stp_done_reg (.SI(UART_TX_RX_U0_UART_RX_strt_glitch), 
	.SE(n1944), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_stp_done), 
	.D(UART_TX_RX_U0_UART_RX_stp_chk_en), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U2_s1_reg (.SI(UART_TX_RX_U0_UART_RX_U2_s0), 
	.SE(n1932), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_U2_s1), 
	.D(n666), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U2_s0_reg (.SI(UART_TX_RX_U0_UART_RX_samp_b), 
	.SE(n1929), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_U2_s0), 
	.D(n665), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Edge_cnt_reg_0_ (.SI(UART_TX_RX_U0_UART_RX_bit_cnt[3]), 
	.SE(n1926), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_edge_cnt[0]), 
	.D(UART_TX_RX_U0_UART_RX_U1_N111), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Edge_cnt_reg_1_ (.SI(UART_TX_RX_U0_UART_RX_edge_cnt[0]), 
	.SE(n1939), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_edge_cnt[1]), 
	.D(UART_TX_RX_U0_UART_RX_U1_N112), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Edge_cnt_reg_2_ (.SI(UART_TX_RX_U0_UART_RX_edge_cnt[1]), 
	.SE(n1933), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_edge_cnt[2]), 
	.D(UART_TX_RX_U0_UART_RX_U1_N113), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Edge_cnt_reg_3_ (.SI(UART_TX_RX_U0_UART_RX_edge_cnt[2]), 
	.SE(n1930), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_edge_cnt[3]), 
	.D(UART_TX_RX_U0_UART_RX_U1_N114), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Edge_cnt_reg_4_ (.SI(UART_TX_RX_U0_UART_RX_edge_cnt[3]), 
	.SE(n1944), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_edge_cnt[4]), 
	.D(UART_TX_RX_U0_UART_RX_U1_N115), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Edge_cnt_reg_5_ (.SI(UART_TX_RX_U0_UART_RX_edge_cnt[4]), 
	.SE(n1940), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_edge_cnt[5]), 
	.D(UART_TX_RX_U0_UART_RX_U1_N116), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Bit_cnt_reg_0_ (.SI(n1904__Exclude_0_NET), 
	.SE(n1934), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_bit_cnt[0]), 
	.D(n658), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Bit_cnt_reg_3_ (.SI(UART_TX_RX_U0_UART_RX_bit_cnt[2]), 
	.SE(n1929), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_bit_cnt[3]), 
	.D(n655), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Bit_cnt_reg_1_ (.SI(UART_TX_RX_U0_UART_RX_bit_cnt[0]), 
	.SE(n1930), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_bit_cnt[1]), 
	.D(n657), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Bit_cnt_reg_2_ (.SI(UART_TX_RX_U0_UART_RX_bit_cnt[1]), 
	.SE(FE_OFN15_SE), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_bit_cnt[2]), 
	.D(n656), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U7_c_state_reg_0_ (.SI(UART_TX_RX_U0_UART_RX_stp_done), 
	.SE(n1918), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_U7_c_state[0]), 
	.D(UART_TX_RX_U0_UART_RX_U7_n_state_0_), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U5_strt_glitch_reg (.SI(UART_TX_RX_U0_UART_RX_U4_parity_reg), 
	.SE(n1929), 
	.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_strt_glitch), 
	.D(UART_TX_RX_U0_UART_RX_U5_N4), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_2__1_ (.SI(reg2[0]), 
	.SE(n1922), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg2[1]), 
	.D(n770), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_2__2_ (.SI(reg2[1]), 
	.SE(n1937), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg2[2]), 
	.D(n752), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_2__3_ (.SI(reg2[2]), 
	.SE(n1933), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg2[3]), 
	.D(n735), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_2__4_ (.SI(reg2[3]), 
	.SE(n1944), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg2[4]), 
	.D(n718), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_2__5_ (.SI(reg2[4]), 
	.SE(n1922), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg2[5]), 
	.D(n701), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_2__6_ (.SI(reg2[5]), 
	.SE(n1940), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg2[6]), 
	.D(n684), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX4M Regfile_u_reg_file_reg_1__0_ (.SI(FE_OFN17_reg0_7_), 
	.SE(n1934), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg1[0]), 
	.D(n786), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_5__0_ (.SI(Regfile_u_reg_file_4__7_), 
	.SE(n1926), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_5__0_), 
	.D(n867), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_5__1_ (.SI(Regfile_u_reg_file_5__0_), 
	.SE(n1944), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_5__1_), 
	.D(n773), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_5__2_ (.SI(Regfile_u_reg_file_5__1_), 
	.SE(n1940), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_5__2_), 
	.D(n755), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_5__3_ (.SI(Regfile_u_reg_file_5__2_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_5__3_), 
	.D(n738), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_5__4_ (.SI(Regfile_u_reg_file_5__3_), 
	.SE(n1942), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_5__4_), 
	.D(n721), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_5__5_ (.SI(Regfile_u_reg_file_5__4_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_5__5_), 
	.D(n704), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_5__6_ (.SI(Regfile_u_reg_file_5__5_), 
	.SE(n1928), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_5__6_), 
	.D(n687), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_5__7_ (.SI(Regfile_u_reg_file_5__6_), 
	.SE(n1926), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_5__7_), 
	.D(n670), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_4__0_ (.SI(Regfile_u_n17), 
	.SE(n1930), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_4__0_), 
	.D(n866), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_4__1_ (.SI(Regfile_u_reg_file_4__0_), 
	.SE(n1923), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_4__1_), 
	.D(n772), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_4__2_ (.SI(Regfile_u_reg_file_4__1_), 
	.SE(n1939), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_4__2_), 
	.D(n754), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_4__3_ (.SI(Regfile_u_reg_file_4__2_), 
	.SE(n1934), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_4__3_), 
	.D(n737), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_4__4_ (.SI(Regfile_u_reg_file_4__3_), 
	.SE(n1944), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_4__4_), 
	.D(n720), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_4__6_ (.SI(SI[1]), 
	.SE(n1926), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_4__6_), 
	.D(n686), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_4__7_ (.SI(Regfile_u_reg_file_4__6_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_4__7_), 
	.D(n669), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_3__0_ (.SI(reg2[7]), 
	.SE(n1944), 
	.RN(ref_rst), 
	.Q(reg3[0]), 
	.D(n865), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_3__1_ (.SI(reg3[0]), 
	.SE(n1942), 
	.RN(ref_rst), 
	.Q(reg3[1]), 
	.D(n771), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_3__2_ (.SI(reg3[1]), 
	.SE(n1937), 
	.RN(ref_rst), 
	.Q(reg3[2]), 
	.D(n753), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_3__3_ (.SI(reg3[2]), 
	.SE(n1932), 
	.RN(ref_rst), 
	.Q(reg3[3]), 
	.D(n736), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_3__4_ (.SI(reg3[3]), 
	.SE(n1923), 
	.RN(ref_rst), 
	.Q(reg3[4]), 
	.D(n719), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_3__6_ (.SI(reg3[5]), 
	.SE(n1942), 
	.RN(ref_rst), 
	.Q(Regfile_u_n18), 
	.D(n685), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_3__7_ (.SI(Regfile_u_n18), 
	.SE(FE_OFN15_SE), 
	.RN(ref_rst), 
	.Q(Regfile_u_n17), 
	.D(n668), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_7__0_ (.SI(Regfile_u_reg_file_6__7_), 
	.SE(n1918), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_7__0_), 
	.D(n869), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_7__1_ (.SI(Regfile_u_reg_file_7__0_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_7__1_), 
	.D(n775), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_7__2_ (.SI(Regfile_u_reg_file_7__1_), 
	.SE(n1929), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_7__2_), 
	.D(n757), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_7__3_ (.SI(Regfile_u_reg_file_7__2_), 
	.SE(n1940), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_7__3_), 
	.D(n740), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_7__4_ (.SI(Regfile_u_reg_file_7__3_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_7__4_), 
	.D(n723), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_7__5_ (.SI(Regfile_u_reg_file_7__4_), 
	.SE(n1943), 
	.RN(ref_rst), 
	.Q(Regfile_u_reg_file_7__5_), 
	.D(n706), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_7__6_ (.SI(Regfile_u_reg_file_7__5_), 
	.SE(n1926), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_7__6_), 
	.D(n689), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_7__7_ (.SI(Regfile_u_reg_file_7__6_), 
	.SE(n1937), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_7__7_), 
	.D(n672), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_6__0_ (.SI(Regfile_u_reg_file_5__7_), 
	.SE(n1932), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_6__0_), 
	.D(n868), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_6__1_ (.SI(Regfile_u_reg_file_6__0_), 
	.SE(n1930), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_6__1_), 
	.D(n774), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_6__2_ (.SI(Regfile_u_reg_file_6__1_), 
	.SE(n1928), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_6__2_), 
	.D(n756), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_6__3_ (.SI(Regfile_u_reg_file_6__2_), 
	.SE(n1939), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_6__3_), 
	.D(n739), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_6__4_ (.SI(Regfile_u_reg_file_6__3_), 
	.SE(n1933), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_6__4_), 
	.D(n722), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_6__5_ (.SI(Regfile_u_reg_file_6__4_), 
	.SE(n1923), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_6__5_), 
	.D(n705), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_6__6_ (.SI(Regfile_u_reg_file_6__5_), 
	.SE(n1930), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_6__6_), 
	.D(n688), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_6__7_ (.SI(Regfile_u_reg_file_6__6_), 
	.SE(n1922), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_6__7_), 
	.D(n671), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_9__0_ (.SI(Regfile_u_reg_file_8__7_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_9__0_), 
	.D(n871), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_9__1_ (.SI(Regfile_u_reg_file_9__0_), 
	.SE(n1923), 
	.RN(ref_rst), 
	.Q(Regfile_u_reg_file_9__1_), 
	.D(n777), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_9__2_ (.SI(Regfile_u_reg_file_9__1_), 
	.SE(n1943), 
	.RN(ref_rst), 
	.Q(Regfile_u_reg_file_9__2_), 
	.D(n759), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_9__3_ (.SI(Regfile_u_reg_file_9__2_), 
	.SE(FE_OFN15_SE), 
	.RN(ref_rst), 
	.Q(Regfile_u_reg_file_9__3_), 
	.D(n742), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_9__4_ (.SI(Regfile_u_reg_file_9__3_), 
	.SE(n1932), 
	.RN(ref_rst), 
	.Q(Regfile_u_reg_file_9__4_), 
	.D(n725), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_9__5_ (.SI(Regfile_u_reg_file_9__4_), 
	.SE(n1928), 
	.RN(ref_rst), 
	.Q(Regfile_u_reg_file_9__5_), 
	.D(n708), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_9__6_ (.SI(Regfile_u_reg_file_9__5_), 
	.SE(n1943), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_9__6_), 
	.D(n691), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_9__7_ (.SI(Regfile_u_reg_file_9__6_), 
	.SE(n1939), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_9__7_), 
	.D(n674), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_8__0_ (.SI(Regfile_u_reg_file_7__7_), 
	.SE(n1933), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_8__0_), 
	.D(n870), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_8__1_ (.SI(Regfile_u_reg_file_8__0_), 
	.SE(n1926), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_8__1_), 
	.D(n776), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_8__2_ (.SI(Regfile_u_reg_file_8__1_), 
	.SE(n1943), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_8__2_), 
	.D(n758), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_8__3_ (.SI(Regfile_u_reg_file_8__2_), 
	.SE(n1940), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_8__3_), 
	.D(n741), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_8__4_ (.SI(Regfile_u_reg_file_8__3_), 
	.SE(n1934), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_8__4_), 
	.D(n724), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_8__5_ (.SI(Regfile_u_reg_file_8__4_), 
	.SE(n1929), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_8__5_), 
	.D(n707), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_8__6_ (.SI(Regfile_u_reg_file_8__5_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_8__6_), 
	.D(n690), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_8__7_ (.SI(Regfile_u_reg_file_8__6_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_8__7_), 
	.D(n673), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_13__0_ (.SI(Regfile_u_reg_file_12__7_), 
	.SE(n1918), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_13__0_), 
	.D(n875), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_13__1_ (.SI(Regfile_u_reg_file_13__0_), 
	.SE(n1930), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_13__1_), 
	.D(n781), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_13__2_ (.SI(Regfile_u_reg_file_13__1_), 
	.SE(n1922), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_13__2_), 
	.D(n763), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_13__3_ (.SI(Regfile_u_reg_file_13__2_), 
	.SE(n1937), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_13__3_), 
	.D(n746), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_13__4_ (.SI(Regfile_u_reg_file_13__3_), 
	.SE(n1933), 
	.RN(ref_rst), 
	.Q(Regfile_u_reg_file_13__4_), 
	.D(n729), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_13__5_ (.SI(Regfile_u_reg_file_13__4_), 
	.SE(n1928), 
	.RN(ref_rst), 
	.Q(Regfile_u_reg_file_13__5_), 
	.D(n712), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_13__6_ (.SI(Regfile_u_reg_file_13__5_), 
	.SE(n1930), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_13__6_), 
	.D(n695), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_13__7_ (.SI(Regfile_u_reg_file_13__6_), 
	.SE(n1940), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_13__7_), 
	.D(n678), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_12__0_ (.SI(Regfile_u_reg_file_11__7_), 
	.SE(n1934), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_12__0_), 
	.D(n874), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_12__1_ (.SI(Regfile_u_reg_file_12__0_), 
	.SE(n1928), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_12__1_), 
	.D(n780), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_12__2_ (.SI(Regfile_u_reg_file_12__1_), 
	.SE(n1929), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_12__2_), 
	.D(n762), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_12__3_ (.SI(Regfile_u_reg_file_12__2_), 
	.SE(n1929), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_12__3_), 
	.D(n745), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_12__4_ (.SI(Regfile_u_reg_file_12__3_), 
	.SE(n1926), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_12__4_), 
	.D(n728), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_12__5_ (.SI(Regfile_u_reg_file_12__4_), 
	.SE(n1922), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_12__5_), 
	.D(n711), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_12__6_ (.SI(Regfile_u_reg_file_12__5_), 
	.SE(n1929), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_12__6_), 
	.D(n694), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_12__7_ (.SI(Regfile_u_reg_file_12__6_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_12__7_), 
	.D(n677), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_11__0_ (.SI(Regfile_u_reg_file_10__7_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_11__0_), 
	.D(n873), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_11__1_ (.SI(Regfile_u_reg_file_11__0_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_11__1_), 
	.D(n779), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_11__2_ (.SI(Regfile_u_reg_file_11__1_), 
	.SE(n1942), 
	.RN(ref_rst), 
	.Q(Regfile_u_reg_file_11__2_), 
	.D(n761), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_11__3_ (.SI(Regfile_u_reg_file_11__2_), 
	.SE(n1939), 
	.RN(ref_rst), 
	.Q(Regfile_u_reg_file_11__3_), 
	.D(n744), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_11__4_ (.SI(Regfile_u_reg_file_11__3_), 
	.SE(n1934), 
	.RN(ref_rst), 
	.Q(Regfile_u_reg_file_11__4_), 
	.D(n727), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_11__5_ (.SI(Regfile_u_reg_file_11__4_), 
	.SE(n1944), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_11__5_), 
	.D(n710), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_11__6_ (.SI(Regfile_u_reg_file_11__5_), 
	.SE(n1926), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_11__6_), 
	.D(n693), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_11__7_ (.SI(Regfile_u_reg_file_11__6_), 
	.SE(n1939), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_11__7_), 
	.D(n676), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_10__0_ (.SI(Regfile_u_reg_file_9__7_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_10__0_), 
	.D(n872), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_10__1_ (.SI(Regfile_u_reg_file_10__0_), 
	.SE(n1930), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_10__1_), 
	.D(n778), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_10__2_ (.SI(Regfile_u_reg_file_10__1_), 
	.SE(n1942), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_10__2_), 
	.D(n760), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_10__3_ (.SI(Regfile_u_reg_file_10__2_), 
	.SE(n1937), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_10__3_), 
	.D(n743), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_10__4_ (.SI(Regfile_u_reg_file_10__3_), 
	.SE(n1932), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_10__4_), 
	.D(n726), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_10__5_ (.SI(Regfile_u_reg_file_10__4_), 
	.SE(n1922), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_10__5_), 
	.D(n709), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_10__6_ (.SI(Regfile_u_reg_file_10__5_), 
	.SE(n1930), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_10__6_), 
	.D(n692), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_10__7_ (.SI(Regfile_u_reg_file_10__6_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_10__7_), 
	.D(n675), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_15__0_ (.SI(Regfile_u_reg_file_14__7_), 
	.SE(n1918), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_15__0_), 
	.D(n877), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_15__1_ (.SI(Regfile_u_reg_file_15__0_), 
	.SE(n1922), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_15__1_), 
	.D(n783), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_15__2_ (.SI(Regfile_u_reg_file_15__1_), 
	.SE(n1944), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_15__2_), 
	.D(n765), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_15__3_ (.SI(Regfile_u_reg_file_15__2_), 
	.SE(n1940), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_15__3_), 
	.D(n748), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_15__4_ (.SI(Regfile_u_reg_file_15__3_), 
	.SE(n1918), 
	.RN(ref_rst), 
	.Q(Regfile_u_reg_file_15__4_), 
	.D(n731), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_15__5_ (.SI(Regfile_u_reg_file_15__4_), 
	.SE(n1942), 
	.RN(ref_rst), 
	.Q(Regfile_u_reg_file_15__5_), 
	.D(n714), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_15__6_ (.SI(Regfile_u_reg_file_15__5_), 
	.SE(n1944), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_15__6_), 
	.D(n697), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_15__7_ (.SI(Regfile_u_reg_file_15__6_), 
	.SE(n1937), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_15__7_), 
	.D(n680), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_14__0_ (.SI(Regfile_u_reg_file_13__7_), 
	.SE(n1932), 
	.RN(FE_OFN1_ref_rst), 
	.Q(Regfile_u_reg_file_14__0_), 
	.D(n876), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_14__1_ (.SI(Regfile_u_reg_file_14__0_), 
	.SE(n1926), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_14__1_), 
	.D(n782), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_14__2_ (.SI(Regfile_u_reg_file_14__1_), 
	.SE(n1922), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_14__2_), 
	.D(n764), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_14__3_ (.SI(Regfile_u_reg_file_14__2_), 
	.SE(n1939), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_14__3_), 
	.D(n747), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_14__4_ (.SI(Regfile_u_reg_file_14__3_), 
	.SE(n1933), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_14__4_), 
	.D(n730), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_14__5_ (.SI(Regfile_u_reg_file_14__4_), 
	.SE(n1923), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_14__5_), 
	.D(n713), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_14__6_ (.SI(Regfile_u_reg_file_14__5_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_14__6_), 
	.D(n696), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_14__7_ (.SI(Regfile_u_reg_file_14__6_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN0_ref_rst), 
	.Q(Regfile_u_reg_file_14__7_), 
	.D(n679), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M Regfile_u_RdData_reg_0_ (.SI(rd_data_vld), 
	.SE(FE_OFN15_SE), 
	.RN(ref_rst), 
	.Q(rd_data[0]), 
	.D(n784), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_RdData_reg_1_ (.SI(rd_data[0]), 
	.SE(n1930), 
	.RN(ref_rst), 
	.Q(rd_data[1]), 
	.D(n766), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M ALU_u_ALU_OUT_reg_1_ (.SI(alu_out[0]), 
	.SE(n1943), 
	.RN(FE_OFN1_ref_rst), 
	.Q(alu_out[1]), 
	.D(ALU_u_ALU_OUT_Comb[1]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_1_ (.SI(UART_TX_RX_U0_UART_TX_U1_mem[0]), 
	.SE(n1937), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_U1_mem[1]), 
	.D(n787), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M Regfile_u_RdData_reg_2_ (.SI(rd_data[1]), 
	.SE(n1932), 
	.RN(FE_OFN1_ref_rst), 
	.Q(rd_data[2]), 
	.D(n749), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M ALU_u_ALU_OUT_reg_2_ (.SI(alu_out[1]), 
	.SE(n1942), 
	.RN(FE_OFN1_ref_rst), 
	.Q(alu_out[2]), 
	.D(ALU_u_ALU_OUT_Comb[2]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_2_ (.SI(UART_TX_RX_U0_UART_TX_U1_mem[1]), 
	.SE(n1930), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_U1_mem[2]), 
	.D(n789), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M Regfile_u_RdData_reg_3_ (.SI(rd_data[2]), 
	.SE(n1939), 
	.RN(FE_OFN1_ref_rst), 
	.Q(rd_data[3]), 
	.D(n732), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M ALU_u_ALU_OUT_reg_3_ (.SI(alu_out[2]), 
	.SE(n1933), 
	.RN(FE_OFN1_ref_rst), 
	.Q(alu_out[3]), 
	.D(ALU_u_ALU_OUT_Comb[3]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_3_ (.SI(UART_TX_RX_U0_UART_TX_U1_mem[2]), 
	.SE(n1942), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_U1_mem[3]), 
	.D(n791), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M Regfile_u_RdData_reg_4_ (.SI(rd_data[3]), 
	.SE(n1923), 
	.RN(FE_OFN1_ref_rst), 
	.Q(rd_data[4]), 
	.D(n715), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M ALU_u_ALU_OUT_reg_4_ (.SI(alu_out[3]), 
	.SE(n1940), 
	.RN(FE_OFN1_ref_rst), 
	.Q(alu_out[4]), 
	.D(ALU_u_ALU_OUT_Comb[4]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_4_ (.SI(UART_TX_RX_U0_UART_TX_U1_mem[3]), 
	.SE(n1934), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_U1_mem[4]), 
	.D(n793), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M Regfile_u_RdData_reg_5_ (.SI(rd_data[4]), 
	.SE(n1943), 
	.RN(FE_OFN1_ref_rst), 
	.Q(rd_data[5]), 
	.D(n698), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M ALU_u_ALU_OUT_reg_5_ (.SI(alu_out[4]), 
	.SE(n1923), 
	.RN(FE_OFN1_ref_rst), 
	.Q(alu_out[5]), 
	.D(ALU_u_ALU_OUT_Comb[5]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_5_ (.SI(UART_TX_RX_U0_UART_TX_U1_mem[4]), 
	.SE(SE), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_U1_mem[5]), 
	.D(n795), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M Regfile_u_RdData_reg_6_ (.SI(rd_data[5]), 
	.SE(n1918), 
	.RN(FE_OFN1_ref_rst), 
	.Q(rd_data[6]), 
	.D(n681), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M ALU_u_ALU_OUT_reg_6_ (.SI(alu_out[5]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_ref_rst), 
	.Q(alu_out[6]), 
	.D(ALU_u_ALU_OUT_Comb[6]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_6_ (.SI(UART_TX_RX_U0_UART_TX_U1_mem[5]), 
	.SE(n1928), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_U1_mem[6]), 
	.D(n797), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M ALU_u_ALU_OUT_reg_7_ (.SI(alu_out[6]), 
	.SE(n1937), 
	.RN(FE_OFN1_ref_rst), 
	.Q(alu_out[7]), 
	.D(ALU_u_ALU_OUT_Comb[7]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M ALU_u_ALU_OUT_reg_8_ (.SI(alu_out[7]), 
	.SE(n1933), 
	.RN(FE_OFN1_ref_rst), 
	.Q(alu_out[8]), 
	.D(ALU_u_ALU_OUT_Comb[8]), 
	.CK(alu_cg__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_0_ (.SI(UART_TX_RX_U0_UART_TX_U1_loading), 
	.SE(n1928), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_U1_mem[0]), 
	.D(n801), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M Regfile_u_RdData_reg_7_ (.SI(rd_data[6]), 
	.SE(n1926), 
	.RN(FE_OFN0_ref_rst), 
	.Q(rd_data[7]), 
	.D(n645), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_7_ (.SI(UART_TX_RX_U0_UART_TX_U1_mem[6]), 
	.SE(n1940), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_U1_mem[7]), 
	.D(n799), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_ser_data_reg (.SI(UART_TX_RX_U0_UART_TX_U1_mem[7]), 
	.SE(n1934), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_ser_data), 
	.D(n883), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_TX_U3_par_bit_reg (.SI(n1903), 
	.SE(n1930), 
	.RN(tx_rst), 
	.Q(UART_TX_RX_U0_UART_TX_par_bit), 
	.D(n769), 
	.CK(tx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_7_ (.SI(rx_p_out[6]), 
	.SE(n1929), 
	.RN(rx_rst), 
	.Q(rx_p_out[7]), 
	.D(n643), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_6_ (.SI(rx_p_out[5]), 
	.SE(n1942), 
	.RN(rx_rst), 
	.Q(rx_p_out[6]), 
	.D(n642), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_5_ (.SI(rx_p_out[4]), 
	.SE(FE_OFN15_SE), 
	.RN(rx_rst), 
	.Q(rx_p_out[5]), 
	.D(n641), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_4_ (.SI(rx_p_out[3]), 
	.SE(n1943), 
	.RN(rx_rst), 
	.Q(rx_p_out[4]), 
	.D(n640), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_3_ (.SI(rx_p_out[2]), 
	.SE(n1930), 
	.RN(rx_rst), 
	.Q(rx_p_out[3]), 
	.D(n639), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_2_ (.SI(rx_p_out[1]), 
	.SE(FE_OFN15_SE), 
	.RN(rx_rst), 
	.Q(rx_p_out[2]), 
	.D(n638), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_1_ (.SI(rx_p_out[0]), 
	.SE(n1918), 
	.RN(rx_rst), 
	.Q(rx_p_out[1]), 
	.D(n637), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_0_ (.SI(UART_TX_RX_U0_UART_RX_U2_s1), 
	.SE(n1943), 
	.RN(rx_rst), 
	.Q(rx_p_out[0]), 
	.D(n636), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M Rx2SysCtrl_sync_bus_reg_0_ (.SI(SI[0]), 
	.SE(n1928), 
	.RN(ref_rst), 
	.Q(synced_p_data[0]), 
	.D(n635), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Rx2SysCtrl_sync_bus_reg_7_ (.SI(synced_p_data[6]), 
	.SE(n1939), 
	.RN(ref_rst), 
	.Q(synced_p_data[7]), 
	.D(n634), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Rx2SysCtrl_sync_bus_reg_1_ (.SI(synced_p_data[0]), 
	.SE(n1934), 
	.RN(ref_rst), 
	.Q(synced_p_data[1]), 
	.D(n633), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Rx2SysCtrl_sync_bus_reg_2_ (.SI(synced_p_data[1]), 
	.SE(n1929), 
	.RN(ref_rst), 
	.Q(synced_p_data[2]), 
	.D(n632), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Rx2SysCtrl_sync_bus_reg_3_ (.SI(synced_p_data[2]), 
	.SE(n1928), 
	.RN(ref_rst), 
	.Q(synced_p_data[3]), 
	.D(n631), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Rx2SysCtrl_sync_bus_reg_4_ (.SI(synced_p_data[3]), 
	.SE(n1943), 
	.RN(ref_rst), 
	.Q(synced_p_data[4]), 
	.D(n630), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Rx2SysCtrl_sync_bus_reg_5_ (.SI(synced_p_data[4]), 
	.SE(FE_OFN15_SE), 
	.RN(ref_rst), 
	.Q(synced_p_data[5]), 
	.D(n629), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Rx2SysCtrl_sync_bus_reg_6_ (.SI(synced_p_data[5]), 
	.SE(n1926), 
	.RN(ref_rst), 
	.Q(synced_p_data[6]), 
	.D(n628), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_wr_addr_reg_0_ (.SI(sys_ctrl_u_reg3_cfg), 
	.SE(n1922), 
	.RN(ref_rst), 
	.Q(sys_ctrl_u_wr_addr[0]), 
	.D(n627), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_wr_addr_reg_3_ (.SI(sys_ctrl_u_wr_addr[2]), 
	.SE(n1940), 
	.RN(ref_rst), 
	.Q(sys_ctrl_u_wr_addr[3]), 
	.D(n626), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_wr_addr_reg_2_ (.SI(sys_ctrl_u_wr_addr[1]), 
	.SE(n1932), 
	.RN(ref_rst), 
	.Q(sys_ctrl_u_wr_addr[2]), 
	.D(n625), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_wr_addr_reg_1_ (.SI(sys_ctrl_u_wr_addr[0]), 
	.SE(n1922), 
	.RN(ref_rst), 
	.Q(sys_ctrl_u_wr_addr[1]), 
	.D(n624), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_frame2_reg_1_ (.SI(sys_ctrl_u_frame2[0]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_ref_rst), 
	.Q(sys_ctrl_u_frame2[1]), 
	.D(n623), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_frame2_reg_2_ (.SI(sys_ctrl_u_frame2[1]), 
	.SE(n1918), 
	.RN(FE_OFN1_ref_rst), 
	.Q(sys_ctrl_u_frame2[2]), 
	.D(n622), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_frame2_reg_3_ (.SI(sys_ctrl_u_frame2[2]), 
	.SE(n1918), 
	.RN(FE_OFN1_ref_rst), 
	.Q(sys_ctrl_u_frame2[3]), 
	.D(n621), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_frame2_reg_4_ (.SI(sys_ctrl_u_frame2[3]), 
	.SE(n1930), 
	.RN(FE_OFN1_ref_rst), 
	.Q(sys_ctrl_u_frame2[4]), 
	.D(n620), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_frame2_reg_5_ (.SI(sys_ctrl_u_frame2[4]), 
	.SE(n1944), 
	.RN(FE_OFN1_ref_rst), 
	.Q(sys_ctrl_u_frame2[5]), 
	.D(n619), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_frame2_reg_6_ (.SI(sys_ctrl_u_frame2[5]), 
	.SE(n1940), 
	.RN(FE_OFN1_ref_rst), 
	.Q(sys_ctrl_u_frame2[6]), 
	.D(n618), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_frame2_reg_7_ (.SI(sys_ctrl_u_frame2[6]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_ref_rst), 
	.Q(sys_ctrl_u_frame2[7]), 
	.D(n617), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M sys_ctrl_u_frame2_reg_0_ (.SI(sys_ctrl_u_current_state[3]), 
	.SE(n1929), 
	.RN(FE_OFN1_ref_rst), 
	.Q(sys_ctrl_u_frame2[0]), 
	.D(n616), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_7__1_ (.SI(FIFO_u_U1_mem[0]), 
	.SE(n1932), 
	.Q(FIFO_u_U1_mem[1]), 
	.D(n851), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_6__1_ (.SI(FIFO_u_U1_mem[8]), 
	.SE(n1930), 
	.Q(FIFO_u_U1_mem[9]), 
	.D(n843), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_5__1_ (.SI(SI[2]), 
	.SE(n1943), 
	.Q(FIFO_u_U1_mem[17]), 
	.D(n835), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_4__1_ (.SI(FIFO_u_U1_mem[24]), 
	.SE(n1933), 
	.Q(FIFO_u_U1_mem[25]), 
	.D(n827), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_3__1_ (.SI(FIFO_u_U1_mem[32]), 
	.SE(n1939), 
	.Q(FIFO_u_U1_mem[33]), 
	.D(n819), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_2__1_ (.SI(FIFO_u_U1_mem[40]), 
	.SE(n1922), 
	.Q(FIFO_u_U1_mem[41]), 
	.D(n811), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_1__1_ (.SI(FIFO_u_U1_mem[48]), 
	.SE(n1923), 
	.Q(FIFO_u_U1_mem[49]), 
	.D(n803), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_0__1_ (.SI(FIFO_u_U1_mem[56]), 
	.SE(n1934), 
	.Q(FIFO_u_U1_mem[57]), 
	.D(n788), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_7__2_ (.SI(FIFO_u_U1_mem[1]), 
	.SE(n1939), 
	.Q(FIFO_u_U1_mem[2]), 
	.D(n852), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_6__2_ (.SI(FIFO_u_U1_mem[9]), 
	.SE(SE), 
	.Q(FIFO_u_U1_mem[10]), 
	.D(n844), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_5__2_ (.SI(FIFO_u_U1_mem[17]), 
	.SE(n1923), 
	.Q(FIFO_u_U1_mem[18]), 
	.D(n836), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_4__2_ (.SI(FIFO_u_U1_mem[25]), 
	.SE(n1918), 
	.Q(FIFO_u_U1_mem[26]), 
	.D(n828), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_3__2_ (.SI(FIFO_u_U1_mem[33]), 
	.SE(n1937), 
	.Q(FIFO_u_U1_mem[34]), 
	.D(n820), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_2__2_ (.SI(FIFO_u_U1_mem[41]), 
	.SE(n1944), 
	.Q(FIFO_u_U1_mem[42]), 
	.D(n812), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_1__2_ (.SI(FIFO_u_U1_mem[49]), 
	.SE(n1930), 
	.Q(FIFO_u_U1_mem[50]), 
	.D(n804), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_0__2_ (.SI(FIFO_u_U1_mem[57]), 
	.SE(n1933), 
	.Q(FIFO_u_U1_mem[58]), 
	.D(n790), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_7__3_ (.SI(FIFO_u_U1_mem[2]), 
	.SE(FE_OFN15_SE), 
	.Q(FIFO_u_U1_mem[3]), 
	.D(n853), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_6__3_ (.SI(FIFO_u_U1_mem[10]), 
	.SE(n1928), 
	.Q(FIFO_u_U1_mem[11]), 
	.D(n845), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_5__3_ (.SI(FIFO_u_U1_mem[18]), 
	.SE(n1942), 
	.Q(FIFO_u_U1_mem[19]), 
	.D(n837), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_4__3_ (.SI(FIFO_u_U1_mem[26]), 
	.SE(n1934), 
	.Q(FIFO_u_U1_mem[27]), 
	.D(n829), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_3__3_ (.SI(FIFO_u_U1_mem[34]), 
	.SE(n1940), 
	.Q(FIFO_u_U1_mem[35]), 
	.D(n821), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_2__3_ (.SI(FIFO_u_U1_mem[42]), 
	.SE(n1929), 
	.Q(FIFO_u_U1_mem[43]), 
	.D(n813), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_1__3_ (.SI(FIFO_u_U1_mem[50]), 
	.SE(SE), 
	.Q(FIFO_u_U1_mem[51]), 
	.D(n805), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_0__3_ (.SI(FIFO_u_U1_mem[58]), 
	.SE(FE_OFN15_SE), 
	.Q(FIFO_u_U1_mem[59]), 
	.D(n792), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_7__4_ (.SI(FIFO_u_U1_mem[3]), 
	.SE(n1940), 
	.Q(FIFO_u_U1_mem[4]), 
	.D(n854), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_6__4_ (.SI(FIFO_u_U1_mem[11]), 
	.SE(n1930), 
	.Q(FIFO_u_U1_mem[12]), 
	.D(n846), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_5__4_ (.SI(FIFO_u_U1_mem[19]), 
	.SE(n1929), 
	.Q(FIFO_u_U1_mem[20]), 
	.D(n838), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_4__4_ (.SI(FIFO_u_U1_mem[27]), 
	.SE(n1926), 
	.Q(FIFO_u_U1_mem[28]), 
	.D(n830), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_3__4_ (.SI(FIFO_u_U1_mem[35]), 
	.SE(n1939), 
	.Q(FIFO_u_U1_mem[36]), 
	.D(n822), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_2__4_ (.SI(FIFO_u_U1_mem[43]), 
	.SE(n1923), 
	.Q(FIFO_u_U1_mem[44]), 
	.D(n814), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_1__4_ (.SI(FIFO_u_U1_mem[51]), 
	.SE(n1944), 
	.Q(FIFO_u_U1_mem[52]), 
	.D(n806), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_0__4_ (.SI(FIFO_u_U1_mem[59]), 
	.SE(n1934), 
	.Q(FIFO_u_U1_mem[60]), 
	.D(n794), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_7__5_ (.SI(FIFO_u_U1_mem[4]), 
	.SE(n1923), 
	.Q(FIFO_u_U1_mem[5]), 
	.D(n855), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_6__5_ (.SI(FIFO_u_U1_mem[12]), 
	.SE(n1930), 
	.Q(FIFO_u_U1_mem[13]), 
	.D(n847), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_5__5_ (.SI(FIFO_u_U1_mem[20]), 
	.SE(n1922), 
	.Q(FIFO_u_U1_mem[21]), 
	.D(n839), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_4__5_ (.SI(FIFO_u_U1_mem[28]), 
	.SE(SE), 
	.Q(FIFO_u_U1_mem[29]), 
	.D(n831), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_3__5_ (.SI(FIFO_u_U1_mem[36]), 
	.SE(n1926), 
	.Q(FIFO_u_U1_mem[37]), 
	.D(n823), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_2__5_ (.SI(FIFO_u_U1_mem[44]), 
	.SE(n1942), 
	.Q(FIFO_u_U1_mem[45]), 
	.D(n815), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_1__5_ (.SI(FIFO_u_U1_mem[52]), 
	.SE(n1930), 
	.Q(FIFO_u_U1_mem[53]), 
	.D(n807), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_0__5_ (.SI(FIFO_u_U1_mem[60]), 
	.SE(n1932), 
	.Q(FIFO_u_U1_mem[61]), 
	.D(n796), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_7__6_ (.SI(FIFO_u_U1_mem[5]), 
	.SE(n1918), 
	.Q(FIFO_u_U1_mem[6]), 
	.D(n856), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_6__6_ (.SI(FIFO_u_U1_mem[13]), 
	.SE(n1922), 
	.Q(FIFO_u_U1_mem[14]), 
	.D(n848), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_5__6_ (.SI(FIFO_u_U1_mem[21]), 
	.SE(n1943), 
	.Q(FIFO_u_U1_mem[22]), 
	.D(n840), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_4__6_ (.SI(FIFO_u_U1_mem[29]), 
	.SE(n1918), 
	.Q(FIFO_u_U1_mem[30]), 
	.D(n832), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_3__6_ (.SI(FIFO_u_U1_mem[37]), 
	.SE(n1940), 
	.Q(FIFO_u_U1_mem[38]), 
	.D(n824), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_2__6_ (.SI(FIFO_u_U1_mem[45]), 
	.SE(n1928), 
	.Q(FIFO_u_U1_mem[46]), 
	.D(n816), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_1__6_ (.SI(FIFO_u_U1_mem[53]), 
	.SE(n1928), 
	.Q(FIFO_u_U1_mem[54]), 
	.D(n808), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_0__6_ (.SI(FIFO_u_U1_mem[61]), 
	.SE(FE_OFN15_SE), 
	.Q(FIFO_u_U1_mem[62]), 
	.D(n798), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_7__0_ (.SI(FIFO_u_U1_mem[15]), 
	.SE(n1926), 
	.Q(FIFO_u_U1_mem[0]), 
	.D(n858), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_6__0_ (.SI(FIFO_u_U1_mem[23]), 
	.SE(n1930), 
	.Q(FIFO_u_U1_mem[8]), 
	.D(n850), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_5__0_ (.SI(FIFO_u_U1_mem[31]), 
	.SE(n1942), 
	.Q(FIFO_u_U1_mem[16]), 
	.D(n842), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_4__0_ (.SI(FIFO_u_U1_mem[39]), 
	.SE(n1932), 
	.Q(FIFO_u_U1_mem[24]), 
	.D(n834), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_3__0_ (.SI(FIFO_u_U1_mem[47]), 
	.SE(n1937), 
	.Q(FIFO_u_U1_mem[32]), 
	.D(n826), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_2__0_ (.SI(FIFO_u_U1_mem[55]), 
	.SE(n1944), 
	.Q(FIFO_u_U1_mem[40]), 
	.D(n818), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_1__0_ (.SI(FIFO_u_U1_mem[63]), 
	.SE(n1943), 
	.Q(FIFO_u_U1_mem[48]), 
	.D(n810), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_0__0_ (.SI(alu_out_v), 
	.SE(n1933), 
	.Q(FIFO_u_U1_mem[56]), 
	.D(n802), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_7__7_ (.SI(FIFO_u_U1_mem[6]), 
	.SE(n1937), 
	.Q(FIFO_u_U1_mem[7]), 
	.D(n857), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_6__7_ (.SI(FIFO_u_U1_mem[14]), 
	.SE(n1930), 
	.Q(FIFO_u_U1_mem[15]), 
	.D(n849), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_5__7_ (.SI(FIFO_u_U1_mem[22]), 
	.SE(n1930), 
	.Q(FIFO_u_U1_mem[23]), 
	.D(n841), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_4__7_ (.SI(FIFO_u_U1_mem[30]), 
	.SE(SE), 
	.Q(FIFO_u_U1_mem[31]), 
	.D(n833), 
	.CK(clk_m_REF__L6_N1));
   SDFFQX1M FIFO_u_U1_mem_reg_3__7_ (.SI(FIFO_u_U1_mem[38]), 
	.SE(SE), 
	.Q(FIFO_u_U1_mem[39]), 
	.D(n825), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_2__7_ (.SI(FIFO_u_U1_mem[46]), 
	.SE(n1929), 
	.Q(FIFO_u_U1_mem[47]), 
	.D(n817), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_1__7_ (.SI(FIFO_u_U1_mem[54]), 
	.SE(n1932), 
	.Q(FIFO_u_U1_mem[55]), 
	.D(n809), 
	.CK(clk_m_REF__L6_N0));
   SDFFQX1M FIFO_u_U1_mem_reg_0__7_ (.SI(FIFO_u_U1_mem[62]), 
	.SE(n1933), 
	.Q(FIFO_u_U1_mem[63]), 
	.D(n800), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX4M Regfile_u_reg_file_reg_1__1_ (.SI(reg1[0]), 
	.SE(n1930), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg1[1]), 
	.D(n768), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX4M Regfile_u_reg_file_reg_1__3_ (.SI(reg1[2]), 
	.SE(n1937), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg1[3]), 
	.D(n734), 
	.CK(clk_m_REF__L6_N1));
   SDFFRHQX2M Regfile_u_reg_file_reg_1__5_ (.SI(FE_OFN19_reg1_4_), 
	.SE(n1930), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg1[5]), 
	.D(n700), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_0__0_ (.SI(rd_data[7]), 
	.SE(n1932), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg0[0]), 
	.D(n785), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_0__1_ (.SI(reg0[0]), 
	.SE(n1929), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg0[1]), 
	.D(n767), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_0__2_ (.SI(reg0[1]), 
	.SE(n1922), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg0[2]), 
	.D(n750), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_0__3_ (.SI(reg0[2]), 
	.SE(n1937), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg0[3]), 
	.D(n733), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_0__4_ (.SI(reg0[3]), 
	.SE(n1933), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg0[4]), 
	.D(n716), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_0__5_ (.SI(FE_OFN22_reg0_4_), 
	.SE(n1944), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg0[5]), 
	.D(n699), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_0__6_ (.SI(FE_OFN21_reg0_5_), 
	.SE(n1922), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg0[6]), 
	.D(n682), 
	.CK(clk_m_REF__L6_N1));
   SDFFRX1M UART_TX_RX_U0_UART_TX_U2_current_state_reg_1_ (.SI(n1900), 
	.SE(n1933), 
	.RN(tx_rst), 
	.QN(n1901), 
	.Q(UART_TX_RX_U0_UART_TX_U2_current_state[1]), 
	.D(UART_TX_RX_U0_UART_TX_U2_next_state[1]), 
	.CK(tx_clk__L1_N0));
   SDFFRX1M UART_TX_RX_U0_UART_TX_U2_current_state_reg_0_ (.SI(UART_TX_RX_U0_UART_TX_ser_done), 
	.SE(SE), 
	.RN(tx_rst), 
	.QN(n1900), 
	.Q(UART_TX_RX_U0_UART_TX_U2_current_state[0]), 
	.D(UART_TX_RX_U0_UART_TX_U2_next_state[0]), 
	.CK(tx_clk__L1_N0));
   SDFFRX1M UART_TX_RX_U0_UART_TX_U2_current_state_reg_2_ (.SI(n1901), 
	.SE(n1923), 
	.RN(tx_rst), 
	.QN(n1903), 
	.Q(UART_TX_RX_U0_UART_TX_U2_current_state[2]), 
	.D(UART_TX_RX_U0_UART_TX_U2_next_state[2]), 
	.CK(tx_clk__L1_N0));
   DFFRQX1M RF1_n_synch_reg_2_ (.RN(rst_m), 
	.Q(ref_func_rst), 
	.D(RF1_n_synch[1]), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX4M Regfile_u_reg_file_reg_1__2_ (.SI(reg1[1]), 
	.SE(n1939), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg1[2]), 
	.D(n751), 
	.CK(clk_m_REF__L6_N1));
   SDFFRQX1M Regfile_u_reg_file_reg_1__4_ (.SI(reg1[3]), 
	.SE(n1933), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg1[4]), 
	.D(n717), 
	.CK(clk_m_REF__L6_N1));
   SDFFRHQX1M Regfile_u_reg_file_reg_1__6_ (.SI(FE_OFN23_reg1_5_), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg1[6]), 
	.D(n683), 
	.CK(clk_m_REF__L6_N1));
   CLKMX2X2M U952 (.Y(rst_m), 
	.S0(test_mode), 
	.B(scan_rst), 
	.A(RST_N));
   MX2XLM U947 (.Y(clk_m_UART), 
	.S0(test_mode), 
	.B(scan_clk__L2_N0), 
	.A(UART_CLK__L2_N0));
   MX2X8M U948 (.Y(ref_rst), 
	.S0(test_mode), 
	.B(scan_rst), 
	.A(ref_func_rst));
   DFFRQX1M UART_TX_RX_U0_UART_RX_U7_sample_valid_d_reg (.RN(rx_rst), 
	.Q(UART_TX_RX_U0_UART_RX_U7_sample_valid_d), 
	.D(UART_TX_RX_U0_UART_RX_samp_valid), 
	.CK(rx_clk__L1_N0));
   DFFRQX1M FIFO_u_U2_WRptr_sync_s1_reg_0_ (.RN(tx_rst), 
	.Q(FIFO_u_w_ptr_synch[0]), 
	.D(FIFO_u_U2_WRptr_sync_s0[0]), 
	.CK(tx_clk__L1_N0));
   DFFRQX1M FIFO_u_U2_WRptr_sync_s1_reg_2_ (.RN(tx_rst), 
	.Q(FIFO_u_w_ptr_synch[2]), 
	.D(FIFO_u_U2_WRptr_sync_s0[2]), 
	.CK(tx_clk__L1_N0));
   DFFRQX1M FIFO_u_U2_WRptr_sync_s1_reg_1_ (.RN(tx_rst), 
	.Q(FIFO_u_w_ptr_synch[1]), 
	.D(FIFO_u_U2_WRptr_sync_s0[1]), 
	.CK(tx_clk__L1_N0));
   DFFRQX1M FIFO_u_U2_WRptr_sync_s1_reg_3_ (.RN(tx_rst), 
	.Q(FIFO_u_w_ptr_synch[3]), 
	.D(FIFO_u_U2_WRptr_sync_s0[3]), 
	.CK(tx_clk__L1_N0));
   DFFRQX1M FIFO_u_U3_RDptr_sync_s1_reg_3_ (.RN(ref_rst), 
	.Q(FIFO_u_r_ptr_synch[3]), 
	.D(FIFO_u_U3_RDptr_sync_s0[3]), 
	.CK(clk_m_REF__L6_N1));
   DFFRQX1M FIFO_u_U3_RDptr_sync_s1_reg_2_ (.RN(ref_rst), 
	.Q(FIFO_u_r_ptr_synch[2]), 
	.D(FIFO_u_U3_RDptr_sync_s0[2]), 
	.CK(clk_m_REF__L6_N1));
   DFFRQX1M FIFO_u_U3_RDptr_sync_s1_reg_1_ (.RN(ref_rst), 
	.Q(FIFO_u_r_ptr_synch[1]), 
	.D(FIFO_u_U3_RDptr_sync_s0[1]), 
	.CK(clk_m_REF__L6_N1));
   DFFRQX1M FIFO_u_U3_RDptr_sync_s1_reg_0_ (.RN(ref_rst), 
	.Q(FIFO_u_r_ptr_synch[0]), 
	.D(FIFO_u_U3_RDptr_sync_s0[0]), 
	.CK(clk_m_REF__L6_N1));
   DFFRQX1M Pulse_U_pls_flop_reg (.RN(tx_rst), 
	.Q(Pulse_U_pls_flop), 
	.D(Pulse_U_rcv_flop), 
	.CK(tx_clk__L1_N0));
   DFFRQX1M Rx2SysCtrl_SYNC_reg_1_ (.RN(ref_rst), 
	.Q(Rx2SysCtrl_SYNC[1]), 
	.D(Rx2SysCtrl_SYNC[0]), 
	.CK(clk_m_REF__L6_N1));
   DFFRQX1M Rx2SysCtrl_SYNC_reg_2_ (.RN(ref_rst), 
	.Q(Rx2SysCtrl_SYNC[2]), 
	.D(Rx2SysCtrl_SYNC[1]), 
	.CK(clk_m_REF__L6_N1));
   DFFRQX1M Rx2SysCtrl_SYNC_reg_3_ (.RN(ref_rst), 
	.Q(Rx2SysCtrl_SYNC[3]), 
	.D(Rx2SysCtrl_SYNC[2]), 
	.CK(clk_m_REF__L6_N1));
   DFFRQX1M Rx2SysCtrl_pulse_out_reg (.RN(ref_rst), 
	.Q(Rx2SysCtrl_pulse_out), 
	.D(Rx2SysCtrl_SYNC[3]), 
	.CK(clk_m_REF__L6_N1));
   DFFRQX1M tx_rst_sync_n_synch_reg_2_ (.RN(uart_rst), 
	.Q(tx_func_rst), 
	.D(tx_rst_sync_n_synch[1]), 
	.CK(tx_clk__L1_N0));
   DFFRQX1M rx_rst_sync_n_synch_reg_2_ (.RN(uart_rst), 
	.Q(rx_func_rst), 
	.D(rx_rst_sync_n_synch[1]), 
	.CK(rx_clk__L1_N0));
   SDFFRQX1M Regfile_u_reg_file_reg_0__7_ (.SI(FE_OFN20_reg0_6_), 
	.SE(n1923), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg0[7]), 
	.D(n646), 
	.CK(clk_m_REF__L6_N1));
   SDFFRX4M ALU_u_ALU_OUT_reg_0_ (.SI(SI[3]), 
	.SE(n1939), 
	.RN(FE_OFN1_ref_rst), 
	.Q(alu_out[0]), 
	.D(ALU_u_ALU_OUT_Comb[0]), 
	.CK(alu_cg__L1_N0));
   SDFFRHQX1M Regfile_u_reg_file_reg_1__7_ (.SI(FE_OFN18_reg1_6_), 
	.SE(n1934), 
	.RN(FE_OFN1_ref_rst), 
	.Q(reg1[7]), 
	.D(n647), 
	.CK(clk_m_REF__L6_N1));
   CLKMX2X4M U951 (.Y(rx_rst), 
	.S0(test_mode), 
	.B(scan_rst), 
	.A(rx_func_rst));
   CLKMX2X4M U950 (.Y(tx_rst), 
	.S0(test_mode), 
	.B(scan_rst), 
	.A(tx_func_rst));
   NOR2X2M U955 (.Y(n1631), 
	.B(n1627), 
	.A(n1628));
   OAI2BB1X2M U956 (.Y(n1298), 
	.B0(n1388), 
	.A1N(n1390), 
	.A0N(reg1[2]));
   NAND2X2M U957 (.Y(n1597), 
	.B(n1577), 
	.A(n1587));
   NAND4XLM U959 (.Y(n1411), 
	.D(n1448), 
	.C(n1632), 
	.B(n1642), 
	.A(n1410));
   NOR2X2M U960 (.Y(DP_OP_196J1_124_5161_n43), 
	.B(n1154), 
	.A(n1176));
   NOR2XLM U962 (.Y(n910), 
	.B(fifo_full), 
	.A(n1871));
   NAND2XLM U963 (.Y(n1871), 
	.B(n918), 
	.A(alu_out_v));
   NAND2X2M U964 (.Y(n1828), 
	.B(SO[1]), 
	.A(synced_p_data[3]));
   NAND2XLM U965 (.Y(n1744), 
	.B(n914), 
	.A(n913));
   OAI21X2M U966 (.Y(n1595), 
	.B0(n1584), 
	.A1(n1585), 
	.A0(n1586));
   OR2X2M U967 (.Y(n1635), 
	.B(n1632), 
	.A(n1633));
   OA21XLM U969 (.Y(n1586), 
	.B0(n1581), 
	.A1(FE_OFN24_n1641), 
	.A0(n1582));
   CLKNAND2X2M U970 (.Y(n1630), 
	.B(n1625), 
	.A(n1626));
   CLKMX2X2M U971 (.Y(n1633), 
	.S0(FE_OFN24_n1641), 
	.B(n1622), 
	.A(n1623));
   AND2X2M U972 (.Y(n1644), 
	.B(n1642), 
	.A(n1643));
   OAI21X1M U974 (.Y(n1454), 
	.B0(n1452), 
	.A1(n1453), 
	.A0(n1607));
   AND2X1M U978 (.Y(n888), 
	.B(n1632), 
	.A(n1640));
   AND2X1M U980 (.Y(n1640), 
	.B(n1448), 
	.A(n1449));
   OAI21X2M U984 (.Y(n1447), 
	.B0(n1411), 
	.A1(n1412), 
	.A0(n1413));
   OAI21X2M U985 (.Y(n1443), 
	.B0(n1405), 
	.A1(n1441), 
	.A0(reg1[3]));
   AO22X4M U986 (.Y(n1439), 
	.B1(n1402), 
	.B0(n1587), 
	.A1(n1403), 
	.A0(n1433));
   AND2X1M U987 (.Y(eq_x_37_n25), 
	.B(n1529), 
	.A(n1530));
   AO2B2XLM U988 (.Y(FIFO_u_U4_WR_PTR_GRAY_NEXT[2]), 
	.B1(n1135), 
	.B0(FIFO_u_U4_WR_PTR_BIN_NEXT[2]), 
	.A1N(FIFO_u_U4_WR_PTR_BIN_NEXT[2]), 
	.A0(FIFO_u_U4_WR_PTR_GRAY_NEXT[3]));
   OAI21X1M U989 (.Y(n1182), 
	.B0(n1295), 
	.A1(n1293), 
	.A0(n1583));
   XNOR2X2M U990 (.Y(n1189), 
	.B(n1187), 
	.A(n1188));
   OAI2BB1X1M U992 (.Y(n1180), 
	.B0(FE_OFN21_reg0_5_), 
	.A1N(n1191), 
	.A0N(reg1[0]));
   NOR3X1M U993 (.Y(n1743), 
	.C(n1742), 
	.B(FIFO_u_w_addr[1]), 
	.A(FIFO_u_w_addr[2]));
   CLKNAND2X2M U994 (.Y(n1256), 
	.B(n1139), 
	.A(n1140));
   NOR2X2M U995 (.Y(n1269), 
	.B(n1137), 
	.A(n1147));
   AND2X1M U996 (.Y(n1056), 
	.B(n1057), 
	.A(n1659));
   OAI21X2M U997 (.Y(n1137), 
	.B0(n1583), 
	.A1(n1580), 
	.A0(FE_OFN17_reg0_7_));
   AND2X1M U999 (.Y(n1885), 
	.B(reg1[2]), 
	.A(FE_OFN22_reg0_4_));
   AND2X1M U1000 (.Y(n1879), 
	.B(FE_OFN18_reg1_6_), 
	.A(reg0[0]));
   AND2X1M U1001 (.Y(n1888), 
	.B(FE_OFN18_reg1_6_), 
	.A(reg0[1]));
   OAI21X2M U1004 (.Y(n1390), 
	.B0(n1292), 
	.A1(n1583), 
	.A0(n1399));
   OAI2BB1X2M U1005 (.Y(n1292), 
	.B0(n1291), 
	.A1N(n1583), 
	.A0N(n1399));
   MXI2XLM U1007 (.Y(n1404), 
	.S0(n1408), 
	.B(n1391), 
	.A(n1392));
   XOR2XLM U1009 (.Y(n1445), 
	.B(n1386), 
	.A(n1387));
   NAND2XLM U1010 (.Y(n1387), 
	.B(n1385), 
	.A(n1408));
   NAND2X2M U1012 (.Y(n1442), 
	.B(n1440), 
	.A(n1447));
   NAND2XLM U1013 (.Y(n1446), 
	.B(n1444), 
	.A(n1447));
   OAI21X2M U1014 (.Y(n1427), 
	.B0(reg0[2]), 
	.A1(n1580), 
	.A0(n1449));
   NAND2X2M U1015 (.Y(n1436), 
	.B(n1434), 
	.A(n1447));
   NAND2XLM U1016 (.Y(n1407), 
	.B(n1290), 
	.A(n1286));
   NOR2XLM U1017 (.Y(n1448), 
	.B(n1407), 
	.A(n1408));
   OAI21XLM U1019 (.Y(intadd_2_A_3_), 
	.B0(n1332), 
	.A1(n1333), 
	.A0(n1334));
   OAI21XLM U1020 (.Y(n1332), 
	.B0(intadd_5_n1), 
	.A1(intadd_0_n1), 
	.A0(intadd_2_SUM_2_));
   NAND2BXLM U1021 (.Y(n1397), 
	.B(reg1[0]), 
	.AN(reg0[3]));
   NAND2BXLM U1022 (.Y(n1293), 
	.B(reg1[0]), 
	.AN(FE_OFN22_reg0_4_));
   NAND2X2M U1023 (.Y(n1431), 
	.B(n1430), 
	.A(n1447));
   AOI21XLM U1024 (.Y(n1562), 
	.B0(n1377), 
	.A1(n1378), 
	.A0(n1379));
   NOR2XLM U1026 (.Y(n1383), 
	.B(n1381), 
	.A(n1562));
   NAND2XLM U1027 (.Y(n1620), 
	.B(n1618), 
	.A(n1619));
   AOI21X2M U1028 (.Y(n1621), 
	.B0(n1614), 
	.A1(n1615), 
	.A0(n1616));
   NOR3XLM U1029 (.Y(intadd_0_A_0_), 
	.C(n1380), 
	.B(n1374), 
	.A(n1375));
   NOR2XLM U1030 (.Y(n1565), 
	.B(n1357), 
	.A(intadd_4_A_0_));
   NOR2XLM U1032 (.Y(n1360), 
	.B(n1358), 
	.A(n1565));
   NAND2XLM U1033 (.Y(n1601), 
	.B(n1589), 
	.A(n1605));
   NOR3XLM U1034 (.Y(n1377), 
	.C(n1375), 
	.B(n1374), 
	.A(n1343));
   NOR2XLM U1035 (.Y(n1557), 
	.B(n1642), 
	.A(n1536));
   NOR2XLM U1037 (.Y(n1561), 
	.B(n1589), 
	.A(n1380));
   NOR2XLM U1038 (.Y(n1559), 
	.B(n1371), 
	.A(n1346));
   NAND2XLM U1039 (.Y(n1629), 
	.B(n1627), 
	.A(n1628));
   OAI21X2M U1040 (.Y(n1594), 
	.B0(n1591), 
	.A1(n1592), 
	.A0(n1593));
   NAND2XLM U1041 (.Y(n1591), 
	.B(n1589), 
	.A(n1590));
   NAND2XLM U1042 (.Y(n1592), 
	.B(n1587), 
	.A(n1588));
   NAND2XLM U1046 (.Y(n1309), 
	.B(n1409), 
	.A(n1287));
   NOR3XLM U1047 (.Y(intadd_7_A_0_), 
	.C(n1536), 
	.B(n1374), 
	.A(n1491));
   OAI21XLM U1050 (.Y(n1354), 
	.B0(n1353), 
	.A1(intadd_6_n1), 
	.A0(intadd_1_SUM_2_));
   OAI2BB1XLM U1051 (.Y(n1353), 
	.B0(n1264), 
	.A1N(intadd_4_SUM_0_), 
	.A0N(intadd_1_SUM_1_));
   OAI21XLM U1052 (.Y(n1264), 
	.B0(intadd_3_SUM_0_), 
	.A1(intadd_4_SUM_0_), 
	.A0(intadd_1_SUM_1_));
   NAND2XLM U1053 (.Y(n1151), 
	.B(n1142), 
	.A(n1143));
   NAND2XLM U1054 (.Y(n1348), 
	.B(FE_OFN19_reg1_4_), 
	.A(FE_OFN22_reg0_4_));
   OAI21XLM U1055 (.Y(intadd_0_A_4_), 
	.B0(n1340), 
	.A1(n1341), 
	.A0(n1342));
   OAI21XLM U1056 (.Y(n1340), 
	.B0(intadd_3_n1), 
	.A1(intadd_1_n1), 
	.A0(intadd_0_SUM_3_));
   OAI21X2M U1057 (.Y(n1395), 
	.B0(n1393), 
	.A1(n1397), 
	.A0(n1394));
   OAI2BB1X2M U1058 (.Y(n1393), 
	.B0(reg0[3]), 
	.A1N(n1408), 
	.A0N(reg1[0]));
   NAND2BXLM U1059 (.Y(n1429), 
	.B(reg1[0]), 
	.AN(reg0[2]));
   XNOR2X2M U1060 (.Y(n1435), 
	.B(n1400), 
	.A(n1401));
   NAND2XLM U1062 (.Y(n1401), 
	.B(n1398), 
	.A(n1408));
   OAI21X2M U1063 (.Y(n1433), 
	.B0(n1396), 
	.A1(n1432), 
	.A0(reg1[1]));
   OAI21XLM U1064 (.Y(n1396), 
	.B0(n1429), 
	.A1(n1583), 
	.A0(n1395));
   NAND2XLM U1068 (.Y(n1188), 
	.B(n1185), 
	.A(n1191));
   CLKINVX1M U1069 (.Y(n1291), 
	.A(n1397));
   XOR2X2M U1070 (.Y(n1388), 
	.B(n1296), 
	.A(n1297));
   NAND2XLM U1072 (.Y(n1297), 
	.B(n1294), 
	.A(n1301));
   XOR2XLM U1073 (.Y(n1304), 
	.B(n1302), 
	.A(n1303));
   NAND2XLM U1074 (.Y(n1303), 
	.B(n1300), 
	.A(n1301));
   XNOR2XLM U1075 (.Y(n1300), 
	.B(reg1[2]), 
	.A(n1299));
   NOR2XLM U1076 (.Y(n1568), 
	.B(n1583), 
	.A(n1582));
   NAND2XLM U1077 (.Y(n1569), 
	.B(n1583), 
	.A(n1582));
   OAI22XLM U1078 (.Y(n955), 
	.B1(n929), 
	.B0(n930), 
	.A1(n931), 
	.A0(n1828));
   NAND2BXLM U1081 (.Y(n1057), 
	.B(n1059), 
	.AN(n902));
   CLKMX2X2M U1082 (.Y(n1628), 
	.S0(FE_OFN24_n1641), 
	.B(n1610), 
	.A(n1611));
   XNOR2XLM U1083 (.Y(n1611), 
	.B(n1609), 
	.A(n1616));
   NAND2XLM U1084 (.Y(n1609), 
	.B(n1613), 
	.A(n1615));
   MX2XLM U1085 (.Y(n1588), 
	.S0(FE_OFN24_n1641), 
	.B(n1572), 
	.A(n1573));
   XNOR2XLM U1086 (.Y(n1573), 
	.B(n1571), 
	.A(n1572));
   CLKMX2X2M U1087 (.Y(n1590), 
	.S0(FE_OFN24_n1641), 
	.B(n1577), 
	.A(n1578));
   NAND2XLM U1088 (.Y(n1576), 
	.B(n1597), 
	.A(n1575));
   OAI21XLM U1090 (.Y(n1581), 
	.B0(reg0[1]), 
	.A1(n1580), 
	.A0(FE_OFN24_n1641));
   NAND2XLM U1091 (.Y(n1582), 
	.B(reg1[0]), 
	.A(n1536));
   NAND2BXLM U1092 (.Y(n1655), 
	.B(reg1[0]), 
	.AN(reg0[0]));
   MX2XLM U1093 (.Y(n1626), 
	.S0(FE_OFN24_n1641), 
	.B(n1605), 
	.A(n1606));
   XNOR2XLM U1094 (.Y(n1606), 
	.B(n1603), 
	.A(n1604));
   NAND2XLM U1095 (.Y(n1603), 
	.B(n1601), 
	.A(n1602));
   OAI21XLM U1096 (.Y(n1604), 
	.B0(n1597), 
	.A1(n1598), 
	.A0(n1599));
   NOR3XLM U1097 (.Y(intadd_4_A_0_), 
	.C(n1366), 
	.B(n1374), 
	.A(n1380));
   NAND2X2M U1098 (.Y(n1147), 
	.B(n1587), 
	.A(n1142));
   NAND2X2M U1099 (.Y(n1194), 
	.B(n1625), 
	.A(n1409));
   NAND2X2M U1101 (.Y(n1618), 
	.B(n1627), 
	.A(n1622));
   NOR2X2M U1102 (.Y(n1608), 
	.B(n1625), 
	.A(n1610));
   NOR2X2M U1103 (.Y(n1617), 
	.B(n1627), 
	.A(n1622));
   NAND2XLM U1104 (.Y(n1374), 
	.B(reg1[1]), 
	.A(reg1[0]));
   NAND2XLM U1108 (.Y(n952), 
	.B(n953), 
	.A(n951));
   NAND2XLM U1109 (.Y(n958), 
	.B(n955), 
	.A(n956));
   NAND2XLM U1111 (.Y(n954), 
	.B(n955), 
	.A(n953));
   NAND2XLM U1112 (.Y(n936), 
	.B(n951), 
	.A(n956));
   NOR2XLM U1113 (.Y(n1371), 
	.B(n1379), 
	.A(n1370));
   OAI22XLM U1114 (.Y(intadd_0_A_1_), 
	.B1(n1563), 
	.B0(n1382), 
	.A1(n1564), 
	.A0(n1383));
   NOR2XLM U1117 (.Y(n1171), 
	.B(n1058), 
	.A(n1652));
   NOR2XLM U1119 (.Y(intadd_3_B_0_), 
	.B(n1376), 
	.A(intadd_0_A_0_));
   OAI22XLM U1120 (.Y(intadd_1_A_1_), 
	.B1(n1566), 
	.B0(n1359), 
	.A1(n1567), 
	.A0(n1360));
   NAND2BXLM U1122 (.Y(n1158), 
	.B(n1167), 
	.AN(n1154));
   NAND2XLM U1123 (.Y(n1462), 
	.B(n1156), 
	.A(n1157));
   CLKNAND2X2M U1124 (.Y(n1146), 
	.B(n1144), 
	.A(n1145));
   NAND2X2M U1126 (.Y(n1145), 
	.B(n1583), 
	.A(n1186));
   NAND2XLM U1127 (.Y(n1192), 
	.B(n1256), 
	.A(n1141));
   NOR2X2M U1129 (.Y(n1142), 
	.B(reg1[3]), 
	.A(n1194));
   AOI21XLM U1130 (.Y(intadd_6_B_0_), 
	.B0(intadd_1_A_0_), 
	.A1(n1368), 
	.A0(n1369));
   AOI2B1XLM U1131 (.Y(n1538), 
	.B0(n1532), 
	.A1N(n1531), 
	.A0(n1533));
   NOR2XLM U1132 (.Y(n1533), 
	.B(n1589), 
	.A(n1491));
   NOR2XLM U1133 (.Y(n1539), 
	.B(n1369), 
	.A(n1425));
   NOR2XLM U1135 (.Y(n1532), 
	.B(n1531), 
	.A(n1493));
   NOR2XLM U1136 (.Y(n1413), 
	.B(n1448), 
	.A(n1410));
   NAND2XLM U1137 (.Y(n1669), 
	.B(n1171), 
	.A(n1662));
   NAND2XLM U1138 (.Y(n1670), 
	.B(n1154), 
	.A(n1153));
   NOR2XLM U1139 (.Y(n1174), 
	.B(n1167), 
	.A(n1462));
   OAI21X2M U1140 (.Y(n1451), 
	.B0(n1618), 
	.A1(n1613), 
	.A0(n1617));
   OR2X2M U1141 (.Y(n887), 
	.B(n1632), 
	.A(n1640));
   NOR2X2M U1142 (.Y(n1450), 
	.B(n1617), 
	.A(n1608));
   AOI21X2M U1143 (.Y(n1607), 
	.B0(n1437), 
	.A1(n1438), 
	.A0(n1574));
   NOR2XLM U1144 (.Y(n1438), 
	.B(n1600), 
	.A(n1598));
   NAND2XLM U1145 (.Y(n1155), 
	.B(n1652), 
	.A(n1157));
   NAND2XLM U1146 (.Y(n1463), 
	.B(n1167), 
	.A(n1154));
   AOI211XLM U1147 (.Y(n1664), 
	.C0(n1462), 
	.B0(n1463), 
	.A1(n1645), 
	.A0(n1464));
   NAND2BXLM U1149 (.Y(n1659), 
	.B(n1058), 
	.AN(n902));
   NAND2XLM U1150 (.Y(n1176), 
	.B(n1156), 
	.A(n1056));
   NOR2X2M U1151 (.Y(n1043), 
	.B(n957), 
	.A(n936));
   NOR2X3M U1152 (.Y(n1729), 
	.B(n952), 
	.A(n959));
   NOR2X2M U1153 (.Y(n1731), 
	.B(n952), 
	.A(n957));
   NOR2X2M U1154 (.Y(n1727), 
	.B(n958), 
	.A(n957));
   NOR2X2M U1155 (.Y(n1725), 
	.B(n958), 
	.A(n959));
   NOR2X2M U1156 (.Y(n1723), 
	.B(n954), 
	.A(n957));
   NOR2X2M U1157 (.Y(n1719), 
	.B(n954), 
	.A(n959));
   OAI211XLM U1158 (.Y(n1721), 
	.C0(n938), 
	.B0(n928), 
	.A1(n1735), 
	.A0(n931));
   NAND2XLM U1163 (.Y(n1732), 
	.B(n1720), 
	.A(n1721));
   NOR2BX2M U1165 (.Y(n1652), 
	.B(n1914), 
	.AN(synced_p_data[1]));
   NOR2X2M U1166 (.Y(n1044), 
	.B(n936), 
	.A(n959));
   CLKNAND2X2M U1167 (.Y(n1733), 
	.B(n1720), 
	.A(n969));
   AND3XLM U1168 (.Y(n908), 
	.C(n906), 
	.B(n907), 
	.A(rd_data_vld));
   AND3XLM U1169 (.Y(n909), 
	.C(n906), 
	.B(n904), 
	.A(n905));
   OAI21BXLM U1170 (.Y(n1338), 
	.B0N(n1371), 
	.A1(n1372), 
	.A0(n1370));
   NOR2XLM U1172 (.Y(n1551), 
	.B(n1632), 
	.A(n1366));
   OAI22XLM U1173 (.Y(n1350), 
	.B1(n1344), 
	.B0(n1556), 
	.A1(n1558), 
	.A0(n1345));
   NOR2XLM U1174 (.Y(n1345), 
	.B(n1557), 
	.A(n1377));
   OAI21XLM U1175 (.Y(n1554), 
	.B0(n1347), 
	.A1(n1348), 
	.A0(n1349));
   OAI21XLM U1176 (.Y(n1347), 
	.B0(n1559), 
	.A1(n1561), 
	.A0(n1560));
   NOR2XLM U1178 (.Y(n1153), 
	.B(n1059), 
	.A(n1155));
   NAND2XLM U1179 (.Y(n1166), 
	.B(n1171), 
	.A(n1486));
   NAND2XLM U1180 (.Y(n1152), 
	.B(n1055), 
	.A(n1056));
   NAND2XLM U1181 (.Y(n903), 
	.B(n1863), 
	.A(n905));
   NOR2XLM U1182 (.Y(n907), 
	.B(n917), 
	.A(n922));
   AOI211XLM U1183 (.Y(n1676), 
	.C0(n1672), 
	.B0(n1673), 
	.A1(n1674), 
	.A0(n1675));
   OAI21X2M U1184 (.Y(n1646), 
	.B0(n1637), 
	.A1(n1638), 
	.A0(n1639));
   NAND2X2M U1185 (.Y(n1638), 
	.B(n1635), 
	.A(n1624));
   NOR2XLM U1189 (.Y(n1870), 
	.B(n1864), 
	.A(n1865));
   AOI22XLM U1190 (.Y(n1266), 
	.B1(n1355), 
	.B0(n1356), 
	.A1(intadd_6_n1), 
	.A0(intadd_1_SUM_2_));
   AOI21XLM U1191 (.Y(n1265), 
	.B0(n1671), 
	.A1(n1266), 
	.A0(n1353));
   NOR2XLM U1192 (.Y(n1364), 
	.B(intadd_6_SUM_1_), 
	.A(intadd_7_n1));
   NOR2XLM U1193 (.Y(n1665), 
	.B(n1462), 
	.A(n1158));
   AOI211XLM U1194 (.Y(n1261), 
	.C0(n1257), 
	.B0(n1258), 
	.A1(n1674), 
	.A0(n1259));
   NOR2XLM U1195 (.Y(n1684), 
	.B(n1154), 
	.A(n1152));
   NAND2X2M U1197 (.Y(n1641), 
	.B(n1642), 
	.A(n1454));
   NAND2X2M U1198 (.Y(n1453), 
	.B(n887), 
	.A(n1450));
   AOI21X2M U1199 (.Y(n1452), 
	.B0(n888), 
	.A1(n887), 
	.A0(n1451));
   AOI21XLM U1201 (.Y(n1504), 
	.B0(n1494), 
	.A1(n1499), 
	.A0(n1495));
   AOI211XLM U1202 (.Y(n1494), 
	.C0(intadd_7_A_0_), 
	.B0(n1671), 
	.A1(n1492), 
	.A0(n1493));
   NAND4XLM U1203 (.Y(n1488), 
	.D(n1659), 
	.C(n1486), 
	.B(n1652), 
	.A(n1487));
   NOR2X2M U1204 (.Y(n1681), 
	.B(n1323), 
	.A(n1176));
   NOR2X2M U1205 (.Y(n1051), 
	.B(n1721), 
	.A(n1524));
   NOR2XLM U1206 (.Y(n1049), 
	.B(n1524), 
	.A(n969));
   NOR2X2M U1207 (.Y(n1833), 
	.B(n1733), 
	.A(n1722));
   NOR2X2M U1208 (.Y(n1832), 
	.B(n1732), 
	.A(n1722));
   NOR2X2M U1209 (.Y(n1837), 
	.B(n1733), 
	.A(n1726));
   NOR2X2M U1210 (.Y(n1836), 
	.B(n1732), 
	.A(n1726));
   NOR2X2M U1211 (.Y(n1835), 
	.B(n1733), 
	.A(n1724));
   NOR2X2M U1212 (.Y(n1834), 
	.B(n1732), 
	.A(n1724));
   NOR2X2M U1213 (.Y(n1839), 
	.B(n1733), 
	.A(n1728));
   NOR2X2M U1214 (.Y(n1841), 
	.B(n1733), 
	.A(n1730));
   NOR2X2M U1215 (.Y(n1840), 
	.B(n1732), 
	.A(n1730));
   NOR2X2M U1216 (.Y(n1843), 
	.B(n1733), 
	.A(n1734));
   NOR2X2M U1217 (.Y(n1842), 
	.B(n1732), 
	.A(n1734));
   NOR2XLM U1221 (.Y(n1134), 
	.B(n1742), 
	.A(n1740));
   NAND2XLM U1222 (.Y(n949), 
	.B(n1738), 
	.A(n1134));
   OR3X1M U1223 (.Y(n914), 
	.C(n908), 
	.B(n909), 
	.A(n910));
   OAI2BB2XLM U1224 (.Y(n1526), 
	.B1(FIFO_u_U4_WR_PTR_BIN_NEXT[2]), 
	.B0(FIFO_u_U4_WR_PTR_BIN_NEXT[1]), 
	.A1N(FIFO_u_U4_WR_PTR_BIN_NEXT[1]), 
	.A0N(FIFO_u_w_addr[2]));
   OAI22XLM U1225 (.Y(n1527), 
	.B1(FIFO_u_r_ptr_synch[2]), 
	.B0(FIFO_u_U4_WR_PTR_GRAY_NEXT[2]), 
	.A1(FIFO_u_r_ptr_synch[0]), 
	.A0(n1528));
   OAI2BB2XLM U1226 (.Y(n1528), 
	.B1(FIFO_u_U4_WR_PTR_BIN_NEXT[1]), 
	.B0(FIFO_u_U4_WR_PTR_BIN_NEXT[0]), 
	.A1N(FIFO_u_U4_WR_PTR_BIN_NEXT[0]), 
	.A0N(FIFO_u_w_addr[1]));
   OAI21XLM U1227 (.Y(n1329), 
	.B0(n1325), 
	.A1(n1546), 
	.A0(n1544));
   NOR2XLM U1228 (.Y(n1327), 
	.B(n1329), 
	.A(intadd_2_n1));
   OAI21XLM U1229 (.Y(intadd_5_A_2_), 
	.B0(n1339), 
	.A1(n1552), 
	.A0(n1550));
   OAI21XLM U1230 (.Y(n1339), 
	.B0(n1551), 
	.A1(n1337), 
	.A0(n1338));
   OAI22XLM U1231 (.Y(intadd_2_A_2_), 
	.B1(n1541), 
	.B0(n1335), 
	.A1(n1543), 
	.A0(n1336));
   NOR2XLM U1233 (.Y(n1330), 
	.B(n1674), 
	.A(n1278));
   OAI22XLM U1234 (.Y(intadd_0_A_3_), 
	.B1(n1553), 
	.B0(n1351), 
	.A1(n1555), 
	.A0(n1352));
   NOR2XLM U1235 (.Y(n1352), 
	.B(n1554), 
	.A(n1350));
   OR2X1M U1240 (.Y(n1321), 
	.B(n1279), 
	.A(DP_OP_196J1_124_5161_n9));
   NAND2XLM U1241 (.Y(n1674), 
	.B(n1060), 
	.A(n1166));
   NOR2X2M U1245 (.Y(n1845), 
	.B(n898), 
	.A(n928));
   NAND3XLM U1247 (.Y(n947), 
	.C(n1829), 
	.B(n1866), 
	.A(n925));
   OAI2BB1X2M U1248 (.Y(ALU_u_ALU_OUT_Comb[0]), 
	.B0(n1682), 
	.A1N(n1683), 
	.A0N(n1684));
   AOI21XLM U1249 (.Y(n1682), 
	.B0(n1680), 
	.A1(n1681), 
	.A0(C118_DATA15_0));
   AO21X4M U1250 (.Y(n1683), 
	.B0(n1644), 
	.A1(n1645), 
	.A0(n1646));
   OAI211XLM U1251 (.Y(n1680), 
	.C0(n1676), 
	.B0(n1677), 
	.A1(n1678), 
	.A0(n1679));
   OAI21XLM U1252 (.Y(n646), 
	.B0(n1249), 
	.A1(n1343), 
	.A0(n1253));
   OAI21XLM U1253 (.Y(n682), 
	.B0(n1251), 
	.A1(n1375), 
	.A0(n1253));
   OAI21XLM U1254 (.Y(n699), 
	.B0(n1250), 
	.A1(n1380), 
	.A0(n1253));
   OAI21XLM U1255 (.Y(n716), 
	.B0(n1252), 
	.A1(n1366), 
	.A0(n1253));
   OAI21XLM U1256 (.Y(n733), 
	.B0(n935), 
	.A1(n1828), 
	.A0(n1535));
   OAI21XLM U1257 (.Y(n750), 
	.B0(n933), 
	.A1(n1826), 
	.A0(n1535));
   OAI21XLM U1258 (.Y(n785), 
	.B0(n934), 
	.A1(n1735), 
	.A0(n1535));
   AOI222XLM U1259 (.Y(n972), 
	.C1(rd_data[7]), 
	.C0(n1524), 
	.B1(n1049), 
	.B0(n970), 
	.A1(n1051), 
	.A0(n971));
   NAND4XLM U1260 (.Y(n971), 
	.D(n960), 
	.C(n961), 
	.B(n962), 
	.A(n963));
   NAND4XLM U1261 (.Y(n970), 
	.D(n965), 
	.C(n966), 
	.B(n967), 
	.A(n968));
   OAI2BB1XLM U1262 (.Y(ALU_u_ALU_OUT_Comb[8]), 
	.B0(n1281), 
	.A1N(n1282), 
	.A0N(n1681));
   AOI21XLM U1263 (.Y(n1281), 
	.B0(n1280), 
	.A1(n1422), 
	.A0(intadd_1_SUM_3_));
   XNOR2XLM U1264 (.Y(n1282), 
	.B(n1279), 
	.A(DP_OP_196J1_124_5161_n9));
   OAI21XLM U1265 (.Y(n1280), 
	.B0(n1320), 
	.A1(n1490), 
	.A0(n1343));
   OAI2B11XLM U1266 (.Y(ALU_u_ALU_OUT_Comb[7]), 
	.C0(n1274), 
	.B0(n1275), 
	.A1N(C118_DATA15_7), 
	.A0(n1276));
   AOI211XLM U1267 (.Y(n1274), 
	.C0(n1271), 
	.B0(n1272), 
	.A1(n1674), 
	.A0(n1273));
   OAI21XLM U1268 (.Y(n1275), 
	.B0(n1265), 
	.A1(n1266), 
	.A0(n1353));
   OAI2BB1XLM U1269 (.Y(ALU_u_ALU_OUT_Comb[6]), 
	.B0(n1263), 
	.A1N(C118_DATA15_6), 
	.A0N(n1681));
   AOI21XLM U1270 (.Y(n1263), 
	.B0(n1262), 
	.A1(n1422), 
	.A0(intadd_6_SUM_2_));
   OAI211XLM U1271 (.Y(n1262), 
	.C0(n1260), 
	.B0(n1261), 
	.A1(n1549), 
	.A0(n1679));
   AOI222XLM U1272 (.Y(n1027), 
	.C1(rd_data[6]), 
	.C0(n1524), 
	.B1(n1049), 
	.B0(n1025), 
	.A1(n1051), 
	.A0(n1026));
   NAND4XLM U1273 (.Y(n1026), 
	.D(n1017), 
	.C(n1018), 
	.B(n1019), 
	.A(n1020));
   NAND4XLM U1274 (.Y(n1025), 
	.D(n1021), 
	.C(n1022), 
	.B(n1023), 
	.A(n1024));
   NAND3XLM U1275 (.Y(ALU_u_ALU_OUT_Comb[5]), 
	.C(n1177), 
	.B(n1178), 
	.A(n1179));
   AOI211XLM U1276 (.Y(n1179), 
	.C0(n1169), 
	.B0(n1170), 
	.A1(n1684), 
	.A0(n1191));
   NAND2XLM U1277 (.Y(n1177), 
	.B(n1681), 
	.A(C118_DATA15_5));
   NAND4XLM U1278 (.Y(n993), 
	.D(n984), 
	.C(n985), 
	.B(n986), 
	.A(n987));
   NAND4XLM U1279 (.Y(n992), 
	.D(n988), 
	.C(n989), 
	.B(n990), 
	.A(n991));
   OAI2BB1XLM U1280 (.Y(ALU_u_ALU_OUT_Comb[4]), 
	.B0(n1205), 
	.A1N(C118_DATA15_4), 
	.A0N(n1681));
   AOI211XLM U1281 (.Y(n1205), 
	.C0(n1203), 
	.B0(n1204), 
	.A1(n1422), 
	.A0(intadd_7_SUM_2_));
   NOR2XLM U1282 (.Y(n1204), 
	.B(n1508), 
	.A(n1290));
   AOI222XLM U1283 (.Y(n1016), 
	.C1(rd_data[4]), 
	.C0(n1524), 
	.B1(n1049), 
	.B0(n1014), 
	.A1(n1051), 
	.A0(n1015));
   NAND4XLM U1284 (.Y(n1015), 
	.D(n1006), 
	.C(n1007), 
	.B(n1008), 
	.A(n1009));
   NAND4XLM U1285 (.Y(n1014), 
	.D(n1010), 
	.C(n1011), 
	.B(n1012), 
	.A(n1013));
   OAI211XLM U1286 (.Y(ALU_u_ALU_OUT_Comb[3]), 
	.C0(n1317), 
	.B0(n1318), 
	.A1(n1508), 
	.A0(n1394));
   AOI21XLM U1287 (.Y(n1318), 
	.B0(n1316), 
	.A1(intadd_7_SUM_1_), 
	.A0(n1422));
   NAND2XLM U1288 (.Y(n1317), 
	.B(n1681), 
	.A(C118_DATA15_3));
   OAI211XLM U1289 (.Y(n1316), 
	.C0(n1313), 
	.B0(n1314), 
	.A1(n1315), 
	.A0(n1679));
   AOI222XLM U1290 (.Y(n1038), 
	.C1(rd_data[3]), 
	.C0(n1524), 
	.B1(n1049), 
	.B0(n1036), 
	.A1(n1051), 
	.A0(n1037));
   NAND4XLM U1291 (.Y(n1037), 
	.D(n1028), 
	.C(n1029), 
	.B(n1030), 
	.A(n1031));
   NAND4XLM U1292 (.Y(n1036), 
	.D(n1032), 
	.C(n1033), 
	.B(n1034), 
	.A(n1035));
   OAI211XLM U1293 (.Y(ALU_u_ALU_OUT_Comb[2]), 
	.C0(n1423), 
	.B0(n1424), 
	.A1(n1508), 
	.A0(n1449));
   AOI21XLM U1294 (.Y(n1424), 
	.B0(n1421), 
	.A1(intadd_7_SUM_0_), 
	.A0(n1422));
   NAND2XLM U1295 (.Y(n1423), 
	.B(n1681), 
	.A(C118_DATA15_2));
   OAI211XLM U1296 (.Y(n1421), 
	.C0(n1418), 
	.B0(n1419), 
	.A1(n1420), 
	.A0(n1679));
   NAND4XLM U1297 (.Y(n1003), 
	.D(n999), 
	.C(n1000), 
	.B(n1001), 
	.A(n1002));
   OAI21XLM U1298 (.Y(ALU_u_ALU_OUT_Comb[1]), 
	.B0(n1507), 
	.A1(n1508), 
	.A0(FE_OFN24_n1641));
   AOI211XLM U1299 (.Y(n1507), 
	.C0(n1505), 
	.B0(n1506), 
	.A1(n1681), 
	.A0(C118_DATA15_1));
   OAI211XLM U1300 (.Y(n1506), 
	.C0(n1488), 
	.B0(n1489), 
	.A1(n1490), 
	.A0(n1491));
   NAND3XLM U1301 (.Y(n1505), 
	.C(n1502), 
	.B(n1503), 
	.A(n1504));
   AOI222XLM U1302 (.Y(n983), 
	.C1(rd_data[1]), 
	.C0(n1524), 
	.B1(n1049), 
	.B0(n981), 
	.A1(n1051), 
	.A0(n982));
   NAND4XLM U1303 (.Y(n982), 
	.D(n973), 
	.C(n974), 
	.B(n975), 
	.A(n976));
   NAND4XLM U1304 (.Y(n981), 
	.D(n977), 
	.C(n978), 
	.B(n979), 
	.A(n980));
   AOI222XLM U1305 (.Y(n1053), 
	.C1(rd_data[0]), 
	.C0(n1524), 
	.B1(n1049), 
	.B0(n1050), 
	.A1(n1051), 
	.A0(n1052));
   NAND4XLM U1306 (.Y(n1052), 
	.D(n1039), 
	.C(n1040), 
	.B(n1041), 
	.A(n1042));
   NAND4XLM U1307 (.Y(n1050), 
	.D(n1045), 
	.C(n1046), 
	.B(n1047), 
	.A(n1048));
   OAI21XLM U1308 (.Y(FIFO_u_U4_WR_PTR_BIN_NEXT[2]), 
	.B0(n949), 
	.A1(n1738), 
	.A0(n1134));
   OAI21XLM U1309 (.Y(FIFO_u_U4_WR_PTR_BIN_NEXT[0]), 
	.B0(n1744), 
	.A1(n913), 
	.A0(n914));
   OAI31XLM U1310 (.Y(ALU_u_ALU_OUT_Comb[15]), 
	.B0(n1330), 
	.A2(n1326), 
	.A1(n1671), 
	.A0(n1327));
   OAI21XLM U1311 (.Y(ALU_u_ALU_OUT_Comb[14]), 
	.B0(n1330), 
	.A1(n1671), 
	.A0(n1331));
   AOI21XLM U1312 (.Y(n1331), 
	.B0(n1328), 
	.A1(n1329), 
	.A0(intadd_2_n1));
   XOR2XLM U1313 (.Y(n1328), 
	.B(n1326), 
	.A(n1327));
   OAI211XLM U1314 (.Y(ALU_u_ALU_OUT_Comb[12]), 
	.C0(n1320), 
	.B0(n1321), 
	.A1(n1322), 
	.A0(n1671));
   XNOR2XLM U1315 (.Y(n1322), 
	.B(n1319), 
	.A(intadd_5_n1));
   AOI22XLM U1316 (.Y(n1319), 
	.B1(n1333), 
	.B0(n1334), 
	.A1(intadd_0_n1), 
	.A0(intadd_2_SUM_2_));
   OAI2BB1XLM U1317 (.Y(ALU_u_ALU_OUT_Comb[11]), 
	.B0(n1330), 
	.A1N(intadd_0_SUM_4_), 
	.A0N(n1422));
   OAI211XLM U1318 (.Y(ALU_u_ALU_OUT_Comb[10]), 
	.C0(n1320), 
	.B0(n1321), 
	.A1(n1284), 
	.A0(n1671));
   XNOR2XLM U1319 (.Y(n1284), 
	.B(n1283), 
	.A(intadd_3_n1));
   AOI22XLM U1320 (.Y(n1283), 
	.B1(n1341), 
	.B0(n1342), 
	.A1(intadd_1_n1), 
	.A0(intadd_0_SUM_3_));
   NAND2BXLM U1321 (.Y(ALU_u_ALU_OUT_Comb[9]), 
	.B(n1277), 
	.AN(n1278));
   AOI21XLM U1322 (.Y(n1277), 
	.B0(n1674), 
	.A1(n1422), 
	.A0(intadd_1_SUM_4_));
   NOR2XLM U1323 (.Y(n1898), 
	.B(n1914), 
	.A(n902));
   AOI22XLM U1324 (.Y(n841), 
	.B1(n911), 
	.B0(n1751), 
	.A1(FE_OFN4_n1746), 
	.A0(n912));
   AOI22XLM U1325 (.Y(n840), 
	.B1(n911), 
	.B0(n1759), 
	.A1(FE_OFN5_n1754), 
	.A0(n912));
   AOI22XLM U1326 (.Y(n839), 
	.B1(n911), 
	.B0(n1767), 
	.A1(FE_OFN6_n1762), 
	.A0(n912));
   AOI22XLM U1327 (.Y(n836), 
	.B1(n911), 
	.B0(n1791), 
	.A1(FE_OFN9_n1786), 
	.A0(n912));
   AOI22XLM U1328 (.Y(n838), 
	.B1(n911), 
	.B0(n1775), 
	.A1(FE_OFN7_n1770), 
	.A0(n912));
   AOI22XLM U1329 (.Y(n842), 
	.B1(n911), 
	.B0(n1701), 
	.A1(FE_OFN2_n1745), 
	.A0(n912));
   OAI2BB2X1M U1334 (.Y(FE_OFN3_UART_TX_O), 
	.B1(n1070), 
	.B0(n1071), 
	.A1N(n1900), 
	.A0N(UART_TX_RX_U0_UART_TX_par_bit));
   NAND2X2M U1340 (.Y(n1403), 
	.B(reg1[2]), 
	.A(n1435));
   XOR2XLM U1341 (.Y(n1578), 
	.B(n1576), 
	.A(n1599));
   AOI21XLM U1342 (.Y(n1458), 
	.B0(n1478), 
	.A1(n1477), 
	.A0(n1457));
   NAND2BXLM U1343 (.Y(n1184), 
	.B(reg1[0]), 
	.AN(FE_OFN21_reg0_5_));
   OAI21X2M U1344 (.Y(n1405), 
	.B0(n1439), 
	.A1(n1589), 
	.A0(n1404));
   AOI222XLM U1345 (.Y(n1095), 
	.C1(n1092), 
	.C0(n1093), 
	.B1(n1092), 
	.B0(UART_TX_RX_U0_UART_RX_edge_cnt[2]), 
	.A1(n1093), 
	.A0(UART_TX_RX_U0_UART_RX_edge_cnt[2]));
   NOR3XLM U1346 (.Y(intadd_1_A_0_), 
	.C(n1366), 
	.B(n1374), 
	.A(n1367));
   NAND2XLM U1347 (.Y(n1406), 
	.B(FE_OFN19_reg1_4_), 
	.A(n1445));
   NAND2X2M U1348 (.Y(n1613), 
	.B(n1625), 
	.A(n1610));
   NAND2XLM U1349 (.Y(n1097), 
	.B(n1224), 
	.A(n1117));
   NOR2XLM U1350 (.Y(n1373), 
	.B(n1370), 
	.A(n1371));
   OAI211XLM U1351 (.Y(rx_ratio[0]), 
	.C0(n1223), 
	.B0(n1224), 
	.A1(n1222), 
	.A0(n1225));
   OAI21X2M U1352 (.Y(n1636), 
	.B0(n1629), 
	.A1(n1630), 
	.A0(n1631));
   OAI22XLM U1353 (.Y(n1363), 
	.B1(n1159), 
	.B0(n1160), 
	.A1(n1539), 
	.A0(n1161));
   AOI21XLM U1355 (.Y(n1414), 
	.B0(n1669), 
	.A1(n1467), 
	.A0(n1651));
   OAI21X2M U1357 (.Y(n1437), 
	.B0(n1601), 
	.A1(n1597), 
	.A0(n1600));
   NOR2BXLM U1358 (.Y(n1336), 
	.B(n1542), 
	.AN(n1541));
   XNOR2XLM U1359 (.Y(intadd_0_B_2_), 
	.B(n1372), 
	.A(n1373));
   AOI22XLM U1360 (.Y(n966), 
	.B1(Regfile_u_reg_file_11__7_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_9__7_), 
	.A0(n1727));
   OAI21XLM U1361 (.Y(intadd_1_A_3_), 
	.B0(n1354), 
	.A1(n1355), 
	.A0(n1356));
   OAI22XLM U1362 (.Y(intadd_6_A_2_), 
	.B1(n1361), 
	.B0(n1362), 
	.A1(n1363), 
	.A0(n1364));
   NAND2XLM U1363 (.Y(n1667), 
	.B(n1173), 
	.A(n1174));
   AOI22XLM U1364 (.Y(n990), 
	.B1(Regfile_u_reg_file_15__5_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_13__5_), 
	.A0(n1723));
   NOR2XLM U1366 (.Y(intadd_7_A_1_), 
	.B(n1539), 
	.A(n1365));
   AOI211XLM U1367 (.Y(n1419), 
	.C0(n1414), 
	.B0(n1415), 
	.A1(n1674), 
	.A0(n1416));
   AOI22XLM U1368 (.Y(n1001), 
	.B1(Regfile_u_reg_file_15__2_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_13__2_), 
	.A0(n1723));
   AOI21XLM U1369 (.Y(n1489), 
	.B0(n1664), 
	.A1(n1500), 
	.A0(n1465));
   AOI22XLM U1370 (.Y(n1045), 
	.B1(reg1[0]), 
	.B0(n1043), 
	.A1(reg3[0]), 
	.A0(n1044));
   OAI2BB1XLM U1372 (.Y(n1325), 
	.B0(n1545), 
	.A1N(n1544), 
	.A0N(n1546));
   NOR2XLM U1373 (.Y(n1055), 
	.B(n1810), 
	.A(n902));
   AND3XLM U1375 (.Y(rx_ratio[1]), 
	.C(n1223), 
	.B(n1224), 
	.A(n1222));
   AND3XLM U1376 (.Y(rx_ratio[2]), 
	.C(n1223), 
	.B(n1224), 
	.A(n1225));
   OAI211XLM U1377 (.Y(n1753), 
	.C0(n1747), 
	.B0(n1748), 
	.A1(n1749), 
	.A0(n1800));
   OAI211XLM U1378 (.Y(n1761), 
	.C0(n1755), 
	.B0(n1756), 
	.A1(n1757), 
	.A0(n1800));
   OAI22XLM U1379 (.Y(n1169), 
	.B1(n1175), 
	.B0(n1320), 
	.A1(n1552), 
	.A0(n1679));
   OAI211XLM U1380 (.Y(n1785), 
	.C0(n1779), 
	.B0(n1780), 
	.A1(n1781), 
	.A0(n1800));
   NAND4XLM U1381 (.Y(n1004), 
	.D(n995), 
	.C(n996), 
	.B(n997), 
	.A(n998));
   NAND4XLM U1383 (.Y(n1128), 
	.D(n1123), 
	.C(n1692), 
	.B(n1124), 
	.A(n1125));
   OAI22XLM U1384 (.Y(n1525), 
	.B1(FIFO_u_r_ptr_synch[3]), 
	.B0(FIFO_u_U4_WR_PTR_GRAY_NEXT[3]), 
	.A1(FIFO_u_r_ptr_synch[1]), 
	.A0(n1526));
   NAND3XLM U1386 (.Y(n945), 
	.C(n943), 
	.B(n944), 
	.A(n946));
   AOI32XLM U1394 (.Y(n1811), 
	.B1(n1703), 
	.B0(n1702), 
	.A2(n1807), 
	.A1(n1703), 
	.A0(FIFO_u_U1_mem[24]));
   AOI222XLM U1395 (.Y(n994), 
	.C1(rd_data[5]), 
	.C0(n1524), 
	.B1(n1049), 
	.B0(n992), 
	.A1(n1051), 
	.A0(n993));
   AOI222XLM U1396 (.Y(n1005), 
	.C1(rd_data[2]), 
	.C0(n1524), 
	.B1(n1049), 
	.B0(n1003), 
	.A1(n1051), 
	.A0(n1004));
   NOR2X2M U1397 (.Y(n1838), 
	.B(n1732), 
	.A(n1728));
   OAI21XLM U1399 (.Y(n1858), 
	.B0(n1853), 
	.A1(n1856), 
	.A0(n1851));
   NAND2XLM U1400 (.Y(n1690), 
	.B(n1851), 
	.A(n1853));
   NOR2X2M U1402 (.Y(n1422), 
	.B(n1173), 
	.A(n1152));
   OAI211XLM U1403 (.Y(n1720), 
	.C0(n938), 
	.B0(n897), 
	.A1(n943), 
	.A0(n1914));
   NAND2XLM U1404 (.Y(n1211), 
	.B(UART_TX_RX_U0_UART_RX_U7_sample_valid_d), 
	.A(UART_TX_RX_U0_UART_RX_stp_done));
   NAND2XLM U1405 (.Y(alu_clk_en_test), 
	.B(n613), 
	.A(n1323));
   AOI22XLM U1406 (.Y(n825), 
	.B1(n949), 
	.B0(n1749), 
	.A1(FE_OFN4_n1746), 
	.A0(n950));
   AOI22XLM U1407 (.Y(n824), 
	.B1(n949), 
	.B0(n1757), 
	.A1(FE_OFN5_n1754), 
	.A0(n950));
   AOI22XLM U1408 (.Y(n822), 
	.B1(n949), 
	.B0(n1773), 
	.A1(FE_OFN7_n1770), 
	.A0(n950));
   AOI22XLM U1409 (.Y(n837), 
	.B1(n911), 
	.B0(n1783), 
	.A1(FE_OFN8_n1778), 
	.A0(n912));
   AOI22XLM U1410 (.Y(n835), 
	.B1(n911), 
	.B0(n1805), 
	.A1(FE_OFN10_n1794), 
	.A0(n912));
   AOI22XLM U1411 (.Y(n638), 
	.B1(n1215), 
	.B0(n1248), 
	.A1(n1246), 
	.A0(n1216));
   OAI21XLM U1414 (.Y(n786), 
	.B0(n942), 
	.A1(n1735), 
	.A0(n938));
   OAI2BB1XLM U1416 (.Y(ALU_u_ALU_OUT_Comb[13]), 
	.B0(n1330), 
	.A1N(intadd_2_SUM_3_), 
	.A0N(n1422));
   NOR2XLM U1421 (.Y(n905), 
	.B(n1865), 
	.A(sys_ctrl_u_current_state[1]));
   NOR2XLM U1423 (.Y(n1863), 
	.B(sys_ctrl_u_current_state[3]), 
	.A(sys_ctrl_u_current_state[0]));
   NOR2XLM U1425 (.Y(n895), 
	.B(sys_ctrl_u_current_state[2]), 
	.A(sys_ctrl_u_current_state[1]));
   NAND2XLM U1426 (.Y(n917), 
	.B(n895), 
	.A(sys_ctrl_u_current_state[3]));
   NAND2XLM U1428 (.Y(n890), 
	.B(n906), 
	.A(rd_data_vld));
   OAI2BB2XLM U1430 (.Y(n889), 
	.B1(n905), 
	.B0(sys_ctrl_u_current_state[3]), 
	.A1N(n895), 
	.A0N(n922));
   AOI22XLM U1431 (.Y(n891), 
	.B1(n889), 
	.B0(n1914), 
	.A1(n890), 
	.A0(n907));
   OAI21XLM U1432 (.Y(n926), 
	.B0(n891), 
	.A1(n903), 
	.A0(alu_out_v));
   AOI31XLM U1433 (.Y(n946), 
	.B0(n926), 
	.A2(n892), 
	.A1(fifo_full), 
	.A0(n905));
   NOR2XLM U1435 (.Y(n904), 
	.B(n922), 
	.A(sys_ctrl_u_current_state[3]));
   NAND3BXLM U1436 (.Y(n902), 
	.C(sys_ctrl_u_current_state[1]), 
	.B(n904), 
	.AN(sys_ctrl_u_current_state[2]));
   NAND4XLM U1438 (.Y(n916), 
	.D(synced_p_data[7]), 
	.C(n895), 
	.B(n1863), 
	.A(synced_p_data[3]));
   NAND3XLM U1440 (.Y(n893), 
	.C(n1831), 
	.B(n946), 
	.A(synced_p_data[5]));
   NOR4XLM U1441 (.Y(n925), 
	.D(n893), 
	.C(n916), 
	.B(n1869), 
	.A(synced_p_data[2]));
   OAI21XLM U1444 (.Y(n894), 
	.B0(sys_ctrl_u_current_state[2]), 
	.A1(n921), 
	.A0(n1863));
   OAI211XLM U1445 (.Y(n651), 
	.C0(n894), 
	.B0(n947), 
	.A1(n902), 
	.A0(n921));
   NAND4XLM U1446 (.Y(n930), 
	.D(n904), 
	.C(sys_ctrl_u_current_state[2]), 
	.B(sys_ctrl_u_current_state[1]), 
	.A(SO[1]));
   NAND2XLM U1447 (.Y(n943), 
	.B(n895), 
	.A(n904));
   NOR2BXLM U1448 (.Y(n896), 
	.B(sys_ctrl_u_cfg_locked), 
	.AN(sys_ctrl_u_wr_addr[1]));
   OAI31XLM U1449 (.Y(n897), 
	.B0(n1861), 
	.A2(n896), 
	.A1(sys_ctrl_u_wr_addr[3]), 
	.A0(sys_ctrl_u_wr_addr[2]));
   NAND4XLM U1450 (.Y(n938), 
	.D(n1865), 
	.C(n1863), 
	.B(SO[1]), 
	.A(sys_ctrl_u_current_state[1]));
   NAND3BXLM U1452 (.Y(n898), 
	.C(n929), 
	.B(n1720), 
	.AN(sys_ctrl_u_wr_addr[2]));
   NOR2XLM U1453 (.Y(n1862), 
	.B(n898), 
	.A(sys_ctrl_u_wr_addr[0]));
   AOI32XLM U1454 (.Y(n900), 
	.B1(sys_ctrl_u_reg3_cfg), 
	.B0(n1862), 
	.A2(n1720), 
	.A1(sys_ctrl_u_reg3_cfg), 
	.A0(sys_ctrl_u_reg2_cfg));
   NAND2XLM U1455 (.Y(n928), 
	.B(n1861), 
	.A(sys_ctrl_u_wr_addr[0]));
   AOI21XLM U1456 (.Y(n899), 
	.B0(sys_ctrl_u_cfg_locked), 
	.A1(n1845), 
	.A0(sys_ctrl_u_reg2_cfg));
   OAI21XLM U1457 (.Y(n650), 
	.B0(n899), 
	.A1(n900), 
	.A0(n930));
   NAND2XLM U1458 (.Y(n1154), 
	.B(synced_p_data[0]), 
	.A(n1898));
   NAND2XLM U1460 (.Y(n1742), 
	.B(n914), 
	.A(FIFO_u_w_addr[0]));
   NOR3X2M U1461 (.Y(n912), 
	.C(n1742), 
	.B(n1738), 
	.A(FIFO_u_w_addr[1]));
   AOI222XLM U1462 (.Y(n1794), 
	.C1(rd_data[1]), 
	.C0(n908), 
	.B1(sys_ctrl_u_frame2[1]), 
	.B0(n909), 
	.A1(alu_out[1]), 
	.A0(n910));
   AOI222XLM U1464 (.Y(n1745), 
	.C1(rd_data[0]), 
	.C0(n908), 
	.B1(sys_ctrl_u_frame2[0]), 
	.B0(n909), 
	.A1(alu_out[0]), 
	.A0(n910));
   AOI222XLM U1466 (.Y(n1778), 
	.C1(rd_data[3]), 
	.C0(n908), 
	.B1(sys_ctrl_u_frame2[3]), 
	.B0(n909), 
	.A1(alu_out[3]), 
	.A0(n910));
   AOI222XLM U1467 (.Y(n1770), 
	.C1(rd_data[4]), 
	.C0(n908), 
	.B1(sys_ctrl_u_frame2[4]), 
	.B0(n909), 
	.A1(alu_out[4]), 
	.A0(n910));
   AOI222XLM U1469 (.Y(n1786), 
	.C1(rd_data[2]), 
	.C0(n908), 
	.B1(sys_ctrl_u_frame2[2]), 
	.B0(n909), 
	.A1(alu_out[2]), 
	.A0(n910));
   AOI222XLM U1471 (.Y(n1762), 
	.C1(rd_data[5]), 
	.C0(n908), 
	.B1(sys_ctrl_u_frame2[5]), 
	.B0(n909), 
	.A1(alu_out[5]), 
	.A0(n910));
   AOI222XLM U1473 (.Y(n1754), 
	.C1(rd_data[6]), 
	.C0(n908), 
	.B1(sys_ctrl_u_frame2[6]), 
	.B0(n909), 
	.A1(alu_out[6]), 
	.A0(n910));
   AOI222XLM U1475 (.Y(n1746), 
	.C1(rd_data[7]), 
	.C0(n908), 
	.B1(sys_ctrl_u_frame2[7]), 
	.B0(n909), 
	.A1(alu_out[7]), 
	.A0(n910));
   NOR2XLM U1477 (.Y(n924), 
	.B(n1829), 
	.A(n1866));
   NAND4XLM U1479 (.Y(n915), 
	.D(n1830), 
	.C(n1869), 
	.B(synced_p_data[6]), 
	.A(synced_p_data[2]));
   NOR2XLM U1480 (.Y(n919), 
	.B(n915), 
	.A(n916));
   AOI22XLM U1481 (.Y(n944), 
	.B1(n919), 
	.B0(n924), 
	.A1(n1863), 
	.A0(sys_ctrl_u_current_state[1]));
   NOR2XLM U1482 (.Y(n920), 
	.B(synced_p_data[4]), 
	.A(synced_p_data[0]));
   NOR2XLM U1483 (.Y(n964), 
	.B(n917), 
	.A(sys_ctrl_u_current_state[0]));
   AOI211XLM U1484 (.Y(n923), 
	.C0(n964), 
	.B0(n918), 
	.A1(n919), 
	.A0(n920));
   AOI32XLM U1485 (.Y(n653), 
	.B1(n921), 
	.B0(n922), 
	.A2(n923), 
	.A1(n946), 
	.A0(n944));
   AOI22XLM U1486 (.Y(n927), 
	.B1(n924), 
	.B0(n925), 
	.A1(n926), 
	.A0(sys_ctrl_u_current_state[3]));
   NAND2XLM U1487 (.Y(n879), 
	.B(n931), 
	.A(n927));
   NAND2X2M U1488 (.Y(n1735), 
	.B(SO[1]), 
	.A(synced_p_data[0]));
   AOI22XLM U1489 (.Y(n956), 
	.B1(sys_ctrl_u_wr_addr[2]), 
	.B0(n1861), 
	.A1(n964), 
	.A0(n1058));
   AOI22X1M U1490 (.Y(n959), 
	.B1(sys_ctrl_u_wr_addr[1]), 
	.B0(n1861), 
	.A1(n964), 
	.A0(n1652));
   NAND2XLM U1491 (.Y(n933), 
	.B(reg0[2]), 
	.A(n1535));
   NAND2XLM U1492 (.Y(n934), 
	.B(reg0[0]), 
	.A(n1535));
   NAND2XLM U1493 (.Y(n935), 
	.B(reg0[3]), 
	.A(n1535));
   AOI22XLM U1495 (.Y(n735), 
	.B1(n1054), 
	.B0(n1108), 
	.A1(n1828), 
	.A0(n1827));
   NAND2XLM U1498 (.Y(n939), 
	.B(synced_p_data[7]), 
	.A(n1537));
   OAI21XLM U1499 (.Y(n647), 
	.B0(n939), 
	.A1(n1642), 
	.A0(n1537));
   NAND2XLM U1501 (.Y(n940), 
	.B(synced_p_data[5]), 
	.A(n1537));
   OAI21XLM U1502 (.Y(n700), 
	.B0(n940), 
	.A1(n1627), 
	.A0(n1537));
   NAND2XLM U1504 (.Y(n941), 
	.B(synced_p_data[6]), 
	.A(n1537));
   OAI21XLM U1505 (.Y(n683), 
	.B0(n941), 
	.A1(n1632), 
	.A0(n1537));
   NAND2XLM U1507 (.Y(n942), 
	.B(reg1[0]), 
	.A(n938));
   OAI21XLM U1508 (.Y(n948), 
	.B0(n945), 
	.A1(sys_ctrl_u_current_state[1]), 
	.A0(n946));
   NAND2XLM U1509 (.Y(n652), 
	.B(n947), 
	.A(n948));
   AOI22XLM U1511 (.Y(n826), 
	.B1(n949), 
	.B0(n1699), 
	.A1(FE_OFN2_n1745), 
	.A0(n950));
   AOI22XLM U1513 (.Y(n819), 
	.B1(n949), 
	.B0(n1799), 
	.A1(FE_OFN10_n1794), 
	.A0(n950));
   AOI22XLM U1515 (.Y(n823), 
	.B1(n949), 
	.B0(n1765), 
	.A1(FE_OFN6_n1762), 
	.A0(n950));
   AOI22XLM U1519 (.Y(n820), 
	.B1(n949), 
	.B0(n1789), 
	.A1(FE_OFN9_n1786), 
	.A0(n950));
   AOI22XLM U1522 (.Y(n821), 
	.B1(n949), 
	.B0(n1781), 
	.A1(FE_OFN8_n1778), 
	.A0(n950));
   AOI22XLM U1523 (.Y(n963), 
	.B1(Regfile_u_reg_file_6__7_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_4__7_), 
	.A0(n1731));
   AOI22XLM U1524 (.Y(n962), 
	.B1(Regfile_u_reg_file_14__7_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_12__7_), 
	.A0(n1723));
   AOI22XLM U1525 (.Y(n961), 
	.B1(Regfile_u_reg_file_10__7_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_8__7_), 
	.A0(n1727));
   AOI22XLM U1526 (.Y(n960), 
	.B1(FE_OFN17_reg0_7_), 
	.B0(n1043), 
	.A1(reg2[7]), 
	.A0(n1044));
   NAND2XLM U1527 (.Y(n1524), 
	.B(n964), 
	.A(SO[1]));
   AOI22XLM U1528 (.Y(n968), 
	.B1(Regfile_u_reg_file_7__7_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_5__7_), 
	.A0(n1731));
   AOI22XLM U1529 (.Y(n967), 
	.B1(Regfile_u_reg_file_15__7_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_13__7_), 
	.A0(n1723));
   AOI22XLM U1530 (.Y(n965), 
	.B1(FE_OFN16_reg1_7_), 
	.B0(n1043), 
	.A1(Regfile_u_n17), 
	.A0(n1044));
   AOI22XLM U1532 (.Y(n976), 
	.B1(reg2[1]), 
	.B0(n1044), 
	.A1(n1043), 
	.A0(reg0[1]));
   AOI22XLM U1533 (.Y(n975), 
	.B1(Regfile_u_reg_file_6__1_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_4__1_), 
	.A0(n1731));
   AOI22XLM U1534 (.Y(n974), 
	.B1(Regfile_u_reg_file_10__1_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_8__1_), 
	.A0(n1727));
   AOI22XLM U1535 (.Y(n973), 
	.B1(Regfile_u_reg_file_14__1_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_12__1_), 
	.A0(n1723));
   AOI22XLM U1536 (.Y(n980), 
	.B1(Regfile_u_reg_file_7__1_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_5__1_), 
	.A0(n1731));
   AOI22XLM U1537 (.Y(n979), 
	.B1(Regfile_u_reg_file_15__1_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_13__1_), 
	.A0(n1723));
   AOI22XLM U1538 (.Y(n978), 
	.B1(Regfile_u_reg_file_11__1_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_9__1_), 
	.A0(n1727));
   AOI22XLM U1539 (.Y(n977), 
	.B1(reg1[1]), 
	.B0(n1043), 
	.A1(reg3[1]), 
	.A0(n1044));
   AOI22XLM U1540 (.Y(n987), 
	.B1(Regfile_u_reg_file_6__5_), 
	.B0(n1729), 
	.A1(n1731), 
	.A0(SO[2]));
   AOI22XLM U1541 (.Y(n986), 
	.B1(Regfile_u_reg_file_14__5_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_12__5_), 
	.A0(n1723));
   AOI22XLM U1542 (.Y(n985), 
	.B1(Regfile_u_reg_file_10__5_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_8__5_), 
	.A0(n1727));
   AOI22XLM U1543 (.Y(n984), 
	.B1(FE_OFN21_reg0_5_), 
	.B0(n1043), 
	.A1(reg2[5]), 
	.A0(n1044));
   AOI22XLM U1544 (.Y(n991), 
	.B1(Regfile_u_reg_file_7__5_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_5__5_), 
	.A0(n1731));
   AOI22XLM U1545 (.Y(n989), 
	.B1(Regfile_u_reg_file_11__5_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_9__5_), 
	.A0(n1727));
   AOI22XLM U1546 (.Y(n988), 
	.B1(FE_OFN23_reg1_5_), 
	.B0(n1043), 
	.A1(reg3[5]), 
	.A0(n1044));
   AOI22XLM U1548 (.Y(n998), 
	.B1(n1044), 
	.B0(reg2[2]), 
	.A1(n1043), 
	.A0(reg0[2]));
   AOI22XLM U1549 (.Y(n997), 
	.B1(Regfile_u_reg_file_6__2_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_4__2_), 
	.A0(n1731));
   AOI22XLM U1550 (.Y(n996), 
	.B1(Regfile_u_reg_file_10__2_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_8__2_), 
	.A0(n1727));
   AOI22XLM U1551 (.Y(n995), 
	.B1(Regfile_u_reg_file_14__2_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_12__2_), 
	.A0(n1723));
   AOI22XLM U1552 (.Y(n1002), 
	.B1(Regfile_u_reg_file_7__2_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_5__2_), 
	.A0(n1731));
   AOI22XLM U1553 (.Y(n1000), 
	.B1(Regfile_u_reg_file_11__2_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_9__2_), 
	.A0(n1727));
   AOI22XLM U1554 (.Y(n999), 
	.B1(reg1[2]), 
	.B0(n1043), 
	.A1(reg3[2]), 
	.A0(n1044));
   AOI22XLM U1556 (.Y(n1009), 
	.B1(n1044), 
	.B0(reg2[4]), 
	.A1(n1043), 
	.A0(FE_OFN22_reg0_4_));
   AOI22XLM U1557 (.Y(n1008), 
	.B1(Regfile_u_reg_file_6__4_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_4__4_), 
	.A0(n1731));
   AOI22XLM U1558 (.Y(n1007), 
	.B1(Regfile_u_reg_file_10__4_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_8__4_), 
	.A0(n1727));
   AOI22XLM U1559 (.Y(n1006), 
	.B1(Regfile_u_reg_file_14__4_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_12__4_), 
	.A0(n1723));
   AOI22XLM U1560 (.Y(n1013), 
	.B1(Regfile_u_reg_file_7__4_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_5__4_), 
	.A0(n1731));
   AOI22XLM U1561 (.Y(n1012), 
	.B1(Regfile_u_reg_file_15__4_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_13__4_), 
	.A0(n1723));
   AOI22XLM U1562 (.Y(n1011), 
	.B1(Regfile_u_reg_file_11__4_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_9__4_), 
	.A0(n1727));
   AOI22XLM U1563 (.Y(n1010), 
	.B1(FE_OFN19_reg1_4_), 
	.B0(n1043), 
	.A1(reg3[4]), 
	.A0(n1044));
   AOI22XLM U1565 (.Y(n1020), 
	.B1(Regfile_u_reg_file_6__6_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_4__6_), 
	.A0(n1731));
   AOI22XLM U1566 (.Y(n1019), 
	.B1(Regfile_u_reg_file_14__6_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_12__6_), 
	.A0(n1723));
   AOI22XLM U1567 (.Y(n1018), 
	.B1(Regfile_u_reg_file_10__6_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_8__6_), 
	.A0(n1727));
   AOI22XLM U1568 (.Y(n1017), 
	.B1(FE_OFN20_reg0_6_), 
	.B0(n1043), 
	.A1(reg2[6]), 
	.A0(n1044));
   AOI22XLM U1569 (.Y(n1024), 
	.B1(Regfile_u_reg_file_7__6_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_5__6_), 
	.A0(n1731));
   AOI22XLM U1570 (.Y(n1023), 
	.B1(Regfile_u_reg_file_15__6_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_13__6_), 
	.A0(n1723));
   AOI22XLM U1571 (.Y(n1022), 
	.B1(Regfile_u_reg_file_11__6_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_9__6_), 
	.A0(n1727));
   AOI22XLM U1572 (.Y(n1021), 
	.B1(FE_OFN18_reg1_6_), 
	.B0(n1043), 
	.A1(Regfile_u_n18), 
	.A0(n1044));
   AOI22XLM U1573 (.Y(n1031), 
	.B1(n1044), 
	.B0(reg2[3]), 
	.A1(n1043), 
	.A0(reg0[3]));
   AOI22XLM U1574 (.Y(n1030), 
	.B1(Regfile_u_reg_file_6__3_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_4__3_), 
	.A0(n1731));
   AOI22XLM U1575 (.Y(n1029), 
	.B1(Regfile_u_reg_file_10__3_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_8__3_), 
	.A0(n1727));
   AOI22XLM U1576 (.Y(n1028), 
	.B1(Regfile_u_reg_file_14__3_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_12__3_), 
	.A0(n1723));
   AOI22XLM U1577 (.Y(n1035), 
	.B1(Regfile_u_reg_file_7__3_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_5__3_), 
	.A0(n1731));
   AOI22XLM U1578 (.Y(n1034), 
	.B1(Regfile_u_reg_file_15__3_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_13__3_), 
	.A0(n1723));
   AOI22XLM U1579 (.Y(n1033), 
	.B1(Regfile_u_reg_file_11__3_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_9__3_), 
	.A0(n1727));
   AOI22XLM U1580 (.Y(n1032), 
	.B1(reg1[3]), 
	.B0(n1043), 
	.A1(reg3[3]), 
	.A0(n1044));
   AOI22XLM U1582 (.Y(n1042), 
	.B1(n1044), 
	.B0(reg2[0]), 
	.A1(n1043), 
	.A0(reg0[0]));
   AOI22XLM U1583 (.Y(n1041), 
	.B1(Regfile_u_reg_file_6__0_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_4__0_), 
	.A0(n1731));
   AOI22XLM U1584 (.Y(n1040), 
	.B1(Regfile_u_reg_file_10__0_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_8__0_), 
	.A0(n1727));
   AOI22XLM U1585 (.Y(n1039), 
	.B1(Regfile_u_reg_file_14__0_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_12__0_), 
	.A0(n1723));
   AOI22XLM U1586 (.Y(n1048), 
	.B1(Regfile_u_reg_file_7__0_), 
	.B0(n1729), 
	.A1(Regfile_u_reg_file_5__0_), 
	.A0(n1731));
   AOI22XLM U1587 (.Y(n1047), 
	.B1(Regfile_u_reg_file_15__0_), 
	.B0(n1719), 
	.A1(Regfile_u_reg_file_13__0_), 
	.A0(n1723));
   AOI22XLM U1588 (.Y(n1046), 
	.B1(Regfile_u_reg_file_11__0_), 
	.B0(n1725), 
	.A1(Regfile_u_reg_file_9__0_), 
	.A0(n1727));
   AOI22XLM U1591 (.Y(n684), 
	.B1(n1054), 
	.B0(n1114), 
	.A1(n1831), 
	.A0(n1827));
   AOI22XLM U1593 (.Y(n701), 
	.B1(n1054), 
	.B0(n1117), 
	.A1(n1830), 
	.A0(n1827));
   AOI22XLM U1595 (.Y(n718), 
	.B1(n1054), 
	.B0(n1078), 
	.A1(n1829), 
	.A0(n1827));
   AOI22XLM U1598 (.Y(n667), 
	.B1(n1054), 
	.B0(n1223), 
	.A1(n1844), 
	.A0(n1827));
   AOI22XLM U1600 (.Y(n864), 
	.B1(n1054), 
	.B0(n1235), 
	.A1(n1735), 
	.A0(n1827));
   NOR2XLM U1606 (.Y(n1061), 
	.B(n1900), 
	.A(UART_TX_RX_U0_UART_TX_U2_current_state[2]));
   OR2X1M U1607 (.Y(n1694), 
	.B(n1901), 
	.A(UART_TX_RX_U0_UART_TX_U2_current_state[2]));
   NAND2XLM U1608 (.Y(UART_TX_RX_U0_UART_TX_U2_next_state[1]), 
	.B(n1694), 
	.A(n1509));
   OAI21XLM U1610 (.Y(n1062), 
	.B0(n1061), 
	.A1(n1695), 
	.A0(n1901));
   OAI31XLM U1611 (.Y(UART_TX_RX_U0_UART_TX_U2_next_state[0]), 
	.B0(n1062), 
	.A2(fifo_empty), 
	.A1(UART_TX_RX_U0_UART_TX_U2_current_state[2]), 
	.A0(UART_TX_RX_U0_UART_TX_U2_current_state[1]));
   NOR3BXLM U1613 (.Y(n1064), 
	.C(Pulse_U_pls_flop), 
	.B(fifo_empty), 
	.AN(Pulse_U_rcv_flop));
   NAND2XLM U1614 (.Y(n1063), 
	.B(n1064), 
	.A(FIFO_u_r_addr[0]));
   NOR2XLM U1615 (.Y(n1066), 
	.B(n1063), 
	.A(n1696));
   AOI21XLM U1616 (.Y(FIFO_u_U5_RD_PTR_BIN_NEXT[1]), 
	.B0(n1066), 
	.A1(n1063), 
	.A0(n1696));
   OAI21XLM U1617 (.Y(n1065), 
	.B0(n1063), 
	.A1(n1064), 
	.A0(FIFO_u_r_addr[0]));
   OAI22XLM U1619 (.Y(n1514), 
	.B1(FIFO_u_U5_RD_PTR_BIN_NEXT[0]), 
	.B0(FIFO_u_U5_RD_PTR_BIN_NEXT[1]), 
	.A1(n1696), 
	.A0(n1065));
   NOR2XLM U1621 (.Y(n1071), 
	.B(UART_TX_RX_U0_UART_TX_U2_current_state[1]), 
	.A(n1509));
   NOR2X2M U1623 (.Y(n1809), 
	.B(n1825), 
	.A(UART_TX_RX_U0_UART_TX_U1_loading));
   NOR2XLM U1627 (.Y(n1511), 
	.B(n1705), 
	.A(n1704));
   OAI21XLM U1629 (.Y(n1206), 
	.B0(UART_TX_RX_U0_UART_TX_U1_loading), 
	.A1(n1711), 
	.A0(n1511));
   NAND2XLM U1630 (.Y(n863), 
	.B(n1206), 
	.A(n1713));
   NAND2XLM U1631 (.Y(n1067), 
	.B(n1066), 
	.A(FIFO_u_r_addr[2]));
   OAI21XLM U1632 (.Y(n1069), 
	.B0(n1067), 
	.A1(n1066), 
	.A0(FIFO_u_r_addr[2]));
   XOR2XLM U1634 (.Y(n1517), 
	.B(n1067), 
	.A(FIFO_u_U5_RD_PTR_BIN_3_));
   AOI22XLM U1635 (.Y(FIFO_u_U5_RD_PTR_GRAY_NEXT[2]), 
	.B1(n1069), 
	.B0(n1517), 
	.A1(FIFO_u_U5_RD_PTR_BIN_3_), 
	.A0(FIFO_u_U5_RD_PTR_BIN_NEXT[2]));
   AOI211XLM U1638 (.Y(n1070), 
	.C0(n1901), 
	.B0(UART_TX_RX_U0_UART_TX_U2_current_state[2]), 
	.A1(UART_TX_RX_U0_UART_TX_ser_data), 
	.A0(UART_TX_RX_U0_UART_TX_U2_current_state[0]));
   NAND2XLM U1640 (.Y(n1714), 
	.B(n1075), 
	.A(UART_TX_RX_U0_UART_RX_U7_c_state[1]));
   OAI211XLM U1642 (.Y(n1213), 
	.C0(UART_TX_RX_U0_UART_RX_samp_valid), 
	.B0(n1231), 
	.A1(UART_TX_RX_U0_UART_RX_U7_c_state[0]), 
	.A0(reg2[0]));
   NAND4XLM U1646 (.Y(n1218), 
	.D(UART_TX_RX_U0_UART_RX_U4_count[3]), 
	.C(n1074), 
	.B(n1073), 
	.A(n1221));
   NAND2BXLM U1647 (.Y(n1072), 
	.B(n1218), 
	.AN(n1213));
   AOI2BB2XLM U1649 (.Y(n1859), 
	.B1(n1847), 
	.B0(UART_TX_RX_U0_UART_RX_U4_parity_reg), 
	.A1N(UART_TX_RX_U0_UART_RX_U4_parity_reg), 
	.A0N(n1847));
   OAI2BB2XLM U1650 (.Y(n663), 
	.B1(n1859), 
	.B0(n1072), 
	.A1N(n1213), 
	.A0N(UART_TX_RX_U0_UART_RX_U4_parity_reg));
   NOR2XLM U1651 (.Y(n1522), 
	.B(n1073), 
	.A(n1213));
   AOI21XLM U1652 (.Y(n662), 
	.B0(n1522), 
	.A1(n1072), 
	.A0(n1073));
   AOI221XLM U1653 (.Y(n1217), 
	.C0(n1213), 
	.B1(n1218), 
	.B0(n1073), 
	.A1(n1218), 
	.A0(n1074));
   NAND2XLM U1654 (.Y(n1521), 
	.B(n1522), 
	.A(UART_TX_RX_U0_UART_RX_U4_count[1]));
   AOI22XLM U1655 (.Y(n660), 
	.B1(n1221), 
	.B0(n1521), 
	.A1(n1217), 
	.A0(UART_TX_RX_U0_UART_RX_U4_count[2]));
   NOR3XLM U1656 (.Y(n1520), 
	.C(n1075), 
	.B(UART_TX_RX_U0_UART_RX_U7_c_state[0]), 
	.A(UART_TX_RX_U0_UART_RX_U7_c_state[1]));
   AOI221X1M U1657 (.Y(n1846), 
	.C0(n1520), 
	.B1(n1075), 
	.B0(UART_TX_RX_U0_UART_RX_U7_c_state[0]), 
	.A1(n1075), 
	.A0(UART_TX_RX_U0_UART_RX_U7_c_state[1]));
   AOI22XLM U1659 (.Y(n1120), 
	.B1(n1117), 
	.B0(UART_TX_RX_U0_UART_RX_edge_cnt[2]), 
	.A1(n1105), 
	.A0(reg2[5]));
   NOR2XLM U1660 (.Y(n1077), 
	.B(n1078), 
	.A(n1108));
   OAI22XLM U1663 (.Y(n1116), 
	.B1(reg2[4]), 
	.B0(UART_TX_RX_U0_UART_RX_edge_cnt[1]), 
	.A1(n1685), 
	.A0(n1078));
   OAI21XLM U1664 (.Y(n1110), 
	.B0(n1116), 
	.A1(n1686), 
	.A0(reg2[3]));
   NAND2XLM U1665 (.Y(n1091), 
	.B(UART_TX_RX_U0_UART_RX_edge_cnt[0]), 
	.A(reg2[3]));
   OAI211XLM U1666 (.Y(n1076), 
	.C0(n1091), 
	.B0(n1110), 
	.A1(n1077), 
	.A0(n1120));
   AOI21XLM U1667 (.Y(n1088), 
	.B0(n1076), 
	.A1(n1077), 
	.A0(n1120));
   AOI22XLM U1669 (.Y(n1107), 
	.B1(n1126), 
	.B0(reg2[7]), 
	.A1(n1223), 
	.A0(UART_TX_RX_U0_UART_RX_edge_cnt[4]));
   NOR3XLM U1670 (.Y(n1083), 
	.C(n1078), 
	.B(n1108), 
	.A(n1117));
   NOR2XLM U1671 (.Y(n1080), 
	.B(n1081), 
	.A(n1114));
   OAI22XLM U1672 (.Y(n1079), 
	.B1(n1080), 
	.B0(n1107), 
	.A1(reg2[3]), 
	.A0(n1116));
   AOI21XLM U1673 (.Y(n1087), 
	.B0(n1079), 
	.A1(n1080), 
	.A0(n1107));
   NAND2XLM U1674 (.Y(n1084), 
	.B(n1114), 
	.A(UART_TX_RX_U0_UART_RX_edge_cnt[3]));
   OAI211XLM U1676 (.Y(n1082), 
	.C0(n1688), 
	.B0(reg2[6]), 
	.A1(n1223), 
	.A0(UART_TX_RX_U0_UART_RX_edge_cnt[5]));
   AOI22XLM U1677 (.Y(n1122), 
	.B1(n1688), 
	.B0(n1114), 
	.A1(reg2[6]), 
	.A0(UART_TX_RX_U0_UART_RX_edge_cnt[3]));
   OR2X1M U1678 (.Y(n1111), 
	.B(UART_TX_RX_U0_UART_RX_edge_cnt[5]), 
	.A(n1122));
   AOI32XLM U1679 (.Y(n1086), 
	.B1(n1111), 
	.B0(n1081), 
	.A2(n1082), 
	.A1(n1083), 
	.A0(n1084));
   OAI21XLM U1680 (.Y(n1085), 
	.B0(UART_TX_RX_U0_UART_RX_edge_cnt[5]), 
	.A1(n1223), 
	.A0(n1114));
   NAND4XLM U1681 (.Y(n1848), 
	.D(n1085), 
	.C(n1086), 
	.B(n1087), 
	.A(n1088));
   NOR2XLM U1682 (.Y(UART_TX_RX_U0_UART_RX_U2_N39), 
	.B(n1848), 
	.A(n1846));
   NOR2XLM U1683 (.Y(n1225), 
	.B(n1117), 
	.A(reg2[6]));
   NOR2XLM U1684 (.Y(n1222), 
	.B(n1114), 
	.A(reg2[5]));
   NOR2XLM U1685 (.Y(n1119), 
	.B(reg2[4]), 
	.A(reg2[3]));
   NOR2BXLM U1686 (.Y(n1224), 
	.B(reg2[2]), 
	.AN(n1119));
   NAND2XLM U1687 (.Y(n1104), 
	.B(UART_TX_RX_U0_UART_RX_edge_cnt[1]), 
	.A(UART_TX_RX_U0_UART_RX_edge_cnt[0]));
   NAND3XLM U1688 (.Y(n1687), 
	.C(UART_TX_RX_U0_UART_RX_edge_cnt[1]), 
	.B(UART_TX_RX_U0_UART_RX_edge_cnt[0]), 
	.A(UART_TX_RX_U0_UART_RX_edge_cnt[2]));
   OA21XLM U1690 (.Y(n1089), 
	.B0(UART_TX_RX_U0_UART_RX_bit_cnt[1]), 
	.A1(UART_TX_RX_U0_UART_RX_bit_cnt[0]), 
	.A0(n1235));
   AOI221XLM U1691 (.Y(n1853), 
	.C0(n1846), 
	.B1(UART_TX_RX_U0_UART_RX_bit_cnt[3]), 
	.B0(n1089), 
	.A1(UART_TX_RX_U0_UART_RX_bit_cnt[3]), 
	.A0(UART_TX_RX_U0_UART_RX_bit_cnt[2]));
   NOR2XLM U1692 (.Y(n1096), 
	.B(reg2[6]), 
	.A(n1097));
   AOI221XLM U1695 (.Y(n1093), 
	.C0(n1224), 
	.B1(reg2[4]), 
	.B0(reg2[3]), 
	.A1(reg2[4]), 
	.A0(reg2[2]));
   NAND2XLM U1696 (.Y(n1123), 
	.B(n1686), 
	.A(n1108));
   AOI22XLM U1697 (.Y(n1090), 
	.B1(n1123), 
	.B0(UART_TX_RX_U0_UART_RX_edge_cnt[1]), 
	.A1(n1108), 
	.A0(reg2[2]));
   OAI21XLM U1698 (.Y(n1092), 
	.B0(n1090), 
	.A1(n1091), 
	.A0(reg2[2]));
   OAI21XLM U1699 (.Y(n1094), 
	.B0(n1097), 
	.A1(n1117), 
	.A0(n1224));
   AOI222XLM U1700 (.Y(n1099), 
	.C1(n1094), 
	.C0(n1688), 
	.B1(n1094), 
	.B0(n1095), 
	.A1(n1688), 
	.A0(n1095));
   AOI21XLM U1701 (.Y(n1098), 
	.B0(n1096), 
	.A1(n1097), 
	.A0(reg2[6]));
   AOI222XLM U1702 (.Y(n1100), 
	.C1(n1098), 
	.C0(n1099), 
	.B1(n1098), 
	.B0(UART_TX_RX_U0_UART_RX_edge_cnt[4]), 
	.A1(n1099), 
	.A0(UART_TX_RX_U0_UART_RX_edge_cnt[4]));
   OAI211XLM U1703 (.Y(n1102), 
	.C0(n1103), 
	.B0(reg2[7]), 
	.A1(n1100), 
	.A0(n1692));
   NAND2XLM U1704 (.Y(n1101), 
	.B(n1100), 
	.A(n1692));
   OAI211XLM U1705 (.Y(n1851), 
	.C0(n1101), 
	.B0(n1102), 
	.A1(n1103), 
	.A0(reg2[7]));
   AOI211XLM U1706 (.Y(UART_TX_RX_U0_UART_RX_U1_N113), 
	.C0(n1690), 
	.B0(n1689), 
	.A1(n1104), 
	.A0(n1105));
   NAND2XLM U1707 (.Y(n1106), 
	.B(n1689), 
	.A(UART_TX_RX_U0_UART_RX_edge_cnt[3]));
   NAND3XLM U1708 (.Y(n1691), 
	.C(n1689), 
	.B(UART_TX_RX_U0_UART_RX_edge_cnt[3]), 
	.A(UART_TX_RX_U0_UART_RX_edge_cnt[4]));
   AOI211XLM U1710 (.Y(UART_TX_RX_U0_UART_RX_U1_N115), 
	.C0(n1690), 
	.B0(n1693), 
	.A1(n1106), 
	.A0(n1126));
   OAI211XLM U1711 (.Y(n1109), 
	.C0(n1107), 
	.B0(n1120), 
	.A1(n1108), 
	.A0(UART_TX_RX_U0_UART_RX_edge_cnt[0]));
   NOR3XLM U1712 (.Y(n1113), 
	.C(n1109), 
	.B(n1110), 
	.A(n1111));
   NOR2XLM U1714 (.Y(n1112), 
	.B(n1113), 
	.A(UART_TX_RX_U0_UART_RX_U2_s1));
   AOI211XLM U1715 (.Y(n666), 
	.C0(n1112), 
	.B0(n1846), 
	.A1(n1132), 
	.A0(n1113));
   NAND3XLM U1716 (.Y(n1130), 
	.C(n1114), 
	.B(n1117), 
	.A(n1119));
   NOR2XLM U1717 (.Y(n1129), 
	.B(UART_TX_RX_U0_UART_RX_edge_cnt[4]), 
	.A(n1223));
   NAND2XLM U1720 (.Y(n1121), 
	.B(n1117), 
	.A(n1119));
   OAI22XLM U1721 (.Y(n1118), 
	.B1(n1122), 
	.B0(n1121), 
	.A1(n1120), 
	.A0(n1119));
   AOI221XLM U1722 (.Y(n1124), 
	.C0(n1118), 
	.B1(n1119), 
	.B0(n1120), 
	.A1(n1121), 
	.A0(n1122));
   OAI22XLM U1723 (.Y(n1127), 
	.B1(n1129), 
	.B0(n1130), 
	.A1(n1126), 
	.A0(reg2[7]));
   AOI211XLM U1724 (.Y(n1133), 
	.C0(n1127), 
	.B0(n1128), 
	.A1(n1129), 
	.A0(n1130));
   NOR2XLM U1725 (.Y(n1131), 
	.B(n1133), 
	.A(UART_TX_RX_U0_UART_RX_U2_s0));
   AOI211XLM U1726 (.Y(n665), 
	.C0(n1131), 
	.B0(n1846), 
	.A1(n1132), 
	.A0(n1133));
   AOI2BB2XLM U1727 (.Y(FIFO_u_U4_WR_PTR_BIN_NEXT[1]), 
	.B1(n1740), 
	.B0(n1742), 
	.A1N(n1742), 
	.A0N(n1740));
   NOR2XLM U1730 (.Y(n1135), 
	.B(FIFO_u_U4_WR_PTR_BIN_3_), 
	.A(n1736));
   AOI21XLM U1731 (.Y(FIFO_u_U4_WR_PTR_GRAY_NEXT[3]), 
	.B0(n1135), 
	.A1(n1736), 
	.A0(FIFO_u_U4_WR_PTR_BIN_3_));
   OR2X2M U1732 (.Y(n1136), 
	.B(FE_OFN23_reg1_5_), 
	.A(FE_OFN16_reg1_7_));
   NOR2X2M U1733 (.Y(n1409), 
	.B(FE_OFN18_reg1_6_), 
	.A(n1136));
   OR2X4M U1736 (.Y(n1138), 
	.B(n1269), 
	.A(n1343));
   NAND2X2M U1738 (.Y(n1140), 
	.B(reg1[1]), 
	.A(n1138));
   AOI21XLM U1740 (.Y(n1139), 
	.B0(n1147), 
	.A1(n1375), 
	.A0(reg1[0]));
   OA21X2M U1742 (.Y(n1186), 
	.B0(FE_OFN20_reg0_6_), 
	.A1(n1580), 
	.A0(n1256));
   NAND2XLM U1744 (.Y(n1552), 
	.B(FE_OFN23_reg1_5_), 
	.A(FE_OFN21_reg0_5_));
   OR2X1M U1746 (.Y(n1490), 
	.B(n1155), 
	.A(n1463));
   AOI22XLM U1748 (.Y(n1165), 
	.B1(FE_OFN20_reg0_6_), 
	.B0(n1665), 
	.A1(n1417), 
	.A0(FE_OFN22_reg0_4_));
   NAND2XLM U1749 (.Y(n1531), 
	.B(reg1[2]), 
	.A(reg0[1]));
   NAND2XLM U1752 (.Y(n1493), 
	.B(reg1[1]), 
	.A(reg0[0]));
   NAND2XLM U1753 (.Y(n1540), 
	.B(reg1[3]), 
	.A(reg0[1]));
   NOR2XLM U1754 (.Y(n1161), 
	.B(n1540), 
	.A(n1538));
   NAND2XLM U1755 (.Y(n1425), 
	.B(reg1[0]), 
	.A(reg0[2]));
   NAND2XLM U1756 (.Y(n1369), 
	.B(reg1[1]), 
	.A(reg0[3]));
   AOI22XLM U1759 (.Y(n1163), 
	.B1(n1361), 
	.B0(intadd_7_n1), 
	.A1(n1362), 
	.A0(intadd_6_SUM_1_));
   OAI21XLM U1760 (.Y(n1162), 
	.B0(n1422), 
	.A1(n1163), 
	.A0(n1363));
   AO21XLM U1761 (.Y(n1164), 
	.B0(n1162), 
	.A1(n1163), 
	.A0(n1363));
   OAI211XLM U1762 (.Y(n1170), 
	.C0(n1164), 
	.B0(n1165), 
	.A1(n1670), 
	.A0(n1337));
   NAND2XLM U1765 (.Y(n1175), 
	.B(n1627), 
	.A(n1380));
   NOR2XLM U1768 (.Y(n1478), 
	.B(n1627), 
	.A(FE_OFN21_reg0_5_));
   NAND2BXLM U1770 (.Y(n1477), 
	.B(FE_OFN21_reg0_5_), 
	.AN(FE_OFN23_reg1_5_));
   AOI22XLM U1773 (.Y(n1178), 
	.B1(n1175), 
	.B0(n1495), 
	.A1(n1649), 
	.A0(n1498));
   OAI21X2M U1775 (.Y(n1295), 
	.B0(n1180), 
	.A1(n1184), 
	.A0(n1181));
   XNOR2XLM U1776 (.Y(n1185), 
	.B(reg1[1]), 
	.A(n1184));
   NOR2X2M U1778 (.Y(n1190), 
	.B(reg1[2]), 
	.A(n1189));
   OAI22X2M U1780 (.Y(n1193), 
	.B1(n1587), 
	.B0(n1302), 
	.A1(n1190), 
	.A0(n1299));
   OR2X1M U1781 (.Y(n1285), 
	.B(n1192), 
	.A(n1191));
   AOI21X2M U1782 (.Y(n1196), 
	.B0(n1285), 
	.A1(reg1[3]), 
	.A0(n1193));
   NOR2X2M U1783 (.Y(n1195), 
	.B(n1193), 
	.A(reg1[3]));
   OA21X2M U1785 (.Y(n1301), 
	.B0(n1306), 
	.A1(n1195), 
	.A0(n1196));
   NAND2XLM U1787 (.Y(n1197), 
	.B(n1625), 
	.A(n1366));
   NOR2XLM U1788 (.Y(n1200), 
	.B(n1197), 
	.A(n1320));
   AOI211XLM U1791 (.Y(n1202), 
	.C0(n1199), 
	.B0(n1200), 
	.A1(n1665), 
	.A0(FE_OFN21_reg0_5_));
   NOR2XLM U1792 (.Y(n1457), 
	.B(n1625), 
	.A(FE_OFN22_reg0_4_));
   NAND2XLM U1794 (.Y(n1473), 
	.B(FE_OFN22_reg0_4_), 
	.A(n1625));
   NAND2XLM U1795 (.Y(n1650), 
	.B(n1473), 
	.A(n1475));
   AOI22XLM U1796 (.Y(n1201), 
	.B1(reg0[3]), 
	.B0(n1417), 
	.A1(n1650), 
	.A0(n1498));
   OAI211XLM U1797 (.Y(n1203), 
	.C0(n1201), 
	.B0(n1202), 
	.A1(n1348), 
	.A0(n1679));
   NAND2XLM U1800 (.Y(n1510), 
	.B(UART_TX_RX_U0_UART_TX_U1_counter[0]), 
	.A(UART_TX_RX_U0_UART_TX_U1_loading));
   OAI22XLM U1801 (.Y(n862), 
	.B1(n1510), 
	.B0(n1704), 
	.A1(n1705), 
	.A0(n1207));
   AOI22XLM U1802 (.Y(n859), 
	.B1(n1704), 
	.B0(n1510), 
	.A1(n1206), 
	.A0(UART_TX_RX_U0_UART_TX_U1_counter[1]));
   AOI32XLM U1803 (.Y(n861), 
	.B1(n1713), 
	.B0(n1207), 
	.A2(n1511), 
	.A1(n1713), 
	.A0(UART_TX_RX_U0_UART_TX_U1_counter[0]));
   OR4X1M U1806 (.Y(n1718), 
	.D(UART_TX_RX_U0_UART_RX_U7_c_state[2]), 
	.C(n1208), 
	.B(n1716), 
	.A(UART_TX_RX_U0_UART_RX_U7_c_state[1]));
   NOR2XLM U1807 (.Y(UART_TX_RX_U0_UART_RX_U5_N4), 
	.B(n1718), 
	.A(n1847));
   OAI2BB1XLM U1808 (.Y(n1209), 
	.B0(n1520), 
	.A1N(parity_error), 
	.A0N(reg2[0]));
   NOR3XLM U1809 (.Y(UART_TX_RX_U0_UART_RX_U7_data_valid_next), 
	.C(framing_error), 
	.B(n1211), 
	.A(n1209));
   NAND2XLM U1811 (.Y(n1234), 
	.B(n1231), 
	.A(n1716));
   NOR3XLM U1813 (.Y(n1210), 
	.C(UART_TX_RX_U0_UART_RX_bit_cnt[1]), 
	.B(UART_TX_RX_U0_UART_RX_bit_cnt[2]), 
	.A(UART_TX_RX_U0_UART_RX_bit_cnt[0]));
   NAND3XLM U1814 (.Y(n1233), 
	.C(n1210), 
	.B(UART_TX_RX_U0_UART_RX_samp_valid), 
	.A(UART_TX_RX_U0_UART_RX_bit_cnt[3]));
   NOR2XLM U1815 (.Y(n1715), 
	.B(n1233), 
	.A(reg2[0]));
   AOI22XLM U1816 (.Y(n1212), 
	.B1(n1715), 
	.B0(n1214), 
	.A1(n1211), 
	.A0(n1520));
   OAI31XLM U1817 (.Y(n881), 
	.B0(n1212), 
	.A2(n1230), 
	.A1(n1716), 
	.A0(n1714));
   NOR2XLM U1818 (.Y(UART_TX_RX_U0_UART_RX_U4_par_done_next), 
	.B(n1218), 
	.A(n1213));
   NAND2XLM U1819 (.Y(n1215), 
	.B(n1214), 
	.A(UART_TX_RX_U0_UART_RX_samp_valid));
   AOI22XLM U1822 (.Y(n643), 
	.B1(n1215), 
	.B0(n1239), 
	.A1(n1847), 
	.A0(n1216));
   AOI22XLM U1825 (.Y(n639), 
	.B1(n1215), 
	.B0(n1246), 
	.A1(n1241), 
	.A0(n1216));
   AOI22XLM U1828 (.Y(n641), 
	.B1(n1215), 
	.B0(n1237), 
	.A1(n1243), 
	.A0(n1216));
   AOI22XLM U1829 (.Y(n642), 
	.B1(n1215), 
	.B0(n1243), 
	.A1(n1239), 
	.A0(n1216));
   AOI22XLM U1832 (.Y(n637), 
	.B1(n1215), 
	.B0(n1245), 
	.A1(n1248), 
	.A0(n1216));
   AOI22XLM U1833 (.Y(n640), 
	.B1(n1215), 
	.B0(n1241), 
	.A1(n1237), 
	.A0(n1216));
   AOI22XLM U1834 (.Y(n636), 
	.B1(n1215), 
	.B0(n1244), 
	.A1(n1245), 
	.A0(n1216));
   AOI21BXLM U1835 (.Y(n1220), 
	.B0N(n1217), 
	.A1(n1218), 
	.A0(n1221));
   OAI32XLM U1837 (.Y(n659), 
	.B1(n1219), 
	.B0(n1220), 
	.A2(n1521), 
	.A1(n1221), 
	.A0(UART_TX_RX_U0_UART_RX_U4_count[3]));
   NAND2XLM U1838 (.Y(n1857), 
	.B(n1690), 
	.A(n1853));
   NAND2XLM U1839 (.Y(n1227), 
	.B(UART_TX_RX_U0_UART_RX_bit_cnt[1]), 
	.A(UART_TX_RX_U0_UART_RX_bit_cnt[0]));
   NAND3XLM U1840 (.Y(n1856), 
	.C(UART_TX_RX_U0_UART_RX_bit_cnt[1]), 
	.B(UART_TX_RX_U0_UART_RX_bit_cnt[2]), 
	.A(UART_TX_RX_U0_UART_RX_bit_cnt[0]));
   OAI32XLM U1842 (.Y(n656), 
	.B1(n1226), 
	.B0(n1858), 
	.A2(n1227), 
	.A1(n1857), 
	.A0(UART_TX_RX_U0_UART_RX_bit_cnt[2]));
   AOI22XLM U1844 (.Y(n658), 
	.B1(n1852), 
	.B0(n1857), 
	.A1(n1690), 
	.A0(UART_TX_RX_U0_UART_RX_bit_cnt[0]));
   OR2X1M U1845 (.Y(n1228), 
	.B(UART_TX_RX_U0_UART_RX_U7_c_state[2]), 
	.A(UART_TX_RX_U0_UART_RX_U7_c_state[1]));
   AOI221XLM U1846 (.Y(n1229), 
	.C0(n1228), 
	.B1(n1716), 
	.B0(UART_RX_IN), 
	.A1(UART_TX_RX_U0_UART_RX_U7_c_state[0]), 
	.A0(UART_TX_RX_U0_UART_RX_samp_valid));
   AOI31XLM U1847 (.Y(n1232), 
	.B0(n1229), 
	.A2(n1230), 
	.A1(n1231), 
	.A0(UART_TX_RX_U0_UART_RX_U7_c_state[0]));
   OAI31XLM U1848 (.Y(UART_TX_RX_U0_UART_RX_U7_n_state_0_), 
	.B0(n1232), 
	.A2(n1233), 
	.A1(n1234), 
	.A0(n1235));
   NAND2BXLM U1849 (.Y(n1247), 
	.B(Rx2SysCtrl_SYNC[3]), 
	.AN(Rx2SysCtrl_pulse_out));
   NAND2XLM U1850 (.Y(n1236), 
	.B(synced_p_data[5]), 
	.A(n1247));
   OAI21XLM U1851 (.Y(n629), 
	.B0(n1236), 
	.A1(n1237), 
	.A0(n1247));
   NAND2XLM U1852 (.Y(n1238), 
	.B(synced_p_data[7]), 
	.A(n1247));
   OAI21XLM U1853 (.Y(n634), 
	.B0(n1238), 
	.A1(n1239), 
	.A0(n1247));
   NAND2XLM U1854 (.Y(n1240), 
	.B(synced_p_data[4]), 
	.A(n1247));
   OAI21XLM U1855 (.Y(n630), 
	.B0(n1240), 
	.A1(n1241), 
	.A0(n1247));
   NAND2XLM U1856 (.Y(n1242), 
	.B(synced_p_data[6]), 
	.A(n1247));
   OAI21XLM U1857 (.Y(n628), 
	.B0(n1242), 
	.A1(n1243), 
	.A0(n1247));
   AOI22XLM U1859 (.Y(n635), 
	.B1(n1247), 
	.B0(n1866), 
	.A1(n1244), 
	.A0(n1899));
   AOI22XLM U1860 (.Y(n633), 
	.B1(n1247), 
	.B0(n1869), 
	.A1(n1245), 
	.A0(n1899));
   AOI22XLM U1862 (.Y(n631), 
	.B1(n1247), 
	.B0(n1867), 
	.A1(n1246), 
	.A0(n1899));
   AOI22XLM U1864 (.Y(n632), 
	.B1(n1247), 
	.B0(n1868), 
	.A1(n1248), 
	.A0(n1899));
   NAND2XLM U1865 (.Y(n1249), 
	.B(synced_p_data[7]), 
	.A(n1253));
   NAND2XLM U1866 (.Y(n1250), 
	.B(synced_p_data[5]), 
	.A(n1253));
   NAND2XLM U1867 (.Y(n1251), 
	.B(synced_p_data[6]), 
	.A(n1253));
   NAND2XLM U1868 (.Y(n1252), 
	.B(synced_p_data[4]), 
	.A(n1253));
   NAND2XLM U1869 (.Y(n1549), 
	.B(FE_OFN18_reg1_6_), 
	.A(FE_OFN20_reg0_6_));
   NOR2XLM U1870 (.Y(n1259), 
	.B(FE_OFN18_reg1_6_), 
	.A(FE_OFN20_reg0_6_));
   NOR2XLM U1871 (.Y(n1480), 
	.B(n1375), 
	.A(FE_OFN18_reg1_6_));
   NAND2BXLM U1873 (.Y(n1481), 
	.B(FE_OFN18_reg1_6_), 
	.AN(FE_OFN20_reg0_6_));
   OAI2BB2XLM U1875 (.Y(n1258), 
	.B1(n1667), 
	.B0(n1259), 
	.A1N(n1498), 
	.A0N(n1647));
   OAI22XLM U1877 (.Y(n1257), 
	.B1(n1255), 
	.B0(n1670), 
	.A1(n1256), 
	.A0(n1508));
   AOI22XLM U1878 (.Y(n1260), 
	.B1(FE_OFN17_reg0_7_), 
	.B0(n1665), 
	.A1(n1417), 
	.A0(FE_OFN21_reg0_5_));
   NAND2XLM U1880 (.Y(n1267), 
	.B(n1642), 
	.A(n1343));
   NAND2XLM U1882 (.Y(n1326), 
	.B(FE_OFN16_reg1_7_), 
	.A(FE_OFN17_reg0_7_));
   NAND2XLM U1883 (.Y(n1645), 
	.B(FE_OFN16_reg1_7_), 
	.A(n1343));
   NAND2BXLM U1884 (.Y(n1483), 
	.B(FE_OFN17_reg0_7_), 
	.AN(FE_OFN16_reg1_7_));
   NAND2XLM U1885 (.Y(n1658), 
	.B(n1483), 
	.A(n1645));
   AOI22XLM U1886 (.Y(n1268), 
	.B1(n1267), 
	.B0(n1495), 
	.A1(n1658), 
	.A0(n1498));
   OAI21XLM U1887 (.Y(n1272), 
	.B0(n1268), 
	.A1(n1326), 
	.A0(n1679));
   AOI22XLM U1889 (.Y(n1270), 
	.B1(n1269), 
	.B0(n1684), 
	.A1(n1326), 
	.A0(n1465));
   OAI21XLM U1890 (.Y(n1271), 
	.B0(n1270), 
	.A1(n1490), 
	.A0(n1375));
   NAND2XLM U1891 (.Y(n1315), 
	.B(reg1[3]), 
	.A(reg0[3]));
   CLKNAND2X2M U1894 (.Y(n1288), 
	.B(reg1[0]), 
	.A(n1301));
   NAND2X2M U1895 (.Y(n1289), 
	.B(FE_OFN22_reg0_4_), 
	.A(n1288));
   OAI21X2M U1896 (.Y(n1399), 
	.B0(n1289), 
	.A1(n1293), 
	.A0(n1290));
   XNOR2XLM U1897 (.Y(n1294), 
	.B(reg1[1]), 
	.A(n1293));
   NOR2X1M U1898 (.Y(n1305), 
	.B(reg1[3]), 
	.A(n1304));
   OAI22X2M U1900 (.Y(n1308), 
	.B1(n1589), 
	.B0(n1386), 
	.A1(n1305), 
	.A0(n1384));
   OAI2BB1X2M U1901 (.Y(n1307), 
	.B0(n1306), 
	.A1N(n1308), 
	.A0N(n1407));
   OAI21X2M U1902 (.Y(n1408), 
	.B0(n1307), 
	.A1(n1308), 
	.A0(n1309));
   NOR2XLM U1904 (.Y(n1312), 
	.B(reg1[3]), 
	.A(reg0[3]));
   OAI22XLM U1905 (.Y(n1311), 
	.B1(n1312), 
	.B0(n1667), 
	.A1(n1670), 
	.A0(intadd_4_CI));
   NOR2XLM U1906 (.Y(n1471), 
	.B(n1589), 
	.A(reg0[3]));
   NAND2BXLM U1908 (.Y(n1470), 
	.B(reg0[3]), 
	.AN(reg1[3]));
   AOI21XLM U1909 (.Y(n1310), 
	.B0(n1669), 
	.A1(n1470), 
	.A0(n1653));
   AOI211XLM U1910 (.Y(n1314), 
	.C0(n1310), 
	.B0(n1311), 
	.A1(n1674), 
	.A0(n1312));
   AOI22XLM U1911 (.Y(n1313), 
	.B1(FE_OFN22_reg0_4_), 
	.B0(n1665), 
	.A1(n1417), 
	.A0(reg0[2]));
   NAND2XLM U1914 (.Y(n1547), 
	.B(FE_OFN23_reg1_5_), 
	.A(FE_OFN17_reg0_7_));
   NAND2XLM U1915 (.Y(n1324), 
	.B(n1549), 
	.A(n1547));
   AND2X1M U1916 (.Y(n1548), 
	.B(FE_OFN16_reg1_7_), 
	.A(FE_OFN21_reg0_5_));
   AOI2BB2XLM U1917 (.Y(n1544), 
	.B1(n1548), 
	.B0(n1324), 
	.A1N(n1547), 
	.A0N(n1549));
   NAND2XLM U1918 (.Y(n1546), 
	.B(FE_OFN16_reg1_7_), 
	.A(FE_OFN20_reg0_6_));
   NOR2XLM U1919 (.Y(n1545), 
	.B(n1632), 
	.A(n1343));
   NAND2XLM U1920 (.Y(n1541), 
	.B(FE_OFN23_reg1_5_), 
	.A(FE_OFN20_reg0_6_));
   NOR2XLM U1921 (.Y(n1542), 
	.B(n1625), 
	.A(n1343));
   NAND2XLM U1922 (.Y(n1543), 
	.B(FE_OFN16_reg1_7_), 
	.A(FE_OFN22_reg0_4_));
   NAND2XLM U1924 (.Y(n1370), 
	.B(reg1[2]), 
	.A(FE_OFN17_reg0_7_));
   NAND2XLM U1925 (.Y(n1372), 
	.B(FE_OFN16_reg1_7_), 
	.A(reg0[2]));
   NAND2XLM U1926 (.Y(n1379), 
	.B(reg1[1]), 
	.A(FE_OFN20_reg0_6_));
   NAND2XLM U1927 (.Y(n1558), 
	.B(FE_OFN23_reg1_5_), 
	.A(reg0[3]));
   AOI22XLM U1930 (.Y(n1346), 
	.B1(reg1[1]), 
	.B0(FE_OFN17_reg0_7_), 
	.A1(reg1[2]), 
	.A0(FE_OFN20_reg0_6_));
   NAND2XLM U1931 (.Y(n1555), 
	.B(FE_OFN23_reg1_5_), 
	.A(FE_OFN22_reg0_4_));
   AOI22XLM U1933 (.Y(n1357), 
	.B1(reg1[1]), 
	.B0(FE_OFN22_reg0_4_), 
	.A1(FE_OFN21_reg0_5_), 
	.A0(reg1[0]));
   NOR2XLM U1935 (.Y(n1358), 
	.B(n1587), 
	.A(n1367));
   NAND2XLM U1936 (.Y(n1567), 
	.B(FE_OFN23_reg1_5_), 
	.A(reg0[0]));
   AOI22XLM U1937 (.Y(n1365), 
	.B1(reg1[1]), 
	.B0(reg0[2]), 
	.A1(reg0[3]), 
	.A0(reg1[0]));
   NAND2XLM U1938 (.Y(n1368), 
	.B(reg1[0]), 
	.A(FE_OFN22_reg0_4_));
   AOI22XLM U1939 (.Y(n1376), 
	.B1(reg1[1]), 
	.B0(FE_OFN21_reg0_5_), 
	.A1(FE_OFN20_reg0_6_), 
	.A0(reg1[0]));
   NAND2XLM U1940 (.Y(n1378), 
	.B(reg1[0]), 
	.A(FE_OFN17_reg0_7_));
   NOR2XLM U1941 (.Y(n1381), 
	.B(n1587), 
	.A(n1380));
   NAND2XLM U1942 (.Y(n1564), 
	.B(FE_OFN16_reg1_7_), 
	.A(reg0[0]));
   NAND2XLM U1943 (.Y(n1420), 
	.B(reg1[2]), 
	.A(reg0[2]));
   XOR2XLM U1944 (.Y(n1385), 
	.B(n1589), 
	.A(n1384));
   XOR2XLM U1945 (.Y(n1389), 
	.B(reg1[2]), 
	.A(n1392));
   XOR2XLM U1946 (.Y(n1391), 
	.B(n1389), 
	.A(n1390));
   XNOR2XLM U1949 (.Y(n1398), 
	.B(reg1[1]), 
	.A(n1397));
   OAI2BB2X4M U1951 (.Y(n1410), 
	.B1(n1445), 
	.B0(FE_OFN19_reg1_4_), 
	.A1N(n1443), 
	.A0N(n1406));
   NOR2XLM U1953 (.Y(n1416), 
	.B(reg1[2]), 
	.A(reg0[2]));
   OAI22XLM U1954 (.Y(n1415), 
	.B1(n1416), 
	.B0(n1667), 
	.A1(n1670), 
	.A0(intadd_6_A_0_));
   NAND2BXLM U1955 (.Y(n1651), 
	.B(reg1[2]), 
	.AN(reg0[2]));
   NAND2BXLM U1956 (.Y(n1467), 
	.B(reg0[2]), 
	.AN(reg1[2]));
   AOI22XLM U1957 (.Y(n1418), 
	.B1(reg0[3]), 
	.B0(n1665), 
	.A1(n1417), 
	.A0(reg0[1]));
   NAND2XLM U1959 (.Y(n1500), 
	.B(reg1[1]), 
	.A(reg0[1]));
   NAND2XLM U1960 (.Y(n1426), 
	.B(reg1[2]), 
	.A(reg0[0]));
   AOI21XLM U1961 (.Y(intadd_7_B_0_), 
	.B0(n1532), 
	.A1(n1426), 
	.A0(n1500));
   OAI21X2M U1962 (.Y(n1572), 
	.B0(n1427), 
	.A1(n1429), 
	.A0(n1449));
   XNOR2XLM U1963 (.Y(n1430), 
	.B(reg1[1]), 
	.A(n1429));
   XOR2X2M U1964 (.Y(n1577), 
	.B(n1431), 
	.A(n1432));
   XOR2XLM U1965 (.Y(n1434), 
	.B(n1433), 
	.A(n1587));
   XOR2XLM U1966 (.Y(n1440), 
	.B(n1589), 
	.A(n1439));
   XOR2XLM U1967 (.Y(n1444), 
	.B(n1625), 
	.A(n1443));
   NAND2XLM U1969 (.Y(n1497), 
	.B(reg1[1]), 
	.A(n1536));
   NAND2BXLM U1970 (.Y(n1496), 
	.B(reg0[1]), 
	.AN(reg1[1]));
   NAND2BXLM U1971 (.Y(n1455), 
	.B(n1496), 
	.AN(n1655));
   NAND2XLM U1972 (.Y(n1656), 
	.B(n1467), 
	.A(n1470));
   AOI31XLM U1973 (.Y(n1456), 
	.B0(n1656), 
	.A2(n1651), 
	.A1(n1455), 
	.A0(n1497));
   OAI211XLM U1974 (.Y(n1459), 
	.C0(n1477), 
	.B0(n1473), 
	.A1(n1471), 
	.A0(n1456));
   AOI21XLM U1975 (.Y(n1461), 
	.B0(n1480), 
	.A1(n1458), 
	.A0(n1459));
   OAI21XLM U1977 (.Y(n1464), 
	.B0(n1483), 
	.A1(n1460), 
	.A0(n1461));
   NAND2BXLM U1978 (.Y(n1654), 
	.B(reg0[0]), 
	.AN(reg1[0]));
   OAI21XLM U1981 (.Y(n1476), 
	.B0(n1470), 
	.A1(n1471), 
	.A0(n1472));
   OAI21XLM U1984 (.Y(n1482), 
	.B0(n1477), 
	.A1(n1478), 
	.A0(n1479));
   AOI21XLM U1985 (.Y(n1485), 
	.B0(n1480), 
	.A1(n1481), 
	.A0(n1482));
   OAI21XLM U1987 (.Y(n1487), 
	.B0(n1483), 
	.A1(n1484), 
	.A0(n1485));
   NAND2XLM U1988 (.Y(n1499), 
	.B(n1583), 
	.A(n1536));
   NAND2XLM U1989 (.Y(n1492), 
	.B(reg1[0]), 
	.A(reg0[1]));
   NAND2XLM U1990 (.Y(n1648), 
	.B(n1496), 
	.A(n1497));
   AOI22XLM U1991 (.Y(n1503), 
	.B1(reg0[2]), 
	.B0(n1665), 
	.A1(n1648), 
	.A0(n1498));
   AOI2BB2XLM U1992 (.Y(n1502), 
	.B1(n1674), 
	.B0(n1501), 
	.A1N(n1500), 
	.A0N(n1679));
   XOR2XLM U1993 (.Y(DP_OP_196J1_124_5161_n28), 
	.B(reg1[1]), 
	.A(DP_OP_196J1_124_5161_n43));
   XOR2XLM U1994 (.Y(DP_OP_196J1_124_5161_n24), 
	.B(FE_OFN23_reg1_5_), 
	.A(DP_OP_196J1_124_5161_n43));
   XOR2XLM U1995 (.Y(DP_OP_196J1_124_5161_n22), 
	.B(FE_OFN16_reg1_7_), 
	.A(DP_OP_196J1_124_5161_n43));
   OAI21XLM U1996 (.Y(busy), 
	.B0(n1509), 
	.A1(n1901), 
	.A0(UART_TX_RX_U0_UART_TX_U2_current_state[0]));
   AO2B2XLM U1997 (.Y(n860), 
	.B1(n861), 
	.B0(UART_TX_RX_U0_UART_TX_ser_done), 
	.A1N(n1510), 
	.A0(n1511));
   OAI22XLM U1999 (.Y(n1512), 
	.B1(FIFO_u_w_ptr_synch[1]), 
	.B0(n1513), 
	.A1(FIFO_u_w_ptr_synch[0]), 
	.A0(n1514));
   AOI221XLM U2000 (.Y(n1519), 
	.C0(n1512), 
	.B1(n1513), 
	.B0(FIFO_u_w_ptr_synch[1]), 
	.A1(FIFO_u_w_ptr_synch[0]), 
	.A0(n1514));
   OAI22XLM U2002 (.Y(n1515), 
	.B1(FIFO_u_w_ptr_synch[2]), 
	.B0(n1516), 
	.A1(FIFO_u_w_ptr_synch[3]), 
	.A0(n1517));
   AOI221XLM U2003 (.Y(n1518), 
	.C0(n1515), 
	.B1(n1516), 
	.B0(FIFO_u_w_ptr_synch[2]), 
	.A1(FIFO_u_w_ptr_synch[3]), 
	.A0(n1517));
   AND2X1M U2004 (.Y(eq_x_40_n25), 
	.B(n1518), 
	.A(n1519));
   AND2X1M U2005 (.Y(UART_TX_RX_U0_UART_RX_stp_chk_en), 
	.B(UART_TX_RX_U0_UART_RX_samp_valid), 
	.A(n1520));
   NOR2BXLM U2006 (.Y(UART_TX_RX_U0_UART_RX_U6_N5), 
	.B(UART_TX_RX_U0_UART_RX_samp_b), 
	.AN(UART_TX_RX_U0_UART_RX_stp_chk_en));
   OA21XLM U2007 (.Y(n661), 
	.B0(n1521), 
	.A1(n1522), 
	.A0(UART_TX_RX_U0_UART_RX_U4_count[1]));
   NAND2XLM U2008 (.Y(n1523), 
	.B(synced_p_data[4]), 
	.A(n1537));
   OAI21XLM U2009 (.Y(n717), 
	.B0(n1523), 
	.A1(n1625), 
	.A0(n1537));
   OAI2BB1XLM U2010 (.Y(n878), 
	.B0(n1524), 
	.A1N(n1720), 
	.A0N(rd_data_vld));
   OR2X1M U2011 (.Y(n649), 
	.B(n1845), 
	.A(sys_ctrl_u_reg3_cfg));
   AOI221XLM U2012 (.Y(n1530), 
	.C0(n1525), 
	.B1(FIFO_u_U4_WR_PTR_GRAY_NEXT[3]), 
	.B0(FIFO_u_r_ptr_synch[3]), 
	.A1(FIFO_u_r_ptr_synch[1]), 
	.A0(n1526));
   AOI221XLM U2013 (.Y(n1529), 
	.C0(n1527), 
	.B1(FIFO_u_U4_WR_PTR_GRAY_NEXT[2]), 
	.B0(FIFO_u_r_ptr_synch[2]), 
	.A1(FIFO_u_r_ptr_synch[0]), 
	.A0(n1528));
   NOR2XLM U2014 (.Y(n1534), 
	.B(n1531), 
	.A(n1532));
   XOR2XLM U2015 (.Y(intadd_7_B_1_), 
	.B(n1533), 
	.A(n1534));
   AND2X1M U2016 (.Y(n1876), 
	.B(reg1[3]), 
	.A(FE_OFN20_reg0_6_));
   AND2X1M U2017 (.Y(n1877), 
	.B(reg1[3]), 
	.A(FE_OFN17_reg0_7_));
   AND2X1M U2018 (.Y(n1878), 
	.B(reg1[3]), 
	.A(FE_OFN22_reg0_4_));
   AND2X1M U2019 (.Y(n1880), 
	.B(FE_OFN19_reg1_4_), 
	.A(reg0[1]));
   AND2X1M U2020 (.Y(n1881), 
	.B(FE_OFN19_reg1_4_), 
	.A(FE_OFN21_reg0_5_));
   AND2X1M U2021 (.Y(n1882), 
	.B(FE_OFN23_reg1_5_), 
	.A(reg0[2]));
   AND2X1M U2022 (.Y(n1883), 
	.B(FE_OFN16_reg1_7_), 
	.A(reg0[3]));
   AND2X1M U2023 (.Y(n1884), 
	.B(FE_OFN19_reg1_4_), 
	.A(reg0[0]));
   AND2X1M U2024 (.Y(n1886), 
	.B(reg1[3]), 
	.A(reg0[2]));
   AND2X1M U2025 (.Y(n1887), 
	.B(FE_OFN23_reg1_5_), 
	.A(reg0[1]));
   AND2X1M U2026 (.Y(n1889), 
	.B(FE_OFN19_reg1_4_), 
	.A(reg0[2]));
   AND2X1M U2027 (.Y(n1890), 
	.B(FE_OFN19_reg1_4_), 
	.A(reg0[3]));
   AND2X1M U2028 (.Y(n1891), 
	.B(FE_OFN18_reg1_6_), 
	.A(reg0[3]));
   AND2X1M U2029 (.Y(n1892), 
	.B(FE_OFN19_reg1_4_), 
	.A(FE_OFN20_reg0_6_));
   AND2X1M U2030 (.Y(n1893), 
	.B(FE_OFN18_reg1_6_), 
	.A(reg0[2]));
   AND2X1M U2031 (.Y(n1894), 
	.B(FE_OFN18_reg1_6_), 
	.A(FE_OFN21_reg0_5_));
   XOR2XLM U2032 (.Y(DP_OP_196J1_124_5161_n23), 
	.B(FE_OFN18_reg1_6_), 
	.A(DP_OP_196J1_124_5161_n43));
   XOR2XLM U2033 (.Y(DP_OP_196J1_124_5161_n25), 
	.B(FE_OFN19_reg1_4_), 
	.A(DP_OP_196J1_124_5161_n43));
   XOR2XLM U2034 (.Y(DP_OP_196J1_124_5161_n26), 
	.B(reg1[3]), 
	.A(DP_OP_196J1_124_5161_n43));
   XOR2XLM U2035 (.Y(DP_OP_196J1_124_5161_n27), 
	.B(reg1[2]), 
	.A(DP_OP_196J1_124_5161_n43));
   XOR2XLM U2036 (.Y(DP_OP_196J1_124_5161_n29), 
	.B(reg1[0]), 
	.A(DP_OP_196J1_124_5161_n43));
   MXI2XLM U2037 (.Y(n768), 
	.S0(n1537), 
	.B(n1810), 
	.A(n1583));
   MXI2XLM U2038 (.Y(n734), 
	.S0(n1537), 
	.B(n1828), 
	.A(n1589));
   MXI2XLM U2039 (.Y(n767), 
	.S0(n1535), 
	.B(n1536), 
	.A(n1810));
   MXI2XLM U2040 (.Y(n751), 
	.S0(n1537), 
	.B(n1826), 
	.A(n1587));
   XOR3XLM U2041 (.Y(intadd_7_B_2_), 
	.C(n1538), 
	.B(n1539), 
	.A(n1540));
   XOR3XLM U2042 (.Y(intadd_2_A_1_), 
	.C(n1541), 
	.B(n1542), 
	.A(n1543));
   XOR3XLM U2043 (.Y(intadd_2_B_3_), 
	.C(n1544), 
	.B(n1545), 
	.A(n1546));
   XOR3XLM U2044 (.Y(intadd_2_B_2_), 
	.C(n1547), 
	.B(n1548), 
	.A(n1549));
   XOR3XLM U2045 (.Y(intadd_5_B_1_), 
	.C(n1550), 
	.B(n1551), 
	.A(n1552));
   XOR3XLM U2046 (.Y(intadd_3_A_3_), 
	.C(n1553), 
	.B(n1554), 
	.A(n1555));
   XOR3XLM U2047 (.Y(intadd_3_A_2_), 
	.C(n1556), 
	.B(n1557), 
	.A(n1558));
   XOR3XLM U2048 (.Y(intadd_3_B_2_), 
	.C(n1559), 
	.B(n1560), 
	.A(n1561));
   XOR3XLM U2049 (.Y(intadd_4_B_1_), 
	.C(n1562), 
	.B(n1563), 
	.A(n1564));
   XOR3XLM U2050 (.Y(intadd_6_B_2_), 
	.C(intadd_1_SUM_1_), 
	.B(intadd_3_SUM_0_), 
	.A(intadd_4_SUM_0_));
   XOR3XLM U2051 (.Y(intadd_6_B_1_), 
	.C(n1565), 
	.B(n1566), 
	.A(n1567));
   NAND2XLM U2053 (.Y(n1571), 
	.B(n1569), 
	.A(n1570));
   NOR2X2M U2054 (.Y(n1579), 
	.B(n1587), 
	.A(n1588));
   NOR2X2M U2055 (.Y(n1593), 
	.B(n1589), 
	.A(n1590));
   NOR2X2M U2056 (.Y(n1596), 
	.B(n1593), 
	.A(n1579));
   NOR2XLM U2057 (.Y(n1585), 
	.B(n1583), 
	.A(n1655));
   NAND2XLM U2058 (.Y(n1584), 
	.B(n1583), 
	.A(n1655));
   AOI21X2M U2059 (.Y(n1639), 
	.B0(n1594), 
	.A1(n1595), 
	.A0(n1596));
   NOR2XLM U2060 (.Y(n1612), 
	.B(n1625), 
	.A(n1626));
   NOR2XLM U2061 (.Y(n1624), 
	.B(n1631), 
	.A(n1612));
   AOI21X2M U2062 (.Y(n1637), 
	.B0(n1634), 
	.A1(n1635), 
	.A0(n1636));
   AND2X1M U2063 (.Y(n1643), 
	.B(n1640), 
	.A(FE_OFN24_n1641));
   NAND2XLM U2064 (.Y(n1678), 
	.B(reg1[0]), 
	.A(reg0[0]));
   NOR4XLM U2065 (.Y(n1661), 
	.D(n1647), 
	.C(n1648), 
	.B(n1649), 
	.A(n1650));
   NAND3XLM U2066 (.Y(n1657), 
	.C(n1651), 
	.B(n1652), 
	.A(n1653));
   NAND2XLM U2067 (.Y(n1666), 
	.B(n1654), 
	.A(n1655));
   NOR4XLM U2068 (.Y(n1660), 
	.D(n1666), 
	.C(n1656), 
	.B(n1657), 
	.A(n1658));
   AND4XLM U2069 (.Y(n1663), 
	.D(n1659), 
	.C(n1660), 
	.B(n1661), 
	.A(n1662));
   AOI211XLM U2070 (.Y(n1677), 
	.C0(n1663), 
	.B0(n1664), 
	.A1(reg0[1]), 
	.A0(n1665));
   NOR2XLM U2071 (.Y(n1675), 
	.B(reg1[0]), 
	.A(reg0[0]));
   OAI22XLM U2073 (.Y(n1673), 
	.B1(n1675), 
	.B0(n1667), 
	.A1(n1668), 
	.A0(n1669));
   MXI2XLM U2074 (.Y(n1672), 
	.S0(n1678), 
	.B(n1670), 
	.A(n1671));
   NOR2XLM U2075 (.Y(UART_TX_RX_U0_UART_RX_U1_N111), 
	.B(n1690), 
	.A(UART_TX_RX_U0_UART_RX_edge_cnt[0]));
   AOI221XLM U2076 (.Y(UART_TX_RX_U0_UART_RX_U1_N112), 
	.C0(n1690), 
	.B1(n1685), 
	.B0(n1686), 
	.A1(UART_TX_RX_U0_UART_RX_edge_cnt[1]), 
	.A0(UART_TX_RX_U0_UART_RX_edge_cnt[0]));
   AOI221XLM U2077 (.Y(UART_TX_RX_U0_UART_RX_U1_N114), 
	.C0(n1690), 
	.B1(n1687), 
	.B0(n1688), 
	.A1(n1689), 
	.A0(UART_TX_RX_U0_UART_RX_edge_cnt[3]));
   AOI221XLM U2078 (.Y(UART_TX_RX_U0_UART_RX_U1_N116), 
	.C0(n1690), 
	.B1(n1691), 
	.B0(n1692), 
	.A1(n1693), 
	.A0(UART_TX_RX_U0_UART_RX_edge_cnt[5]));
   AOI221XLM U2079 (.Y(UART_TX_RX_U0_UART_TX_U2_next_state[2]), 
	.C0(n1694), 
	.B1(UART_TX_RX_U0_UART_TX_U2_current_state[0]), 
	.B0(n1695), 
	.A1(UART_TX_RX_U0_UART_TX_U2_current_state[0]), 
	.A0(reg2[0]));
   NAND2XLM U2080 (.Y(n1800), 
	.B(FIFO_u_r_addr[0]), 
	.A(FIFO_u_r_addr[1]));
   NAND2XLM U2081 (.Y(n1804), 
	.B(FIFO_u_r_addr[0]), 
	.A(n1696));
   AOI21XLM U2083 (.Y(n1698), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(FIFO_u_U1_mem[48]), 
	.A0(n1796));
   NOR2X2M U2084 (.Y(n1807), 
	.B(FIFO_u_r_addr[0]), 
	.A(FIFO_u_r_addr[1]));
   NOR2X2M U2085 (.Y(n1802), 
	.B(n1696), 
	.A(FIFO_u_r_addr[0]));
   AOI22XLM U2086 (.Y(n1697), 
	.B1(FIFO_u_U1_mem[40]), 
	.B0(n1802), 
	.A1(FIFO_u_U1_mem[56]), 
	.A0(n1807));
   OAI211XLM U2087 (.Y(n1703), 
	.C0(n1697), 
	.B0(n1698), 
	.A1(n1699), 
	.A0(n1800));
   AOI22XLM U2089 (.Y(n1700), 
	.B1(FIFO_u_U1_mem[0]), 
	.B0(n1801), 
	.A1(FIFO_u_U1_mem[8]), 
	.A0(n1802));
   OAI211XLM U2090 (.Y(n1702), 
	.C0(n1700), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(n1804), 
	.A0(n1701));
   AOI221XLM U2091 (.Y(n1710), 
	.C0(UART_TX_RX_U0_UART_TX_U1_counter[1]), 
	.B1(n1705), 
	.B0(UART_TX_RX_U0_UART_TX_U1_mem[1]), 
	.A1(UART_TX_RX_U0_UART_TX_U1_counter[2]), 
	.A0(UART_TX_RX_U0_UART_TX_U1_mem[5]));
   AOI221XLM U2092 (.Y(n1709), 
	.C0(n1704), 
	.B1(UART_TX_RX_U0_UART_TX_U1_mem[3]), 
	.B0(n1705), 
	.A1(UART_TX_RX_U0_UART_TX_U1_mem[7]), 
	.A0(UART_TX_RX_U0_UART_TX_U1_counter[2]));
   AOI221XLM U2093 (.Y(n1707), 
	.C0(UART_TX_RX_U0_UART_TX_U1_counter[1]), 
	.B1(n1705), 
	.B0(UART_TX_RX_U0_UART_TX_U1_mem[0]), 
	.A1(UART_TX_RX_U0_UART_TX_U1_counter[2]), 
	.A0(UART_TX_RX_U0_UART_TX_U1_mem[4]));
   AOI221XLM U2094 (.Y(n1706), 
	.C0(n1704), 
	.B1(UART_TX_RX_U0_UART_TX_U1_mem[2]), 
	.B0(n1705), 
	.A1(UART_TX_RX_U0_UART_TX_U1_mem[6]), 
	.A0(UART_TX_RX_U0_UART_TX_U1_counter[2]));
   OR2X1M U2095 (.Y(n1708), 
	.B(n1706), 
	.A(n1707));
   OAI32XLM U2096 (.Y(n1712), 
	.B1(n1708), 
	.B0(UART_TX_RX_U0_UART_TX_U1_counter[0]), 
	.A2(n1709), 
	.A1(n1710), 
	.A0(n1711));
   OAI2BB2XLM U2097 (.Y(n883), 
	.B1(n1713), 
	.B0(n1811), 
	.A1N(n1712), 
	.A0N(UART_TX_RX_U0_UART_TX_U1_loading));
   AOI221XLM U2098 (.Y(n1717), 
	.C0(n1714), 
	.B1(n1715), 
	.B0(n1716), 
	.A1(UART_TX_RX_U0_UART_RX_par_done), 
	.A0(UART_TX_RX_U0_UART_RX_U7_c_state[0]));
   OAI21BXLM U2099 (.Y(n882), 
	.B0N(n1717), 
	.A1(n1718), 
	.A0(UART_TX_RX_U0_UART_RX_strt_glitch));
   AOI2BB2XLM U2100 (.Y(n877), 
	.B1(n1735), 
	.B0(n1832), 
	.A1N(n1832), 
	.A0N(Regfile_u_reg_file_15__0_));
   AOI2BB2XLM U2101 (.Y(n876), 
	.B1(n1735), 
	.B0(n1833), 
	.A1N(n1833), 
	.A0N(Regfile_u_reg_file_14__0_));
   AOI2BB2XLM U2102 (.Y(n875), 
	.B1(n1735), 
	.B0(n1834), 
	.A1N(n1834), 
	.A0N(Regfile_u_reg_file_13__0_));
   AOI2BB2XLM U2103 (.Y(n874), 
	.B1(n1735), 
	.B0(n1835), 
	.A1N(n1835), 
	.A0N(Regfile_u_reg_file_12__0_));
   AOI2BB2XLM U2104 (.Y(n873), 
	.B1(n1735), 
	.B0(n1836), 
	.A1N(n1836), 
	.A0N(Regfile_u_reg_file_11__0_));
   AOI2BB2XLM U2105 (.Y(n872), 
	.B1(n1735), 
	.B0(n1837), 
	.A1N(n1837), 
	.A0N(Regfile_u_reg_file_10__0_));
   AOI2BB2XLM U2106 (.Y(n871), 
	.B1(n1735), 
	.B0(n1838), 
	.A1N(n1838), 
	.A0N(Regfile_u_reg_file_9__0_));
   AOI2BB2XLM U2107 (.Y(n870), 
	.B1(n1735), 
	.B0(n1839), 
	.A1N(n1839), 
	.A0N(Regfile_u_reg_file_8__0_));
   AOI2BB2XLM U2108 (.Y(n869), 
	.B1(n1735), 
	.B0(n1840), 
	.A1N(n1840), 
	.A0N(Regfile_u_reg_file_7__0_));
   AOI2BB2XLM U2109 (.Y(n868), 
	.B1(n1735), 
	.B0(n1841), 
	.A1N(n1841), 
	.A0N(Regfile_u_reg_file_6__0_));
   AOI2BB2XLM U2110 (.Y(n867), 
	.B1(n1735), 
	.B0(n1842), 
	.A1N(n1842), 
	.A0N(Regfile_u_reg_file_5__0_));
   AOI2BB2XLM U2111 (.Y(n866), 
	.B1(n1735), 
	.B0(n1843), 
	.A1N(n1843), 
	.A0N(Regfile_u_reg_file_4__0_));
   AOI2BB2XLM U2112 (.Y(n865), 
	.B1(n1735), 
	.B0(n1845), 
	.A1N(n1845), 
	.A0N(reg3[0]));
   AOI2BB2XLM U2113 (.Y(n858), 
	.B1(FE_OFN2_n1745), 
	.B0(n1736), 
	.A1N(n1736), 
	.A0N(FIFO_u_U1_mem[0]));
   AOI2BB2XLM U2114 (.Y(n857), 
	.B1(FE_OFN4_n1746), 
	.B0(n1736), 
	.A1N(n1736), 
	.A0N(FIFO_u_U1_mem[7]));
   AOI2BB2XLM U2115 (.Y(n856), 
	.B1(FE_OFN5_n1754), 
	.B0(n1736), 
	.A1N(n1736), 
	.A0N(FIFO_u_U1_mem[6]));
   AOI2BB2XLM U2116 (.Y(n855), 
	.B1(FE_OFN6_n1762), 
	.B0(n1736), 
	.A1N(n1736), 
	.A0N(FIFO_u_U1_mem[5]));
   AOI2BB2XLM U2117 (.Y(n854), 
	.B1(FE_OFN7_n1770), 
	.B0(n1736), 
	.A1N(n1736), 
	.A0N(FIFO_u_U1_mem[4]));
   AOI2BB2XLM U2118 (.Y(n853), 
	.B1(FE_OFN8_n1778), 
	.B0(n1736), 
	.A1N(n1736), 
	.A0N(FIFO_u_U1_mem[3]));
   AOI2BB2XLM U2119 (.Y(n852), 
	.B1(FE_OFN9_n1786), 
	.B0(n1736), 
	.A1N(n1736), 
	.A0N(FIFO_u_U1_mem[2]));
   AOI2BB2XLM U2120 (.Y(n851), 
	.B1(FE_OFN10_n1794), 
	.B0(n1736), 
	.A1N(n1736), 
	.A0N(FIFO_u_U1_mem[1]));
   AOI2BB2XLM U2122 (.Y(n850), 
	.B1(FE_OFN2_n1745), 
	.B0(FE_OFN14_n1737), 
	.A1N(FE_OFN14_n1737), 
	.A0N(FIFO_u_U1_mem[8]));
   AOI2BB2XLM U2123 (.Y(n849), 
	.B1(FE_OFN4_n1746), 
	.B0(FE_OFN14_n1737), 
	.A1N(FE_OFN14_n1737), 
	.A0N(FIFO_u_U1_mem[15]));
   AOI2BB2XLM U2124 (.Y(n848), 
	.B1(FE_OFN5_n1754), 
	.B0(FE_OFN14_n1737), 
	.A1N(FE_OFN14_n1737), 
	.A0N(FIFO_u_U1_mem[14]));
   AOI2BB2XLM U2125 (.Y(n847), 
	.B1(FE_OFN6_n1762), 
	.B0(FE_OFN14_n1737), 
	.A1N(FE_OFN14_n1737), 
	.A0N(FIFO_u_U1_mem[13]));
   AOI2BB2XLM U2126 (.Y(n846), 
	.B1(FE_OFN7_n1770), 
	.B0(FE_OFN14_n1737), 
	.A1N(FE_OFN14_n1737), 
	.A0N(FIFO_u_U1_mem[12]));
   AOI2BB2XLM U2127 (.Y(n845), 
	.B1(FE_OFN8_n1778), 
	.B0(FE_OFN14_n1737), 
	.A1N(FE_OFN14_n1737), 
	.A0N(FIFO_u_U1_mem[11]));
   AOI2BB2XLM U2128 (.Y(n844), 
	.B1(FE_OFN9_n1786), 
	.B0(FE_OFN14_n1737), 
	.A1N(FE_OFN14_n1737), 
	.A0N(FIFO_u_U1_mem[10]));
   AOI2BB2XLM U2129 (.Y(n843), 
	.B1(FE_OFN10_n1794), 
	.B0(FE_OFN14_n1737), 
	.A1N(FE_OFN14_n1737), 
	.A0N(FIFO_u_U1_mem[9]));
   AOI2BB2XLM U2130 (.Y(n834), 
	.B1(FE_OFN2_n1745), 
	.B0(n1739), 
	.A1N(n1739), 
	.A0N(FIFO_u_U1_mem[24]));
   AOI2BB2XLM U2131 (.Y(n833), 
	.B1(FE_OFN4_n1746), 
	.B0(n1739), 
	.A1N(n1739), 
	.A0N(FIFO_u_U1_mem[31]));
   AOI2BB2XLM U2132 (.Y(n832), 
	.B1(FE_OFN5_n1754), 
	.B0(n1739), 
	.A1N(n1739), 
	.A0N(FIFO_u_U1_mem[30]));
   AOI2BB2XLM U2133 (.Y(n831), 
	.B1(FE_OFN6_n1762), 
	.B0(n1739), 
	.A1N(n1739), 
	.A0N(FIFO_u_U1_mem[29]));
   AOI2BB2XLM U2134 (.Y(n830), 
	.B1(FE_OFN7_n1770), 
	.B0(n1739), 
	.A1N(n1739), 
	.A0N(FIFO_u_U1_mem[28]));
   AOI2BB2XLM U2135 (.Y(n829), 
	.B1(FE_OFN8_n1778), 
	.B0(n1739), 
	.A1N(n1739), 
	.A0N(FIFO_u_U1_mem[27]));
   AOI2BB2XLM U2136 (.Y(n828), 
	.B1(FE_OFN9_n1786), 
	.B0(n1739), 
	.A1N(n1739), 
	.A0N(FIFO_u_U1_mem[26]));
   AOI2BB2XLM U2137 (.Y(n827), 
	.B1(FE_OFN10_n1794), 
	.B0(n1739), 
	.A1N(n1739), 
	.A0N(FIFO_u_U1_mem[25]));
   AOI2BB2XLM U2138 (.Y(n818), 
	.B1(FE_OFN2_n1745), 
	.B0(FE_OFN13_n1741), 
	.A1N(FE_OFN13_n1741), 
	.A0N(FIFO_u_U1_mem[40]));
   AOI2BB2XLM U2139 (.Y(n817), 
	.B1(FE_OFN4_n1746), 
	.B0(FE_OFN13_n1741), 
	.A1N(FE_OFN13_n1741), 
	.A0N(FIFO_u_U1_mem[47]));
   AOI2BB2XLM U2140 (.Y(n816), 
	.B1(FE_OFN5_n1754), 
	.B0(FE_OFN13_n1741), 
	.A1N(FE_OFN13_n1741), 
	.A0N(FIFO_u_U1_mem[46]));
   AOI2BB2XLM U2141 (.Y(n815), 
	.B1(FE_OFN6_n1762), 
	.B0(FE_OFN13_n1741), 
	.A1N(FE_OFN13_n1741), 
	.A0N(FIFO_u_U1_mem[45]));
   AOI2BB2XLM U2142 (.Y(n814), 
	.B1(FE_OFN7_n1770), 
	.B0(FE_OFN13_n1741), 
	.A1N(FE_OFN13_n1741), 
	.A0N(FIFO_u_U1_mem[44]));
   AOI2BB2XLM U2143 (.Y(n813), 
	.B1(FE_OFN8_n1778), 
	.B0(FE_OFN13_n1741), 
	.A1N(FE_OFN13_n1741), 
	.A0N(FIFO_u_U1_mem[43]));
   AOI2BB2XLM U2144 (.Y(n812), 
	.B1(FE_OFN9_n1786), 
	.B0(FE_OFN13_n1741), 
	.A1N(FE_OFN13_n1741), 
	.A0N(FIFO_u_U1_mem[42]));
   AOI2BB2XLM U2145 (.Y(n811), 
	.B1(FE_OFN10_n1794), 
	.B0(FE_OFN13_n1741), 
	.A1N(FE_OFN13_n1741), 
	.A0N(FIFO_u_U1_mem[41]));
   AOI2BB2XLM U2146 (.Y(n810), 
	.B1(FE_OFN2_n1745), 
	.B0(FE_OFN11_n1743), 
	.A1N(FE_OFN11_n1743), 
	.A0N(FIFO_u_U1_mem[48]));
   AOI2BB2XLM U2147 (.Y(n809), 
	.B1(FE_OFN4_n1746), 
	.B0(FE_OFN11_n1743), 
	.A1N(FE_OFN11_n1743), 
	.A0N(FIFO_u_U1_mem[55]));
   AOI2BB2XLM U2148 (.Y(n808), 
	.B1(FE_OFN5_n1754), 
	.B0(FE_OFN11_n1743), 
	.A1N(FE_OFN11_n1743), 
	.A0N(FIFO_u_U1_mem[54]));
   AOI2BB2XLM U2149 (.Y(n807), 
	.B1(FE_OFN6_n1762), 
	.B0(FE_OFN11_n1743), 
	.A1N(FE_OFN11_n1743), 
	.A0N(FIFO_u_U1_mem[53]));
   AOI2BB2XLM U2150 (.Y(n806), 
	.B1(FE_OFN7_n1770), 
	.B0(FE_OFN11_n1743), 
	.A1N(FE_OFN11_n1743), 
	.A0N(FIFO_u_U1_mem[52]));
   AOI2BB2XLM U2151 (.Y(n805), 
	.B1(FE_OFN8_n1778), 
	.B0(FE_OFN11_n1743), 
	.A1N(FE_OFN11_n1743), 
	.A0N(FIFO_u_U1_mem[51]));
   AOI2BB2XLM U2152 (.Y(n804), 
	.B1(FE_OFN9_n1786), 
	.B0(FE_OFN11_n1743), 
	.A1N(FE_OFN11_n1743), 
	.A0N(FIFO_u_U1_mem[50]));
   AOI2BB2XLM U2153 (.Y(n803), 
	.B1(FE_OFN10_n1794), 
	.B0(FE_OFN11_n1743), 
	.A1N(FE_OFN11_n1743), 
	.A0N(FIFO_u_U1_mem[49]));
   AOI2BB2XLM U2154 (.Y(n802), 
	.B1(FE_OFN2_n1745), 
	.B0(FE_OFN12_n1795), 
	.A1N(FE_OFN12_n1795), 
	.A0N(FIFO_u_U1_mem[56]));
   AOI2BB2XLM U2155 (.Y(n801), 
	.B1(n1811), 
	.B0(n1809), 
	.A1N(n1809), 
	.A0N(UART_TX_RX_U0_UART_TX_U1_mem[0]));
   AOI2BB2XLM U2156 (.Y(n800), 
	.B1(FE_OFN4_n1746), 
	.B0(FE_OFN12_n1795), 
	.A1N(FE_OFN12_n1795), 
	.A0N(FIFO_u_U1_mem[63]));
   AOI21XLM U2157 (.Y(n1748), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(FIFO_u_U1_mem[55]), 
	.A0(n1796));
   AOI22XLM U2158 (.Y(n1747), 
	.B1(FIFO_u_U1_mem[47]), 
	.B0(n1802), 
	.A1(FIFO_u_U1_mem[63]), 
	.A0(n1807));
   AOI22XLM U2159 (.Y(n1750), 
	.B1(FIFO_u_U1_mem[7]), 
	.B0(n1801), 
	.A1(FIFO_u_U1_mem[15]), 
	.A0(n1802));
   OAI211XLM U2160 (.Y(n1752), 
	.C0(n1750), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(n1804), 
	.A0(n1751));
   AOI32XLM U2161 (.Y(n1818), 
	.B1(n1753), 
	.B0(n1752), 
	.A2(n1807), 
	.A1(n1753), 
	.A0(FIFO_u_U1_mem[31]));
   AOI2BB2XLM U2162 (.Y(n799), 
	.B1(n1818), 
	.B0(n1809), 
	.A1N(n1809), 
	.A0N(UART_TX_RX_U0_UART_TX_U1_mem[7]));
   AOI2BB2XLM U2163 (.Y(n798), 
	.B1(FE_OFN5_n1754), 
	.B0(FE_OFN12_n1795), 
	.A1N(FE_OFN12_n1795), 
	.A0N(FIFO_u_U1_mem[62]));
   AOI21XLM U2164 (.Y(n1756), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(FIFO_u_U1_mem[54]), 
	.A0(n1796));
   AOI22XLM U2165 (.Y(n1755), 
	.B1(FIFO_u_U1_mem[46]), 
	.B0(n1802), 
	.A1(FIFO_u_U1_mem[62]), 
	.A0(n1807));
   AOI22XLM U2166 (.Y(n1758), 
	.B1(FIFO_u_U1_mem[6]), 
	.B0(n1801), 
	.A1(FIFO_u_U1_mem[14]), 
	.A0(n1802));
   OAI211XLM U2167 (.Y(n1760), 
	.C0(n1758), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(n1804), 
	.A0(n1759));
   AOI32XLM U2168 (.Y(n1815), 
	.B1(n1761), 
	.B0(n1760), 
	.A2(n1807), 
	.A1(n1761), 
	.A0(FIFO_u_U1_mem[30]));
   AOI2BB2XLM U2169 (.Y(n797), 
	.B1(n1815), 
	.B0(n1809), 
	.A1N(n1809), 
	.A0N(UART_TX_RX_U0_UART_TX_U1_mem[6]));
   AOI2BB2XLM U2170 (.Y(n796), 
	.B1(FE_OFN6_n1762), 
	.B0(FE_OFN12_n1795), 
	.A1N(FE_OFN12_n1795), 
	.A0N(FIFO_u_U1_mem[61]));
   AOI21XLM U2171 (.Y(n1764), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(FIFO_u_U1_mem[53]), 
	.A0(n1796));
   AOI22XLM U2172 (.Y(n1763), 
	.B1(FIFO_u_U1_mem[45]), 
	.B0(n1802), 
	.A1(FIFO_u_U1_mem[61]), 
	.A0(n1807));
   OAI211XLM U2173 (.Y(n1769), 
	.C0(n1763), 
	.B0(n1764), 
	.A1(n1765), 
	.A0(n1800));
   AOI22XLM U2174 (.Y(n1766), 
	.B1(FIFO_u_U1_mem[5]), 
	.B0(n1801), 
	.A1(FIFO_u_U1_mem[13]), 
	.A0(n1802));
   OAI211XLM U2175 (.Y(n1768), 
	.C0(n1766), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(n1804), 
	.A0(n1767));
   AOI32XLM U2176 (.Y(n1813), 
	.B1(n1769), 
	.B0(n1768), 
	.A2(n1807), 
	.A1(n1769), 
	.A0(FIFO_u_U1_mem[29]));
   AOI2BB2XLM U2177 (.Y(n795), 
	.B1(n1813), 
	.B0(n1809), 
	.A1N(n1809), 
	.A0N(UART_TX_RX_U0_UART_TX_U1_mem[5]));
   AOI2BB2XLM U2178 (.Y(n794), 
	.B1(FE_OFN7_n1770), 
	.B0(FE_OFN12_n1795), 
	.A1N(FE_OFN12_n1795), 
	.A0N(FIFO_u_U1_mem[60]));
   AOI21XLM U2179 (.Y(n1772), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(FIFO_u_U1_mem[52]), 
	.A0(n1796));
   AOI22XLM U2180 (.Y(n1771), 
	.B1(FIFO_u_U1_mem[44]), 
	.B0(n1802), 
	.A1(FIFO_u_U1_mem[60]), 
	.A0(n1807));
   OAI211XLM U2181 (.Y(n1777), 
	.C0(n1771), 
	.B0(n1772), 
	.A1(n1773), 
	.A0(n1800));
   AOI22XLM U2182 (.Y(n1774), 
	.B1(FIFO_u_U1_mem[4]), 
	.B0(n1801), 
	.A1(FIFO_u_U1_mem[12]), 
	.A0(n1802));
   OAI211XLM U2183 (.Y(n1776), 
	.C0(n1774), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(n1804), 
	.A0(n1775));
   AOI32XLM U2184 (.Y(n1816), 
	.B1(n1777), 
	.B0(n1776), 
	.A2(n1807), 
	.A1(n1777), 
	.A0(FIFO_u_U1_mem[28]));
   AOI2BB2XLM U2185 (.Y(n793), 
	.B1(n1816), 
	.B0(n1809), 
	.A1N(n1809), 
	.A0N(UART_TX_RX_U0_UART_TX_U1_mem[4]));
   AOI2BB2XLM U2186 (.Y(n792), 
	.B1(FE_OFN8_n1778), 
	.B0(FE_OFN12_n1795), 
	.A1N(FE_OFN12_n1795), 
	.A0N(FIFO_u_U1_mem[59]));
   AOI21XLM U2187 (.Y(n1780), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(FIFO_u_U1_mem[51]), 
	.A0(n1796));
   AOI22XLM U2188 (.Y(n1779), 
	.B1(FIFO_u_U1_mem[43]), 
	.B0(n1802), 
	.A1(FIFO_u_U1_mem[59]), 
	.A0(n1807));
   AOI22XLM U2189 (.Y(n1782), 
	.B1(FIFO_u_U1_mem[3]), 
	.B0(n1801), 
	.A1(FIFO_u_U1_mem[11]), 
	.A0(n1802));
   OAI211XLM U2190 (.Y(n1784), 
	.C0(n1782), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(n1804), 
	.A0(n1783));
   AOI32XLM U2191 (.Y(n1814), 
	.B1(n1785), 
	.B0(n1784), 
	.A2(n1807), 
	.A1(n1785), 
	.A0(FIFO_u_U1_mem[27]));
   AOI2BB2XLM U2192 (.Y(n791), 
	.B1(n1814), 
	.B0(n1809), 
	.A1N(n1809), 
	.A0N(UART_TX_RX_U0_UART_TX_U1_mem[3]));
   AOI2BB2XLM U2193 (.Y(n790), 
	.B1(FE_OFN9_n1786), 
	.B0(FE_OFN12_n1795), 
	.A1N(FE_OFN12_n1795), 
	.A0N(FIFO_u_U1_mem[58]));
   AOI21XLM U2194 (.Y(n1788), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(FIFO_u_U1_mem[50]), 
	.A0(n1796));
   AOI22XLM U2195 (.Y(n1787), 
	.B1(FIFO_u_U1_mem[42]), 
	.B0(n1802), 
	.A1(FIFO_u_U1_mem[58]), 
	.A0(n1807));
   OAI211XLM U2196 (.Y(n1793), 
	.C0(n1787), 
	.B0(n1788), 
	.A1(n1789), 
	.A0(n1800));
   AOI22XLM U2197 (.Y(n1790), 
	.B1(FIFO_u_U1_mem[2]), 
	.B0(n1801), 
	.A1(FIFO_u_U1_mem[10]), 
	.A0(n1802));
   OAI211XLM U2198 (.Y(n1792), 
	.C0(n1790), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(n1804), 
	.A0(n1791));
   AOI32XLM U2199 (.Y(n1812), 
	.B1(n1793), 
	.B0(n1792), 
	.A2(n1807), 
	.A1(n1793), 
	.A0(FIFO_u_U1_mem[26]));
   AOI2BB2XLM U2200 (.Y(n789), 
	.B1(n1812), 
	.B0(n1809), 
	.A1N(n1809), 
	.A0N(UART_TX_RX_U0_UART_TX_U1_mem[2]));
   AOI2BB2XLM U2201 (.Y(n788), 
	.B1(FE_OFN10_n1794), 
	.B0(FE_OFN12_n1795), 
	.A1N(FE_OFN12_n1795), 
	.A0N(FIFO_u_U1_mem[57]));
   AOI21XLM U2202 (.Y(n1798), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(FIFO_u_U1_mem[49]), 
	.A0(n1796));
   AOI22XLM U2203 (.Y(n1797), 
	.B1(FIFO_u_U1_mem[41]), 
	.B0(n1802), 
	.A1(FIFO_u_U1_mem[57]), 
	.A0(n1807));
   OAI211XLM U2204 (.Y(n1808), 
	.C0(n1797), 
	.B0(n1798), 
	.A1(n1799), 
	.A0(n1800));
   AOI22XLM U2205 (.Y(n1803), 
	.B1(FIFO_u_U1_mem[1]), 
	.B0(n1801), 
	.A1(FIFO_u_U1_mem[9]), 
	.A0(n1802));
   OAI211XLM U2206 (.Y(n1806), 
	.C0(n1803), 
	.B0(FIFO_u_r_addr[2]), 
	.A1(n1804), 
	.A0(n1805));
   AOI32XLM U2207 (.Y(n1819), 
	.B1(n1808), 
	.B0(n1806), 
	.A2(n1807), 
	.A1(n1808), 
	.A0(FIFO_u_U1_mem[25]));
   AOI2BB2XLM U2208 (.Y(n787), 
	.B1(n1819), 
	.B0(n1809), 
	.A1N(n1809), 
	.A0N(UART_TX_RX_U0_UART_TX_U1_mem[1]));
   AOI2BB2XLM U2209 (.Y(n783), 
	.B1(n1810), 
	.B0(n1832), 
	.A1N(n1832), 
	.A0N(Regfile_u_reg_file_15__1_));
   AOI2BB2XLM U2210 (.Y(n782), 
	.B1(n1810), 
	.B0(n1833), 
	.A1N(n1833), 
	.A0N(Regfile_u_reg_file_14__1_));
   AOI2BB2XLM U2211 (.Y(n781), 
	.B1(n1810), 
	.B0(n1834), 
	.A1N(n1834), 
	.A0N(Regfile_u_reg_file_13__1_));
   AOI2BB2XLM U2212 (.Y(n780), 
	.B1(n1810), 
	.B0(n1835), 
	.A1N(n1835), 
	.A0N(Regfile_u_reg_file_12__1_));
   AOI2BB2XLM U2213 (.Y(n779), 
	.B1(n1810), 
	.B0(n1836), 
	.A1N(n1836), 
	.A0N(Regfile_u_reg_file_11__1_));
   AOI2BB2XLM U2214 (.Y(n778), 
	.B1(n1810), 
	.B0(n1837), 
	.A1N(n1837), 
	.A0N(Regfile_u_reg_file_10__1_));
   AOI2BB2XLM U2215 (.Y(n777), 
	.B1(n1810), 
	.B0(n1838), 
	.A1N(n1838), 
	.A0N(Regfile_u_reg_file_9__1_));
   AOI2BB2XLM U2216 (.Y(n776), 
	.B1(n1810), 
	.B0(n1839), 
	.A1N(n1839), 
	.A0N(Regfile_u_reg_file_8__1_));
   AOI2BB2XLM U2217 (.Y(n775), 
	.B1(n1810), 
	.B0(n1840), 
	.A1N(n1840), 
	.A0N(Regfile_u_reg_file_7__1_));
   AOI2BB2XLM U2218 (.Y(n774), 
	.B1(n1810), 
	.B0(n1841), 
	.A1N(n1841), 
	.A0N(Regfile_u_reg_file_6__1_));
   AOI2BB2XLM U2219 (.Y(n773), 
	.B1(n1810), 
	.B0(n1842), 
	.A1N(n1842), 
	.A0N(Regfile_u_reg_file_5__1_));
   AOI2BB2XLM U2220 (.Y(n772), 
	.B1(n1810), 
	.B0(n1843), 
	.A1N(n1843), 
	.A0N(Regfile_u_reg_file_4__1_));
   AOI2BB2XLM U2221 (.Y(n771), 
	.B1(n1810), 
	.B0(n1845), 
	.A1N(n1845), 
	.A0N(reg3[1]));
   AOI2BB2XLM U2222 (.Y(n770), 
	.B1(n1810), 
	.B0(n1827), 
	.A1N(n1827), 
	.A0N(reg2[1]));
   XOR2XLM U2223 (.Y(n1823), 
	.B(n1811), 
	.A(n1812));
   XOR3XLM U2224 (.Y(n1817), 
	.C(n1813), 
	.B(n1814), 
	.A(reg2[1]));
   XOR3XLM U2225 (.Y(n1820), 
	.C(n1815), 
	.B(n1816), 
	.A(n1817));
   XOR3XLM U2226 (.Y(n1822), 
	.C(n1818), 
	.B(n1819), 
	.A(n1820));
   NOR2XLM U2227 (.Y(n1821), 
	.B(n1822), 
	.A(n1823));
   AOI211XLM U2228 (.Y(n1824), 
	.C0(n1821), 
	.B0(n1825), 
	.A1(n1822), 
	.A0(n1823));
   AO21XLM U2229 (.Y(n769), 
	.B0(n1824), 
	.A1(UART_TX_RX_U0_UART_TX_par_bit), 
	.A0(n1825));
   AOI2BB2XLM U2230 (.Y(n765), 
	.B1(n1826), 
	.B0(n1832), 
	.A1N(n1832), 
	.A0N(Regfile_u_reg_file_15__2_));
   AOI2BB2XLM U2231 (.Y(n764), 
	.B1(n1826), 
	.B0(n1833), 
	.A1N(n1833), 
	.A0N(Regfile_u_reg_file_14__2_));
   AOI2BB2XLM U2232 (.Y(n763), 
	.B1(n1826), 
	.B0(n1834), 
	.A1N(n1834), 
	.A0N(Regfile_u_reg_file_13__2_));
   AOI2BB2XLM U2233 (.Y(n762), 
	.B1(n1826), 
	.B0(n1835), 
	.A1N(n1835), 
	.A0N(Regfile_u_reg_file_12__2_));
   AOI2BB2XLM U2234 (.Y(n761), 
	.B1(n1826), 
	.B0(n1836), 
	.A1N(n1836), 
	.A0N(Regfile_u_reg_file_11__2_));
   AOI2BB2XLM U2235 (.Y(n760), 
	.B1(n1826), 
	.B0(n1837), 
	.A1N(n1837), 
	.A0N(Regfile_u_reg_file_10__2_));
   AOI2BB2XLM U2236 (.Y(n759), 
	.B1(n1826), 
	.B0(n1838), 
	.A1N(n1838), 
	.A0N(Regfile_u_reg_file_9__2_));
   AOI2BB2XLM U2237 (.Y(n758), 
	.B1(n1826), 
	.B0(n1839), 
	.A1N(n1839), 
	.A0N(Regfile_u_reg_file_8__2_));
   AOI2BB2XLM U2238 (.Y(n757), 
	.B1(n1826), 
	.B0(n1840), 
	.A1N(n1840), 
	.A0N(Regfile_u_reg_file_7__2_));
   AOI2BB2XLM U2239 (.Y(n756), 
	.B1(n1826), 
	.B0(n1841), 
	.A1N(n1841), 
	.A0N(Regfile_u_reg_file_6__2_));
   AOI2BB2XLM U2240 (.Y(n755), 
	.B1(n1826), 
	.B0(n1842), 
	.A1N(n1842), 
	.A0N(Regfile_u_reg_file_5__2_));
   AOI2BB2XLM U2241 (.Y(n754), 
	.B1(n1826), 
	.B0(n1843), 
	.A1N(n1843), 
	.A0N(Regfile_u_reg_file_4__2_));
   AOI2BB2XLM U2242 (.Y(n753), 
	.B1(n1826), 
	.B0(n1845), 
	.A1N(n1845), 
	.A0N(reg3[2]));
   AOI2BB2XLM U2243 (.Y(n752), 
	.B1(n1826), 
	.B0(n1827), 
	.A1N(n1827), 
	.A0N(reg2[2]));
   AOI2BB2XLM U2244 (.Y(n748), 
	.B1(n1828), 
	.B0(n1832), 
	.A1N(n1832), 
	.A0N(Regfile_u_reg_file_15__3_));
   AOI2BB2XLM U2245 (.Y(n747), 
	.B1(n1828), 
	.B0(n1833), 
	.A1N(n1833), 
	.A0N(Regfile_u_reg_file_14__3_));
   AOI2BB2XLM U2246 (.Y(n746), 
	.B1(n1828), 
	.B0(n1834), 
	.A1N(n1834), 
	.A0N(Regfile_u_reg_file_13__3_));
   AOI2BB2XLM U2247 (.Y(n745), 
	.B1(n1828), 
	.B0(n1835), 
	.A1N(n1835), 
	.A0N(Regfile_u_reg_file_12__3_));
   AOI2BB2XLM U2248 (.Y(n744), 
	.B1(n1828), 
	.B0(n1836), 
	.A1N(n1836), 
	.A0N(Regfile_u_reg_file_11__3_));
   AOI2BB2XLM U2249 (.Y(n743), 
	.B1(n1828), 
	.B0(n1837), 
	.A1N(n1837), 
	.A0N(Regfile_u_reg_file_10__3_));
   AOI2BB2XLM U2250 (.Y(n742), 
	.B1(n1828), 
	.B0(n1838), 
	.A1N(n1838), 
	.A0N(Regfile_u_reg_file_9__3_));
   AOI2BB2XLM U2251 (.Y(n741), 
	.B1(n1828), 
	.B0(n1839), 
	.A1N(n1839), 
	.A0N(Regfile_u_reg_file_8__3_));
   AOI2BB2XLM U2252 (.Y(n740), 
	.B1(n1828), 
	.B0(n1840), 
	.A1N(n1840), 
	.A0N(Regfile_u_reg_file_7__3_));
   AOI2BB2XLM U2253 (.Y(n739), 
	.B1(n1828), 
	.B0(n1841), 
	.A1N(n1841), 
	.A0N(Regfile_u_reg_file_6__3_));
   AOI2BB2XLM U2254 (.Y(n738), 
	.B1(n1828), 
	.B0(n1842), 
	.A1N(n1842), 
	.A0N(Regfile_u_reg_file_5__3_));
   AOI2BB2XLM U2255 (.Y(n737), 
	.B1(n1828), 
	.B0(n1843), 
	.A1N(n1843), 
	.A0N(Regfile_u_reg_file_4__3_));
   AOI2BB2XLM U2256 (.Y(n736), 
	.B1(n1828), 
	.B0(n1845), 
	.A1N(n1845), 
	.A0N(reg3[3]));
   AOI2BB2XLM U2257 (.Y(n731), 
	.B1(n1829), 
	.B0(n1832), 
	.A1N(n1832), 
	.A0N(Regfile_u_reg_file_15__4_));
   AOI2BB2XLM U2258 (.Y(n730), 
	.B1(n1829), 
	.B0(n1833), 
	.A1N(n1833), 
	.A0N(Regfile_u_reg_file_14__4_));
   AOI2BB2XLM U2259 (.Y(n729), 
	.B1(n1829), 
	.B0(n1834), 
	.A1N(n1834), 
	.A0N(Regfile_u_reg_file_13__4_));
   AOI2BB2XLM U2260 (.Y(n728), 
	.B1(n1829), 
	.B0(n1835), 
	.A1N(n1835), 
	.A0N(Regfile_u_reg_file_12__4_));
   AOI2BB2XLM U2261 (.Y(n727), 
	.B1(n1829), 
	.B0(n1836), 
	.A1N(n1836), 
	.A0N(Regfile_u_reg_file_11__4_));
   AOI2BB2XLM U2262 (.Y(n726), 
	.B1(n1829), 
	.B0(n1837), 
	.A1N(n1837), 
	.A0N(Regfile_u_reg_file_10__4_));
   AOI2BB2XLM U2263 (.Y(n725), 
	.B1(n1829), 
	.B0(n1838), 
	.A1N(n1838), 
	.A0N(Regfile_u_reg_file_9__4_));
   AOI2BB2XLM U2264 (.Y(n724), 
	.B1(n1829), 
	.B0(n1839), 
	.A1N(n1839), 
	.A0N(Regfile_u_reg_file_8__4_));
   AOI2BB2XLM U2265 (.Y(n723), 
	.B1(n1829), 
	.B0(n1840), 
	.A1N(n1840), 
	.A0N(Regfile_u_reg_file_7__4_));
   AOI2BB2XLM U2266 (.Y(n722), 
	.B1(n1829), 
	.B0(n1841), 
	.A1N(n1841), 
	.A0N(Regfile_u_reg_file_6__4_));
   AOI2BB2XLM U2267 (.Y(n721), 
	.B1(n1829), 
	.B0(n1842), 
	.A1N(n1842), 
	.A0N(Regfile_u_reg_file_5__4_));
   AOI2BB2XLM U2268 (.Y(n720), 
	.B1(n1829), 
	.B0(n1843), 
	.A1N(n1843), 
	.A0N(Regfile_u_reg_file_4__4_));
   AOI2BB2XLM U2269 (.Y(n719), 
	.B1(n1829), 
	.B0(n1845), 
	.A1N(n1845), 
	.A0N(reg3[4]));
   AOI2BB2XLM U2270 (.Y(n714), 
	.B1(n1830), 
	.B0(n1832), 
	.A1N(n1832), 
	.A0N(Regfile_u_reg_file_15__5_));
   AOI2BB2XLM U2271 (.Y(n713), 
	.B1(n1830), 
	.B0(n1833), 
	.A1N(n1833), 
	.A0N(Regfile_u_reg_file_14__5_));
   AOI2BB2XLM U2272 (.Y(n712), 
	.B1(n1830), 
	.B0(n1834), 
	.A1N(n1834), 
	.A0N(Regfile_u_reg_file_13__5_));
   AOI2BB2XLM U2273 (.Y(n711), 
	.B1(n1830), 
	.B0(n1835), 
	.A1N(n1835), 
	.A0N(Regfile_u_reg_file_12__5_));
   AOI2BB2XLM U2274 (.Y(n710), 
	.B1(n1830), 
	.B0(n1836), 
	.A1N(n1836), 
	.A0N(Regfile_u_reg_file_11__5_));
   AOI2BB2XLM U2275 (.Y(n709), 
	.B1(n1830), 
	.B0(n1837), 
	.A1N(n1837), 
	.A0N(Regfile_u_reg_file_10__5_));
   AOI2BB2XLM U2276 (.Y(n708), 
	.B1(n1830), 
	.B0(n1838), 
	.A1N(n1838), 
	.A0N(Regfile_u_reg_file_9__5_));
   AOI2BB2XLM U2277 (.Y(n707), 
	.B1(n1830), 
	.B0(n1839), 
	.A1N(n1839), 
	.A0N(Regfile_u_reg_file_8__5_));
   AOI2BB2XLM U2278 (.Y(n706), 
	.B1(n1830), 
	.B0(n1840), 
	.A1N(n1840), 
	.A0N(Regfile_u_reg_file_7__5_));
   AOI2BB2XLM U2279 (.Y(n705), 
	.B1(n1830), 
	.B0(n1841), 
	.A1N(n1841), 
	.A0N(Regfile_u_reg_file_6__5_));
   AOI2BB2XLM U2280 (.Y(n704), 
	.B1(n1830), 
	.B0(n1842), 
	.A1N(n1842), 
	.A0N(Regfile_u_reg_file_5__5_));
   AOI2BB2XLM U2281 (.Y(n703), 
	.B1(n1830), 
	.B0(n1843), 
	.A1N(SO[2]), 
	.A0N(n1843));
   AOI2BB2XLM U2282 (.Y(n702), 
	.B1(n1830), 
	.B0(n1845), 
	.A1N(n1845), 
	.A0N(reg3[5]));
   AOI2BB2XLM U2283 (.Y(n697), 
	.B1(n1831), 
	.B0(n1832), 
	.A1N(n1832), 
	.A0N(Regfile_u_reg_file_15__6_));
   AOI2BB2XLM U2284 (.Y(n696), 
	.B1(n1831), 
	.B0(n1833), 
	.A1N(n1833), 
	.A0N(Regfile_u_reg_file_14__6_));
   AOI2BB2XLM U2285 (.Y(n695), 
	.B1(n1831), 
	.B0(n1834), 
	.A1N(n1834), 
	.A0N(Regfile_u_reg_file_13__6_));
   AOI2BB2XLM U2286 (.Y(n694), 
	.B1(n1831), 
	.B0(n1835), 
	.A1N(n1835), 
	.A0N(Regfile_u_reg_file_12__6_));
   AOI2BB2XLM U2287 (.Y(n693), 
	.B1(n1831), 
	.B0(n1836), 
	.A1N(n1836), 
	.A0N(Regfile_u_reg_file_11__6_));
   AOI2BB2XLM U2288 (.Y(n692), 
	.B1(n1831), 
	.B0(n1837), 
	.A1N(n1837), 
	.A0N(Regfile_u_reg_file_10__6_));
   AOI2BB2XLM U2289 (.Y(n691), 
	.B1(n1831), 
	.B0(n1838), 
	.A1N(n1838), 
	.A0N(Regfile_u_reg_file_9__6_));
   AOI2BB2XLM U2290 (.Y(n690), 
	.B1(n1831), 
	.B0(n1839), 
	.A1N(n1839), 
	.A0N(Regfile_u_reg_file_8__6_));
   AOI2BB2XLM U2291 (.Y(n689), 
	.B1(n1831), 
	.B0(n1840), 
	.A1N(n1840), 
	.A0N(Regfile_u_reg_file_7__6_));
   AOI2BB2XLM U2292 (.Y(n688), 
	.B1(n1831), 
	.B0(n1841), 
	.A1N(n1841), 
	.A0N(Regfile_u_reg_file_6__6_));
   AOI2BB2XLM U2293 (.Y(n687), 
	.B1(n1831), 
	.B0(n1842), 
	.A1N(n1842), 
	.A0N(Regfile_u_reg_file_5__6_));
   AOI2BB2XLM U2294 (.Y(n686), 
	.B1(n1831), 
	.B0(n1843), 
	.A1N(n1843), 
	.A0N(Regfile_u_reg_file_4__6_));
   AOI2BB2XLM U2295 (.Y(n685), 
	.B1(n1831), 
	.B0(n1845), 
	.A1N(n1845), 
	.A0N(Regfile_u_n18));
   AOI2BB2XLM U2296 (.Y(n680), 
	.B1(n1844), 
	.B0(n1832), 
	.A1N(n1832), 
	.A0N(Regfile_u_reg_file_15__7_));
   AOI2BB2XLM U2297 (.Y(n679), 
	.B1(n1844), 
	.B0(n1833), 
	.A1N(n1833), 
	.A0N(Regfile_u_reg_file_14__7_));
   AOI2BB2XLM U2298 (.Y(n678), 
	.B1(n1844), 
	.B0(n1834), 
	.A1N(n1834), 
	.A0N(Regfile_u_reg_file_13__7_));
   AOI2BB2XLM U2299 (.Y(n677), 
	.B1(n1844), 
	.B0(n1835), 
	.A1N(n1835), 
	.A0N(Regfile_u_reg_file_12__7_));
   AOI2BB2XLM U2300 (.Y(n676), 
	.B1(n1844), 
	.B0(n1836), 
	.A1N(n1836), 
	.A0N(Regfile_u_reg_file_11__7_));
   AOI2BB2XLM U2301 (.Y(n675), 
	.B1(n1844), 
	.B0(n1837), 
	.A1N(n1837), 
	.A0N(Regfile_u_reg_file_10__7_));
   AOI2BB2XLM U2302 (.Y(n674), 
	.B1(n1844), 
	.B0(n1838), 
	.A1N(n1838), 
	.A0N(Regfile_u_reg_file_9__7_));
   AOI2BB2XLM U2303 (.Y(n673), 
	.B1(n1844), 
	.B0(n1839), 
	.A1N(n1839), 
	.A0N(Regfile_u_reg_file_8__7_));
   AOI2BB2XLM U2304 (.Y(n672), 
	.B1(n1844), 
	.B0(n1840), 
	.A1N(n1840), 
	.A0N(Regfile_u_reg_file_7__7_));
   AOI2BB2XLM U2305 (.Y(n671), 
	.B1(n1844), 
	.B0(n1841), 
	.A1N(n1841), 
	.A0N(Regfile_u_reg_file_6__7_));
   AOI2BB2XLM U2306 (.Y(n670), 
	.B1(n1844), 
	.B0(n1842), 
	.A1N(n1842), 
	.A0N(Regfile_u_reg_file_5__7_));
   AOI2BB2XLM U2307 (.Y(n669), 
	.B1(n1844), 
	.B0(n1843), 
	.A1N(n1843), 
	.A0N(Regfile_u_reg_file_4__7_));
   AOI2BB2XLM U2308 (.Y(n668), 
	.B1(n1844), 
	.B0(n1845), 
	.A1N(n1845), 
	.A0N(Regfile_u_n17));
   AOI222XLM U2310 (.Y(n1849), 
	.C1(UART_TX_RX_U0_UART_RX_U2_s1), 
	.C0(UART_RX_IN), 
	.B1(UART_TX_RX_U0_UART_RX_U2_s1), 
	.B0(UART_TX_RX_U0_UART_RX_U2_s0), 
	.A1(UART_RX_IN), 
	.A0(UART_TX_RX_U0_UART_RX_U2_s0));
   AOI221XLM U2311 (.Y(n664), 
	.C0(n1846), 
	.B1(n1847), 
	.B0(n1848), 
	.A1(n1849), 
	.A0(n1850));
   NOR2XLM U2312 (.Y(n1855), 
	.B(n1851), 
	.A(n1852));
   OAI21XLM U2313 (.Y(n1854), 
	.B0(n1853), 
	.A1(n1855), 
	.A0(UART_TX_RX_U0_UART_RX_bit_cnt[1]));
   AOI21XLM U2314 (.Y(n657), 
	.B0(n1854), 
	.A1(n1855), 
	.A0(UART_TX_RX_U0_UART_RX_bit_cnt[1]));
   OAI2B2XLM U2315 (.Y(n655), 
	.B1(n1856), 
	.B0(n1857), 
	.A1N(UART_TX_RX_U0_UART_RX_bit_cnt[3]), 
	.A0(n1858));
   AOI2BB2XLM U2316 (.Y(n1860), 
	.B1(n1859), 
	.B0(reg2[1]), 
	.A1N(reg2[1]), 
	.A0N(n1859));
   AOI2BB2XLM U2317 (.Y(n654), 
	.B1(n1860), 
	.B0(UART_TX_RX_U0_UART_RX_U4_par_done_next), 
	.A1N(UART_TX_RX_U0_UART_RX_U4_par_done_next), 
	.A0N(parity_error));
   AO21XLM U2318 (.Y(n648), 
	.B0(sys_ctrl_u_reg2_cfg), 
	.A1(n1861), 
	.A0(n1862));
   NAND3XLM U2320 (.Y(n1864), 
	.C(n1863), 
	.B(sys_ctrl_u_current_state[1]), 
	.A(SO[1]));
   AOI2BB2XLM U2321 (.Y(n627), 
	.B1(n1866), 
	.B0(n1870), 
	.A1N(n1870), 
	.A0N(sys_ctrl_u_wr_addr[0]));
   AOI2BB2XLM U2322 (.Y(n626), 
	.B1(n1867), 
	.B0(n1870), 
	.A1N(n1870), 
	.A0N(sys_ctrl_u_wr_addr[3]));
   AOI2BB2XLM U2323 (.Y(n625), 
	.B1(n1868), 
	.B0(n1870), 
	.A1N(n1870), 
	.A0N(sys_ctrl_u_wr_addr[2]));
   AOI2BB2XLM U2324 (.Y(n624), 
	.B1(n1869), 
	.B0(n1870), 
	.A1N(n1870), 
	.A0N(sys_ctrl_u_wr_addr[1]));
   AO22XLM U2325 (.Y(n623), 
	.B1(sys_ctrl_u_frame2[1]), 
	.B0(n1871), 
	.A1(alu_out[9]), 
	.A0(n1872));
   AO22XLM U2326 (.Y(n622), 
	.B1(sys_ctrl_u_frame2[2]), 
	.B0(n1871), 
	.A1(alu_out[10]), 
	.A0(n1872));
   AO22XLM U2327 (.Y(n621), 
	.B1(sys_ctrl_u_frame2[3]), 
	.B0(n1871), 
	.A1(alu_out[11]), 
	.A0(n1872));
   AO22XLM U2328 (.Y(n620), 
	.B1(sys_ctrl_u_frame2[4]), 
	.B0(n1871), 
	.A1(alu_out[12]), 
	.A0(n1872));
   AO22XLM U2329 (.Y(n619), 
	.B1(sys_ctrl_u_frame2[5]), 
	.B0(n1871), 
	.A1(alu_out[13]), 
	.A0(n1872));
   AO22XLM U2330 (.Y(n618), 
	.B1(sys_ctrl_u_frame2[6]), 
	.B0(n1871), 
	.A1(alu_out[14]), 
	.A0(n1872));
   AO22XLM U2331 (.Y(n617), 
	.B1(sys_ctrl_u_frame2[7]), 
	.B0(n1871), 
	.A1(alu_out[15]), 
	.A0(n1872));
   AO22XLM U2332 (.Y(n616), 
	.B1(sys_ctrl_u_frame2[0]), 
	.B0(n1871), 
	.A1(alu_out[8]), 
	.A0(n1872));
   INVXLM U2338 (.Y(n1914), 
	.A(SO[1]));
   CLKINVX2M U2342 (.Y(n1918), 
	.A(n1941));
   CLKINVX2M U2346 (.Y(n1922), 
	.A(n1941));
   INVX2M U2347 (.Y(n1923), 
	.A(n1941));
   CLKINVX2M U2350 (.Y(n1926), 
	.A(n1941));
   CLKINVX2M U2352 (.Y(n1928), 
	.A(n1941));
   CLKINVX2M U2353 (.Y(n1929), 
	.A(n1941));
   CLKINVX2M U2356 (.Y(n1932), 
	.A(n1941));
   CLKINVX2M U2357 (.Y(n1933), 
	.A(n1941));
   CLKINVX2M U2358 (.Y(n1934), 
	.A(n1941));
   CLKINVX2M U2361 (.Y(n1937), 
	.A(n1941));
   CLKINVX2M U2363 (.Y(n1939), 
	.A(n1941));
   INVX2M U2364 (.Y(n1940), 
	.A(n1941));
   INVX2M U2365 (.Y(n1941), 
	.A(FE_OFN15_SE));
   CLKINVX2M U2366 (.Y(n1942), 
	.A(n1941));
   CLKINVX2M U2367 (.Y(n1943), 
	.A(n1941));
   CLKINVX2M U2368 (.Y(n1944), 
	.A(n1941));
   clk_div_WIDTH6_test_1 TX_CLK (.i_ref_clk(clk_m_UART), 
	.i_rst_n(uart_rst), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ reg3[5],
		reg3[4],
		reg3[3],
		reg3[2],
		reg3[1],
		reg3[0] }), 
	.o_div_clk(n885), 
	.test_si(synced_p_data[7]), 
	.test_so(n1904), 
	.test_se(FE_OFN15_SE), 
	.n1904__Exclude_0_NET(n1904__Exclude_0_NET), 
	.clk_m_UART__L4_N0(clk_m_UART__L4_N0), 
	.clk_m_UART__L5_N0(clk_m_UART__L5_N0));
   clk_div_WIDTH6_test_0 RX_CLK (.i_ref_clk(clk_m_UART), 
	.i_rst_n(uart_rst), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		rx_ratio[2],
		rx_ratio[1],
		rx_ratio[0] }), 
	.o_div_clk(n884), 
	.test_si(RF1_n_synch[0]), 
	.test_so(n1907), 
	.test_se(FE_OFN15_SE), 
	.n1907__Exclude_0_NET(n1907__Exclude_0_NET), 
	.clk_m_UART__L4_N0(clk_m_UART__L4_N0), 
	.clk_m_UART__L5_N0(clk_m_UART__L5_N0));
   CLK_GATE ALU_CG (.CLK_EN(alu_clk_en_test), 
	.CLK(clk_m_REF__L2_N0), 
	.GATED_CLK(alu_cg), 
	.clk_m_REF__L3_N0(clk_m_REF__L3_N0));
   SDFFSQX1M Regfile_u_reg_file_reg_2__7_ (.SN(ref_rst), 
	.SI(reg2[6]), 
	.SE(n1918), 
	.Q(reg2[7]), 
	.D(n667), 
	.CK(clk_m_REF__L6_N1));
   SDFFSQX1M Regfile_u_reg_file_reg_2__0_ (.SN(FE_OFN1_ref_rst), 
	.SI(FE_OFN16_reg1_7_), 
	.SE(n1922), 
	.Q(reg2[0]), 
	.D(n864), 
	.CK(clk_m_REF__L6_N1));
   SDFFSQX1M FIFO_u_U5_empty_reg (.SN(tx_rst), 
	.SI(FIFO_u_r_ptr[2]), 
	.SE(n1928), 
	.Q(fifo_empty), 
	.D(eq_x_40_n25), 
	.CK(tx_clk__L1_N0));
   SDFFSQX1M Regfile_u_reg_file_reg_3__5_ (.SN(ref_rst), 
	.SI(reg3[4]), 
	.SE(n1932), 
	.Q(reg3[5]), 
	.D(n702), 
	.CK(clk_m_REF__L6_N1));
   CLKMX2X2M U949 (.Y(uart_rst), 
	.S0(test_mode), 
	.B(scan_rst), 
	.A(SO[3]));
   ADDFXLM intadd_1_U2 (.S(intadd_1_SUM_4_), 
	.CO(intadd_1_n1), 
	.CI(intadd_1_n2), 
	.B(intadd_1_B_4_), 
	.A(intadd_4_n1));
   ADDFXLM intadd_0_U3 (.S(intadd_0_SUM_3_), 
	.CO(intadd_0_n2), 
	.CI(intadd_0_n3), 
	.B(intadd_0_B_3_), 
	.A(intadd_0_A_3_));
   ADDFXLM intadd_3_U2 (.S(intadd_1_B_4_), 
	.CO(intadd_3_n1), 
	.CI(intadd_3_n2), 
	.B(intadd_0_SUM_2_), 
	.A(intadd_3_A_3_));
   ADDFXLM intadd_2_U3 (.S(intadd_2_SUM_2_), 
	.CO(intadd_2_n2), 
	.CI(intadd_2_n3), 
	.B(intadd_2_B_2_), 
	.A(intadd_2_A_2_));
   ADDFXLM intadd_5_U2 (.S(intadd_0_B_4_), 
	.CO(intadd_5_n1), 
	.CI(intadd_5_n2), 
	.B(intadd_2_SUM_1_), 
	.A(intadd_5_A_2_));
   ADDFXLM DP_OP_196J1_124_5161_U20 (.S(C118_DATA15_1), 
	.CO(DP_OP_196J1_124_5161_n15), 
	.CI(DP_OP_196J1_124_5161_n16), 
	.B(reg0[1]), 
	.A(DP_OP_196J1_124_5161_n28));
   ADDFXLM intadd_7_U4 (.S(intadd_7_SUM_0_), 
	.CO(intadd_7_n3), 
	.CI(intadd_7_CI), 
	.B(intadd_7_B_0_), 
	.A(intadd_7_A_0_));
   ADDFXLM DP_OP_196J1_124_5161_U18 (.S(C118_DATA15_3), 
	.CO(DP_OP_196J1_124_5161_n13), 
	.CI(DP_OP_196J1_124_5161_n14), 
	.B(reg0[3]), 
	.A(DP_OP_196J1_124_5161_n26));
   ADDFXLM intadd_7_U2 (.S(intadd_7_SUM_2_), 
	.CO(intadd_7_n1), 
	.CI(intadd_7_n2), 
	.B(intadd_7_B_2_), 
	.A(intadd_6_SUM_0_));
   ADDFXLM DP_OP_196J1_124_5161_U16 (.S(C118_DATA15_5), 
	.CO(DP_OP_196J1_124_5161_n11), 
	.CI(DP_OP_196J1_124_5161_n12), 
	.B(FE_OFN21_reg0_5_), 
	.A(DP_OP_196J1_124_5161_n24));
   ADDFXLM DP_OP_196J1_124_5161_U14 (.S(C118_DATA15_7), 
	.CO(DP_OP_196J1_124_5161_n9), 
	.CI(DP_OP_196J1_124_5161_n10), 
	.B(FE_OFN17_reg0_7_), 
	.A(DP_OP_196J1_124_5161_n22));
   ADDFXLM intadd_1_U3 (.S(intadd_1_SUM_3_), 
	.CO(intadd_1_n2), 
	.CI(intadd_1_n3), 
	.B(intadd_1_B_3_), 
	.A(intadd_1_A_3_));
   ADDFXLM intadd_4_U2 (.S(intadd_1_B_3_), 
	.CO(intadd_4_n1), 
	.CI(intadd_4_n2), 
	.B(intadd_3_SUM_2_), 
	.A(intadd_0_SUM_1_));
   ADDFXLM intadd_5_U3 (.S(intadd_0_B_3_), 
	.CO(intadd_5_n2), 
	.CI(intadd_5_n3), 
	.B(intadd_5_B_1_), 
	.A(intadd_2_SUM_0_));
   ADDFXLM intadd_2_U4 (.S(intadd_2_SUM_1_), 
	.CO(intadd_2_n3), 
	.CI(intadd_2_n4), 
	.B(n1894), 
	.A(intadd_2_A_1_));
   ADDFXLM intadd_6_U4 (.S(intadd_6_SUM_0_), 
	.CO(intadd_6_n3), 
	.CI(n1884), 
	.B(intadd_6_B_0_), 
	.A(intadd_6_A_0_));
   ADDFXLM intadd_1_U5 (.S(intadd_1_SUM_1_), 
	.CO(intadd_1_n4), 
	.CI(intadd_1_n5), 
	.B(n1889), 
	.A(intadd_1_A_1_));
   ADDFXLM intadd_4_U4 (.S(intadd_4_SUM_0_), 
	.CO(intadd_4_n3), 
	.CI(intadd_4_CI), 
	.B(n1887), 
	.A(intadd_4_A_0_));
   ADDFXLM intadd_3_U5 (.S(intadd_3_SUM_0_), 
	.CO(intadd_3_n4), 
	.CI(n1879), 
	.B(intadd_3_B_0_), 
	.A(n1885));
   ADDFXLM intadd_0_U5 (.S(intadd_0_SUM_1_), 
	.CO(intadd_0_n4), 
	.CI(intadd_0_n5), 
	.B(n1893), 
	.A(intadd_0_A_1_));
   ADDFXLM intadd_5_U4 (.S(intadd_0_A_2_), 
	.CO(intadd_5_n3), 
	.CI(n1891), 
	.B(n1881), 
	.A(n1876));
   ADDFXLM intadd_2_U5 (.S(intadd_2_SUM_0_), 
	.CO(intadd_2_n4), 
	.CI(n1883), 
	.B(n1892), 
	.A(n1877));
   ADDFXLM intadd_0_U2 (.S(intadd_0_SUM_4_), 
	.CO(intadd_0_n1), 
	.CI(intadd_0_n2), 
	.B(intadd_0_B_4_), 
	.A(intadd_0_A_4_));
   ADDFXLM DP_OP_196J1_124_5161_U19 (.S(C118_DATA15_2), 
	.CO(DP_OP_196J1_124_5161_n14), 
	.CI(DP_OP_196J1_124_5161_n15), 
	.B(reg0[2]), 
	.A(DP_OP_196J1_124_5161_n27));
   ADDFXLM intadd_7_U3 (.S(intadd_7_SUM_1_), 
	.CO(intadd_7_n2), 
	.CI(intadd_7_n3), 
	.B(intadd_7_B_1_), 
	.A(intadd_7_A_1_));
   ADDFXLM DP_OP_196J1_124_5161_U17 (.S(C118_DATA15_4), 
	.CO(DP_OP_196J1_124_5161_n12), 
	.CI(DP_OP_196J1_124_5161_n13), 
	.B(FE_OFN22_reg0_4_), 
	.A(DP_OP_196J1_124_5161_n25));
   ADDFXLM DP_OP_196J1_124_5161_U15 (.S(C118_DATA15_6), 
	.CO(DP_OP_196J1_124_5161_n10), 
	.CI(DP_OP_196J1_124_5161_n11), 
	.B(FE_OFN20_reg0_6_), 
	.A(DP_OP_196J1_124_5161_n23));
   ADDFXLM intadd_6_U2 (.S(intadd_6_SUM_2_), 
	.CO(intadd_6_n1), 
	.CI(intadd_6_n2), 
	.B(intadd_6_B_2_), 
	.A(intadd_6_A_2_));
   ADDFXLM DP_OP_196J1_124_5161_U21 (.S(C118_DATA15_0), 
	.CO(DP_OP_196J1_124_5161_n16), 
	.CI(DP_OP_196J1_124_5161_n29), 
	.B(DP_OP_196J1_124_5161_n43), 
	.A(reg0[0]));
   ADDFXLM intadd_0_U4 (.S(intadd_0_SUM_2_), 
	.CO(intadd_0_n3), 
	.CI(intadd_0_n4), 
	.B(intadd_0_B_2_), 
	.A(intadd_0_A_2_));
   ADDFXLM intadd_3_U3 (.S(intadd_3_SUM_2_), 
	.CO(intadd_3_n2), 
	.CI(intadd_3_n3), 
	.B(intadd_3_B_2_), 
	.A(intadd_3_A_2_));
   ADDFXLM intadd_1_U4 (.S(intadd_1_SUM_2_), 
	.CO(intadd_1_n3), 
	.CI(intadd_1_n4), 
	.B(intadd_1_B_2_), 
	.A(intadd_1_A_2_));
   ADDFXLM intadd_4_U3 (.S(intadd_1_A_2_), 
	.CO(intadd_4_n2), 
	.CI(intadd_4_n3), 
	.B(intadd_4_B_1_), 
	.A(intadd_0_SUM_0_));
   ADDFXLM intadd_1_U6 (.S(intadd_1_SUM_0_), 
	.CO(intadd_1_n5), 
	.CI(n1886), 
	.B(n1880), 
	.A(intadd_1_A_0_));
   ADDFXLM intadd_0_U6 (.S(intadd_0_SUM_0_), 
	.CO(intadd_0_n5), 
	.CI(n1878), 
	.B(n1888), 
	.A(intadd_0_A_0_));
   ADDFXLM intadd_2_U2 (.S(intadd_2_SUM_3_), 
	.CO(intadd_2_n1), 
	.CI(intadd_2_n2), 
	.B(intadd_2_B_3_), 
	.A(intadd_2_A_3_));
   ADDFXLM intadd_6_U3 (.S(intadd_6_SUM_1_), 
	.CO(intadd_6_n2), 
	.CI(intadd_6_n3), 
	.B(intadd_6_B_1_), 
	.A(intadd_1_SUM_0_));
   ADDFXLM intadd_3_U4 (.S(intadd_1_B_2_), 
	.CO(intadd_3_n3), 
	.CI(intadd_3_n4), 
	.B(n1890), 
	.A(n1882));
   DFFRQX2M uart_rst_sync_n_synch_reg_2_ (.RN(rst_m), 
	.Q(SO[3]), 
	.D(uart_rst_sync_n_synch[1]), 
	.CK(clk_m_UART__L5_N0));
   SDFFRQX4M UART_TX_RX_U0_UART_RX_U4_par_err_reg (.SI(UART_TX_RX_U0_UART_RX_par_done), 
	.SE(n1944), 
	.RN(rx_rst), 
	.Q(parity_error), 
	.D(n654), 
	.CK(rx_clk__L1_N0));
   SDFFRQX4M UART_TX_RX_U0_UART_RX_U6_stp_err_reg (.SI(uart_rst_sync_n_synch[0]), 
	.SE(n1930), 
	.RN(rx_rst), 
	.Q(framing_error), 
	.D(UART_TX_RX_U0_UART_RX_U6_N5), 
	.CK(rx_clk__L1_N0));
   SDFFRQX2M Regfile_u_reg_file_reg_4__5_ (.SI(Regfile_u_reg_file_4__4_), 
	.SE(n1930), 
	.RN(FE_OFN0_ref_rst), 
	.Q(SO[2]), 
	.D(n703), 
	.CK(clk_m_REF__L6_N0));
   SDFFRQX4M Rx2SysCtrl_en_pulse_reg (.SI(Regfile_u_reg_file_15__7_), 
	.SE(n1934), 
	.RN(ref_rst), 
	.Q(SO[1]), 
	.D(n1899), 
	.CK(clk_m_REF__L6_N1));
   OAI21X2M U958 (.Y(n1191), 
	.B0(n1149), 
	.A1(n1150), 
	.A0(n1151));
   OAI2BB1X2M U961 (.Y(n1149), 
	.B0(n1148), 
	.A1N(n1150), 
	.A0N(n1192));
   INVX2M U968 (.Y(n1402), 
	.A(n1435));
   INVX2M U973 (.Y(n1432), 
	.A(n1395));
   INVXLM U975 (.Y(n1181), 
	.A(n1191));
   INVXLM U976 (.Y(n1563), 
	.A(n1381));
   INVX2M U977 (.Y(n1580), 
	.A(reg1[0]));
   INVXLM U979 (.Y(n1556), 
	.A(n1377));
   INVXLM U981 (.Y(n1356), 
	.A(intadd_6_n1));
   INVXLM U982 (.Y(n1362), 
	.A(intadd_7_n1));
   INVXLM U983 (.Y(n1615), 
	.A(n1608));
   INVXLM U991 (.Y(n1614), 
	.A(n1613));
   INVXLM U998 (.Y(n1619), 
	.A(n1617));
   INVXLM U1002 (.Y(n1616), 
	.A(n1607));
   INVXLM U1003 (.Y(n1599), 
	.A(n1574));
   INVXLM U1006 (.Y(n1187), 
	.A(n1186));
   INVXLM U1008 (.Y(n1296), 
	.A(n1295));
   XOR2X2M U1011 (.Y(n1622), 
	.B(n1445), 
	.A(n1446));
   XOR2X2M U1018 (.Y(n1610), 
	.B(n1441), 
	.A(n1442));
   XOR2X2M U1025 (.Y(n1605), 
	.B(n1435), 
	.A(n1436));
   INVXLM U1031 (.Y(n1566), 
	.A(n1358));
   INVXLM U1036 (.Y(n1286), 
	.A(n1285));
   INVXLM U1043 (.Y(n1355), 
	.A(intadd_1_SUM_2_));
   INVXLM U1044 (.Y(n1144), 
	.A(n1184));
   INVXLM U1045 (.Y(n1141), 
	.A(n1138));
   INVXLM U1048 (.Y(n1148), 
	.A(n1147));
   CLKINVX2M U1049 (.Y(n1143), 
	.A(n1192));
   INVX6M U1061 (.Y(n1625), 
	.A(FE_OFN19_reg1_4_));
   INVX2M U1065 (.Y(n1375), 
	.A(FE_OFN20_reg0_6_));
   INVX4M U1066 (.Y(n1583), 
	.A(reg1[1]));
   CLKINVX2M U1067 (.Y(n1343), 
	.A(FE_OFN17_reg0_7_));
   INVXLM U1071 (.Y(n1392), 
	.A(n1388));
   INVX2M U1079 (.Y(n1441), 
	.A(n1404));
   INVXLM U1080 (.Y(n1400), 
	.A(n1399));
   INVXLM U1089 (.Y(n1602), 
	.A(n1600));
   INVXLM U1100 (.Y(n1367), 
	.A(reg0[3]));
   INVXLM U1105 (.Y(n953), 
	.A(n956));
   INVXLM U1106 (.Y(n951), 
	.A(n955));
   INVXLM U1107 (.Y(n1575), 
	.A(n1598));
   INVXLM U1110 (.Y(n1570), 
	.A(n1568));
   XOR2X2M U1115 (.Y(n1623), 
	.B(n1620), 
	.A(n1621));
   INVX2M U1116 (.Y(n1302), 
	.A(n1189));
   OAI21X2M U1118 (.Y(n1299), 
	.B0(n1182), 
	.A1(n1183), 
	.A0(reg1[1]));
   INVXLM U1121 (.Y(n1183), 
	.A(n1293));
   OAI21X2M U1125 (.Y(n1384), 
	.B0(n1298), 
	.A1(n1390), 
	.A0(reg1[2]));
   INVXLM U1128 (.Y(n1386), 
	.A(n1304));
   INVXLM U1134 (.Y(n1306), 
	.A(n1194));
   INVXLM U1148 (.Y(n1287), 
	.A(n1407));
   INVXLM U1159 (.Y(n1796), 
	.A(n1804));
   NOR2X2M U1160 (.Y(n1600), 
	.B(n1589), 
	.A(n1605));
   OAI21X2M U1161 (.Y(n1574), 
	.B0(n1569), 
	.A1(n1568), 
	.A0(n1428));
   INVX2M U1162 (.Y(n1428), 
	.A(n1572));
   NOR2X2M U1164 (.Y(n1598), 
	.B(n1587), 
	.A(n1577));
   INVXLM U1171 (.Y(n1157), 
	.A(n1659));
   INVXLM U1177 (.Y(n1167), 
	.A(n1057));
   AOI21BXLM U1186 (.Y(n1472), 
	.B0N(n1467), 
	.A1(n1651), 
	.A0(n1469));
   OAI2B1XLM U1187 (.Y(n1469), 
	.B0(n1496), 
	.A1N(n1497), 
	.A0(n1654));
   INVXLM U1188 (.Y(n1475), 
	.A(n1457));
   INVXLM U1196 (.Y(n1058), 
	.A(n1826));
   INVXLM U1200 (.Y(n1156), 
	.A(n1055));
   INVXLM U1218 (.Y(n957), 
	.A(n959));
   INVXLM U1219 (.Y(n1382), 
	.A(n1562));
   INVXLM U1220 (.Y(n1059), 
	.A(n1828));
   INVXLM U1232 (.Y(n929), 
	.A(sys_ctrl_u_wr_addr[3]));
   INVXLM U1236 (.Y(n1081), 
	.A(n1083));
   INVXLM U1237 (.Y(n1668), 
	.A(n1666));
   INVXLM U1238 (.Y(n1662), 
	.A(n1463));
   AND2X1M U1239 (.Y(n1634), 
	.B(n1632), 
	.A(n1633));
   INVXLM U1242 (.Y(n1361), 
	.A(intadd_6_SUM_1_));
   INVXLM U1243 (.Y(n1359), 
	.A(n1565));
   NAND2BXLM U1244 (.Y(n1647), 
	.B(n1481), 
	.AN(n1480));
   INVXLM U1246 (.Y(n1160), 
	.A(n1540));
   INVXLM U1330 (.Y(n1159), 
	.A(n1538));
   INVXLM U1331 (.Y(n1560), 
	.A(n1348));
   INVXLM U1332 (.Y(n1653), 
	.A(n1471));
   INVXLM U1333 (.Y(intadd_4_CI), 
	.A(n1315));
   INVXLM U1335 (.Y(n1412), 
	.A(n1409));
   INVXLM U1336 (.Y(intadd_6_A_0_), 
	.A(n1420));
   INVXLM U1337 (.Y(n1801), 
	.A(n1800));
   INVXLM U1338 (.Y(n1460), 
	.A(n1481));
   INVXLM U1339 (.Y(n1465), 
	.A(n1670));
   INVXLM U1354 (.Y(n1486), 
	.A(n1158));
   AOI21BXLM U1356 (.Y(n1479), 
	.B0N(n1473), 
	.A1(n1475), 
	.A0(n1476));
   INVXLM U1365 (.Y(n969), 
	.A(n1721));
   INVXLM U1371 (.Y(n1722), 
	.A(n1719));
   INVXLM U1374 (.Y(n1726), 
	.A(n1725));
   INVXLM U1382 (.Y(n1724), 
	.A(n1723));
   INVXLM U1385 (.Y(n1728), 
	.A(n1727));
   INVXLM U1387 (.Y(n1730), 
	.A(n1729));
   INVXLM U1388 (.Y(n1734), 
	.A(n1731));
   INVXLM U1389 (.Y(n1865), 
	.A(sys_ctrl_u_current_state[2]));
   INVXLM U1390 (.Y(n1103), 
	.A(n1096));
   INVXLM U1391 (.Y(n1074), 
	.A(UART_TX_RX_U0_UART_RX_U4_count[1]));
   INVXLM U1392 (.Y(n1550), 
	.A(n1338));
   INVXLM U1393 (.Y(n1337), 
	.A(n1552));
   INVXLM U1398 (.Y(n1335), 
	.A(n1542));
   INVXLM U1401 (.Y(n1344), 
	.A(n1557));
   INVXLM U1412 (.Y(n1349), 
	.A(n1561));
   INVXLM U1413 (.Y(n1553), 
	.A(n1350));
   INVXLM U1415 (.Y(n1173), 
	.A(n1154));
   INVXLM U1417 (.Y(n906), 
	.A(fifo_full));
   INVXLM U1418 (.Y(n1075), 
	.A(UART_TX_RX_U0_UART_RX_U7_c_state[2]));
   INVXLM U1419 (.Y(n1323), 
	.A(n1898));
   INVXLM U1420 (.Y(n1642), 
	.A(FE_OFN16_reg1_7_));
   INVXLM U1422 (.Y(n1632), 
	.A(FE_OFN18_reg1_6_));
   INVX4M U1424 (.Y(n1587), 
	.A(reg1[2]));
   INVXLM U1427 (.Y(n1695), 
	.A(UART_TX_RX_U0_UART_TX_ser_done));
   INVXLM U1429 (.Y(n1380), 
	.A(FE_OFN21_reg0_5_));
   INVXLM U1434 (.Y(n1366), 
	.A(FE_OFN22_reg0_4_));
   INVXLM U1437 (.Y(n1253), 
	.A(n1535));
   INVXLM U1439 (.Y(n1536), 
	.A(reg0[1]));
   NAND2BXLM U1442 (.Y(n1535), 
	.B(n1043), 
	.AN(n1733));
   INVXLM U1443 (.Y(n1627), 
	.A(FE_OFN23_reg1_5_));
   INVX2M U1451 (.Y(n1589), 
	.A(reg1[3]));
   INVXLM U1459 (.Y(n1537), 
	.A(n938));
   INVXLM U1463 (.Y(n1749), 
	.A(FIFO_u_U1_mem[39]));
   INVXLM U1465 (.Y(n1751), 
	.A(FIFO_u_U1_mem[23]));
   INVXLM U1468 (.Y(n1699), 
	.A(FIFO_u_U1_mem[32]));
   INVXLM U1470 (.Y(n1701), 
	.A(FIFO_u_U1_mem[16]));
   INVXLM U1472 (.Y(n1757), 
	.A(FIFO_u_U1_mem[38]));
   INVXLM U1474 (.Y(n1759), 
	.A(FIFO_u_U1_mem[22]));
   INVXLM U1476 (.Y(n1765), 
	.A(FIFO_u_U1_mem[37]));
   INVXLM U1478 (.Y(n1767), 
	.A(FIFO_u_U1_mem[21]));
   INVXLM U1494 (.Y(n1773), 
	.A(FIFO_u_U1_mem[36]));
   INVXLM U1496 (.Y(n1775), 
	.A(FIFO_u_U1_mem[20]));
   INVXLM U1497 (.Y(n1781), 
	.A(FIFO_u_U1_mem[35]));
   INVXLM U1500 (.Y(n1783), 
	.A(FIFO_u_U1_mem[19]));
   INVXLM U1503 (.Y(n1789), 
	.A(FIFO_u_U1_mem[34]));
   INVXLM U1506 (.Y(n1791), 
	.A(FIFO_u_U1_mem[18]));
   NOR3X1M U1510 (.Y(n1795), 
	.C(n1744), 
	.B(FIFO_u_w_addr[1]), 
	.A(FIFO_u_w_addr[2]));
   NOR3X1M U1512 (.Y(n1741), 
	.C(n1744), 
	.B(n1740), 
	.A(FIFO_u_w_addr[2]));
   INVXLM U1514 (.Y(n1799), 
	.A(FIFO_u_U1_mem[33]));
   INVXLM U1516 (.Y(n950), 
	.A(n949));
   NOR3X4M U1517 (.Y(n1739), 
	.C(n1744), 
	.B(n1738), 
	.A(FIFO_u_w_addr[1]));
   INVXLM U1518 (.Y(n1805), 
	.A(FIFO_u_U1_mem[17]));
   INVXLM U1520 (.Y(n911), 
	.A(n912));
   NOR3X1M U1521 (.Y(n1737), 
	.C(n1744), 
	.B(n1740), 
	.A(n1738));
   INVXLM U1531 (.Y(n1513), 
	.A(FIFO_u_U5_RD_PTR_GRAY_NEXT[1]));
   INVXLM U1547 (.Y(n1516), 
	.A(FIFO_u_U5_RD_PTR_GRAY_NEXT[2]));
   INVXLM U1555 (.Y(n1223), 
	.A(reg2[7]));
   INVXLM U1564 (.Y(n1872), 
	.A(n1871));
   INVXLM U1581 (.Y(n1867), 
	.A(synced_p_data[3]));
   INVXLM U1589 (.Y(n1868), 
	.A(synced_p_data[2]));
   INVXLM U1590 (.Y(n1869), 
	.A(synced_p_data[1]));
   INVXLM U1592 (.Y(n1866), 
	.A(synced_p_data[0]));
   INVXLM U1594 (.Y(n1244), 
	.A(rx_p_out[0]));
   INVXLM U1596 (.Y(n1245), 
	.A(rx_p_out[1]));
   INVXLM U1597 (.Y(n1248), 
	.A(rx_p_out[2]));
   INVXLM U1599 (.Y(n1246), 
	.A(rx_p_out[3]));
   INVXLM U1601 (.Y(n1241), 
	.A(rx_p_out[4]));
   INVXLM U1602 (.Y(n1237), 
	.A(rx_p_out[5]));
   INVXLM U1609 (.Y(n1243), 
	.A(rx_p_out[6]));
   INVXLM U1612 (.Y(n1216), 
	.A(n1215));
   INVXLM U1618 (.Y(n1239), 
	.A(rx_p_out[7]));
   INVXLM U1620 (.Y(n1825), 
	.A(n1071));
   INVXLM U1622 (.Y(n1711), 
	.A(UART_TX_RX_U0_UART_TX_U1_counter[0]));
   INVXLM U1624 (.Y(n1279), 
	.A(DP_OP_196J1_124_5161_n43));
   INVXLM U1625 (.Y(n1273), 
	.A(n1267));
   INVXLM U1626 (.Y(n1417), 
	.A(n1490));
   INVXLM U1628 (.Y(n1255), 
	.A(n1549));
   OAI21X2M U1633 (.Y(n1150), 
	.B0(n1146), 
	.A1(n1583), 
	.A0(n1186));
   INVXLM U1636 (.Y(n1495), 
	.A(n1667));
   INVXLM U1637 (.Y(n1498), 
	.A(n1669));
   NAND2BXLM U1639 (.Y(n1649), 
	.B(n1477), 
	.AN(n1478));
   CLKINVX2M U1641 (.Y(n1290), 
	.A(n1301));
   OAI2B2XLM U1643 (.Y(n1199), 
	.B1(n1670), 
	.B0(n1560), 
	.A1N(n1197), 
	.A0(n1667));
   CLKINVX2M U1644 (.Y(n1394), 
	.A(n1408));
   INVX2M U1645 (.Y(n1449), 
	.A(n1447));
   INVXLM U1648 (.Y(intadd_7_CI), 
	.A(n1425));
   NOR2BX2M U1658 (.Y(n1679), 
	.B(n1174), 
	.AN(n1166));
   INVXLM U1661 (.Y(n1508), 
	.A(n1684));
   INVXLM U1662 (.Y(n1501), 
	.A(n1499));
   INVXLM U1668 (.Y(n1491), 
	.A(reg0[0]));
   INVXLM U1675 (.Y(n1484), 
	.A(n1645));
   INVX2M U1689 (.Y(n1844), 
	.A(synced_p_data[7]));
   CLKINVX2M U1693 (.Y(n1831), 
	.A(synced_p_data[6]));
   INVXLM U1694 (.Y(n1114), 
	.A(reg2[6]));
   INVXLM U1709 (.Y(n1117), 
	.A(reg2[5]));
   CLKINVX2M U1713 (.Y(n1830), 
	.A(synced_p_data[5]));
   INVX2M U1718 (.Y(n1829), 
	.A(synced_p_data[4]));
   INVXLM U1719 (.Y(n1078), 
	.A(reg2[4]));
   INVXLM U1728 (.Y(n1054), 
	.A(n1827));
   NAND2X2M U1729 (.Y(n1826), 
	.B(SO[1]), 
	.A(synced_p_data[2]));
   INVX2M U1734 (.Y(n1810), 
	.A(n1652));
   NOR2BX2M U1735 (.Y(n1827), 
	.B(n1733), 
	.AN(n1044));
   INVXLM U1737 (.Y(n1231), 
	.A(n1714));
   INVXLM U1739 (.Y(n1235), 
	.A(reg2[0]));
   INVXLM U1741 (.Y(n1852), 
	.A(UART_TX_RX_U0_UART_RX_bit_cnt[0]));
   INVXLM U1743 (.Y(n1692), 
	.A(UART_TX_RX_U0_UART_RX_edge_cnt[5]));
   INVXLM U1745 (.Y(n1693), 
	.A(n1691));
   INVXLM U1747 (.Y(n1688), 
	.A(UART_TX_RX_U0_UART_RX_edge_cnt[3]));
   INVXLM U1750 (.Y(n1105), 
	.A(UART_TX_RX_U0_UART_RX_edge_cnt[2]));
   INVXLM U1751 (.Y(n1689), 
	.A(n1687));
   INVXLM U1757 (.Y(n1686), 
	.A(UART_TX_RX_U0_UART_RX_edge_cnt[0]));
   INVXLM U1758 (.Y(n1685), 
	.A(UART_TX_RX_U0_UART_RX_edge_cnt[1]));
   INVXLM U1763 (.Y(n1126), 
	.A(UART_TX_RX_U0_UART_RX_edge_cnt[4]));
   OAI2B2XLM U1764 (.Y(n1125), 
	.B1(n1116), 
	.B0(reg2[3]), 
	.A1N(n1116), 
	.A0(UART_TX_RX_U0_UART_RX_edge_cnt[0]));
   INVXLM U1766 (.Y(n1108), 
	.A(reg2[3]));
   INVXLM U1767 (.Y(n1132), 
	.A(UART_RX_IN));
   INVXLM U1769 (.Y(n1208), 
	.A(UART_TX_RX_U0_UART_RX_samp_valid));
   INVXLM U1771 (.Y(n1230), 
	.A(UART_TX_RX_U0_UART_RX_par_done));
   INVXLM U1772 (.Y(n1716), 
	.A(UART_TX_RX_U0_UART_RX_U7_c_state[0]));
   INVXLM U1774 (.Y(n1214), 
	.A(n1234));
   INVXLM U1777 (.Y(n1221), 
	.A(UART_TX_RX_U0_UART_RX_U4_count[2]));
   INVXLM U1779 (.Y(n1073), 
	.A(UART_TX_RX_U0_UART_RX_U4_count[0]));
   NOR2BX2M U1784 (.Y(n1736), 
	.B(n1738), 
	.AN(n1134));
   INVXLM U1786 (.Y(n1738), 
	.A(FIFO_u_w_addr[2]));
   INVXLM U1789 (.Y(n1740), 
	.A(FIFO_u_w_addr[1]));
   INVXLM U1790 (.Y(n913), 
	.A(FIFO_u_w_addr[0]));
   INVXLM U1793 (.Y(n1696), 
	.A(FIFO_u_r_addr[1]));
   INVXLM U1798 (.Y(n1509), 
	.A(n1061));
   INVXLM U1799 (.Y(n1705), 
	.A(UART_TX_RX_U0_UART_TX_U1_counter[2]));
   INVXLM U1804 (.Y(n1704), 
	.A(UART_TX_RX_U0_UART_TX_U1_counter[1]));
   INVXLM U1805 (.Y(n1713), 
	.A(n1809));
   INVXLM U1810 (.Y(n1207), 
	.A(UART_TX_RX_U0_UART_TX_U1_loading));
   INVXLM U1812 (.Y(n1334), 
	.A(intadd_0_n1));
   INVXLM U1820 (.Y(n1333), 
	.A(intadd_2_SUM_2_));
   INVXLM U1821 (.Y(n1351), 
	.A(n1554));
   INVXLM U1823 (.Y(n1342), 
	.A(intadd_1_n1));
   INVXLM U1824 (.Y(n1341), 
	.A(intadd_0_SUM_3_));
   INVXLM U1826 (.Y(n1671), 
	.A(n1422));
   INVXLM U1827 (.Y(n1320), 
	.A(n1674));
   INVXLM U1830 (.Y(n1060), 
	.A(n1153));
   INVXLM U1831 (.Y(n1278), 
	.A(n1321));
   INVXLM U1836 (.Y(n918), 
	.A(n903));
   INVXLM U1841 (.Y(n922), 
	.A(sys_ctrl_u_current_state[0]));
   INVXLM U1843 (.Y(n931), 
	.A(n964));
   INVXLM U1858 (.Y(n892), 
	.A(sys_ctrl_u_current_state[3]));
   INVXLM U1861 (.Y(n1861), 
	.A(n930));
   INVXLM U1863 (.Y(n921), 
	.A(n946));
   INVXLM U1872 (.Y(n1847), 
	.A(UART_TX_RX_U0_UART_RX_samp_b));
   CLKBUFX2M U1874 (.Y(SO[0]), 
	.A(framing_error));
   INVXLM U1876 (.Y(n645), 
	.A(n972));
   INVXLM U1879 (.Y(n1276), 
	.A(n1681));
   INVXLM U1881 (.Y(n681), 
	.A(n1027));
   INVXLM U1888 (.Y(n698), 
	.A(n994));
   INVXLM U1892 (.Y(n715), 
	.A(n1016));
   INVXLM U1893 (.Y(n732), 
	.A(n1038));
   INVXLM U1899 (.Y(n749), 
	.A(n1005));
   INVXLM U1903 (.Y(n766), 
	.A(n983));
   INVXLM U1907 (.Y(n784), 
	.A(n1053));
   INVXLM U1912 (.Y(n1226), 
	.A(UART_TX_RX_U0_UART_RX_bit_cnt[2]));
   INVXLM U1913 (.Y(n1219), 
	.A(UART_TX_RX_U0_UART_RX_U4_count[3]));
   INVXLM U1923 (.Y(FIFO_u_U4_WR_PTR_GRAY_NEXT[0]), 
	.A(n1528));
   INVXLM U1928 (.Y(FIFO_u_U4_WR_PTR_GRAY_NEXT[1]), 
	.A(n1526));
   INVXLM U1929 (.Y(FIFO_u_U5_RD_PTR_GRAY_NEXT[3]), 
	.A(n1517));
   OAI2B2XLM U1932 (.Y(FIFO_u_U5_RD_PTR_GRAY_NEXT[1]), 
	.B1(n1069), 
	.B0(FIFO_u_U5_RD_PTR_BIN_NEXT[1]), 
	.A1N(FIFO_u_U5_RD_PTR_BIN_NEXT[1]), 
	.A0(FIFO_u_r_addr[2]));
   INVXLM U1934 (.Y(FIFO_u_U5_RD_PTR_BIN_NEXT[2]), 
	.A(n1069));
   INVXLM U1947 (.Y(FIFO_u_U5_RD_PTR_GRAY_NEXT[0]), 
	.A(n1514));
   INVXLM U1948 (.Y(FIFO_u_U5_RD_PTR_BIN_NEXT[0]), 
	.A(n1065));
   INVXLM U1952 (.Y(n1899), 
	.A(n1247));
   INVXLM U1958 (.Y(n1850), 
	.A(n1848));
   BUFX4M U1968 (.Y(n1930), 
	.A(FE_OFN15_SE));
   INVXLM U1976 (.Y(n613), 
	.A(test_mode));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Mon Oct  5 06:32:53 2026
/////////////////////////////////////////////////////////////
module clk_div_WIDTH6_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	n1904__Exclude_0_NET, 
	clk_m_UART__L4_N0, 
	clk_m_UART__L5_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [5:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input n1904__Exclude_0_NET;
   input clk_m_UART__L4_N0;
   input clk_m_UART__L5_N0;

   // Internal wires
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N37;
   wire n39;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire [5:0] count;

   MX2XLM U40 (.Y(o_div_clk), 
	.S0(N37), 
	.B(clk_m_UART__L4_N0), 
	.A(test_so));
   SDFFRQX1M count_reg_5_ (.SI(count[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[5]), 
	.D(N17), 
	.CK(clk_m_UART__L5_N0));
   SDFFRQX1M count_reg_4_ (.SI(count[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[4]), 
	.D(N16), 
	.CK(clk_m_UART__L5_N0));
   SDFFRQX1M count_reg_3_ (.SI(count[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[3]), 
	.D(N15), 
	.CK(clk_m_UART__L5_N0));
   SDFFRQX1M count_reg_2_ (.SI(count[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[2]), 
	.D(N14), 
	.CK(clk_m_UART__L5_N0));
   SDFFRQX1M count_reg_1_ (.SI(count[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[1]), 
	.D(N13), 
	.CK(clk_m_UART__L5_N0));
   SDFFRQX1M div_clk_reg_reg (.SI(count[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(test_so), 
	.D(n39), 
	.CK(i_ref_clk));
   AND3XLM U4 (.Y(n10), 
	.C(i_div_ratio[0]), 
	.B(n1904__Exclude_0_NET), 
	.A(i_div_ratio[1]));
   AOI222XLM U5 (.Y(n9), 
	.C1(n4), 
	.C0(n5), 
	.B1(n4), 
	.B0(count[1]), 
	.A1(n5), 
	.A0(count[1]));
   OAI21XLM U6 (.Y(n14), 
	.B0(n8), 
	.A1(n26), 
	.A0(n9));
   NAND2XLM U7 (.Y(n23), 
	.B(n26), 
	.A(n24));
   AOI21XLM U8 (.Y(N13), 
	.B0(n24), 
	.A1(n22), 
	.A0(N12));
   AND2X1M U9 (.Y(n3), 
	.B(n1904__Exclude_0_NET), 
	.A(i_div_ratio[0]));
   AOI21XLM U10 (.Y(n2), 
	.B0(count[0]), 
	.A1(n3), 
	.A0(i_div_ratio[1]));
   OAI21XLM U11 (.Y(n5), 
	.B0(n2), 
	.A1(n3), 
	.A0(i_div_ratio[1]));
   NAND2XLM U12 (.Y(n7), 
	.B(n10), 
	.A(i_div_ratio[2]));
   OAI21XLM U13 (.Y(n4), 
	.B0(n7), 
	.A1(n10), 
	.A0(i_div_ratio[2]));
   AOI22XLM U15 (.Y(n6), 
	.B1(i_div_ratio[3]), 
	.B0(n7), 
	.A1(n26), 
	.A0(n9));
   OAI21XLM U16 (.Y(n8), 
	.B0(n6), 
	.A1(i_div_ratio[3]), 
	.A0(n7));
   AND2X1M U17 (.Y(n11), 
	.B(n10), 
	.A(i_div_ratio[2]));
   AND2X1M U18 (.Y(n12), 
	.B(n11), 
	.A(i_div_ratio[3]));
   NAND2XLM U19 (.Y(n15), 
	.B(n12), 
	.A(i_div_ratio[4]));
   OAI21XLM U20 (.Y(n13), 
	.B0(n15), 
	.A1(n12), 
	.A0(i_div_ratio[4]));
   AOI222XLM U21 (.Y(n16), 
	.C1(n13), 
	.C0(n14), 
	.B1(n13), 
	.B0(count[3]), 
	.A1(n14), 
	.A0(count[3]));
   AOI211XLM U24 (.Y(n19), 
	.C0(i_div_ratio[5]), 
	.B0(n17), 
	.A1(n30), 
	.A0(n16));
   AOI211XLM U25 (.Y(n18), 
	.C0(n30), 
	.B0(n16), 
	.A1(n17), 
	.A0(i_div_ratio[5]));
   OR2X1M U26 (.Y(n20), 
	.B(n18), 
	.A(n19));
   NOR2XLM U27 (.Y(n32), 
	.B(n20), 
	.A(count[5]));
   NAND2XLM U28 (.Y(N12), 
	.B(n32), 
	.A(count[0]));
   OR4X1M U29 (.Y(n21), 
	.D(i_div_ratio[1]), 
	.C(i_div_ratio[3]), 
	.B(i_div_ratio[5]), 
	.A(i_div_ratio[4]));
   NOR2XLM U30 (.Y(N37), 
	.B(n21), 
	.A(i_div_ratio[2]));
   NAND2XLM U31 (.Y(n22), 
	.B(n32), 
	.A(count[1]));
   NAND3XLM U32 (.Y(n25), 
	.C(n32), 
	.B(count[1]), 
	.A(count[0]));
   OAI31XLM U34 (.Y(N14), 
	.B0(n23), 
	.A2(n34), 
	.A1(n24), 
	.A0(n26));
   NOR2XLM U36 (.Y(n29), 
	.B(n25), 
	.A(n26));
   NAND2XLM U37 (.Y(n27), 
	.B(n28), 
	.A(n29));
   OAI31XLM U38 (.Y(N15), 
	.B0(n27), 
	.A2(n34), 
	.A1(n29), 
	.A0(n28));
   NAND2XLM U39 (.Y(n31), 
	.B(n29), 
	.A(count[3]));
   NOR2XLM U41 (.Y(N17), 
	.B(n31), 
	.A(n30));
   AOI211XLM U42 (.Y(N16), 
	.C0(N17), 
	.B0(n34), 
	.A1(n30), 
	.A0(n31));
   AOI221XLM U44 (.Y(n39), 
	.C0(N37), 
	.B1(n32), 
	.B0(n33), 
	.A1(n34), 
	.A0(n1904__Exclude_0_NET));
   SDFFSQX1M count_reg_0_ (.SN(i_rst_n), 
	.SI(test_si), 
	.SE(test_se), 
	.Q(count[0]), 
	.D(N12), 
	.CK(clk_m_UART__L5_N0));
   INVXLM U3 (.Y(n17), 
	.A(n15));
   INVXLM U14 (.Y(n26), 
	.A(count[2]));
   INVXLM U22 (.Y(n24), 
	.A(n25));
   INVXLM U23 (.Y(n34), 
	.A(n32));
   INVXLM U33 (.Y(n30), 
	.A(count[4]));
   INVXLM U35 (.Y(n33), 
	.A(n1904__Exclude_0_NET));
   INVXLM U43 (.Y(n28), 
	.A(count[3]));
endmodule

module clk_div_WIDTH6_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	n1907__Exclude_0_NET, 
	clk_m_UART__L4_N0, 
	clk_m_UART__L5_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [5:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input n1907__Exclude_0_NET;
   input clk_m_UART__L4_N0;
   input clk_m_UART__L5_N0;

   // Internal wires
   wire N12;
   wire N13;
   wire N14;
   wire N37;
   wire n13;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n14;
   wire [2:0] count;

   MX2XLM U18 (.Y(o_div_clk), 
	.S0(N37), 
	.B(clk_m_UART__L4_N0), 
	.A(test_so));
   SDFFRQX1M count_reg_2_ (.SI(count[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[2]), 
	.D(N14), 
	.CK(clk_m_UART__L5_N0));
   SDFFRQX1M count_reg_1_ (.SI(count[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[1]), 
	.D(N13), 
	.CK(clk_m_UART__L5_N0));
   SDFFRQX1M div_clk_reg_reg (.SI(count[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(test_so), 
	.D(n13), 
	.CK(i_ref_clk));
   OAI211XLM U3 (.Y(n14), 
	.C0(n7), 
	.B0(n8), 
	.A1(i_div_ratio[2]), 
	.A0(n9));
   NAND2XLM U4 (.Y(n5), 
	.B(i_div_ratio[0]), 
	.A(n1907__Exclude_0_NET));
   AOI222XLM U6 (.Y(n9), 
	.C1(n5), 
	.C0(n6), 
	.B1(n5), 
	.B0(count[0]), 
	.A1(n6), 
	.A0(count[0]));
   OAI2BB1XLM U8 (.Y(n7), 
	.B0(count[1]), 
	.A1N(i_div_ratio[2]), 
	.A0N(n9));
   NAND2XLM U10 (.Y(N12), 
	.B(n10), 
	.A(count[0]));
   NAND2XLM U11 (.Y(n11), 
	.B(n10), 
	.A(count[1]));
   NOR2XLM U12 (.Y(N14), 
	.B(n11), 
	.A(N12));
   AOI21XLM U13 (.Y(N13), 
	.B0(N14), 
	.A1(n11), 
	.A0(N12));
   NOR2XLM U14 (.Y(N37), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   AOI221XLM U17 (.Y(n13), 
	.C0(N37), 
	.B1(n10), 
	.B0(n12), 
	.A1(n14), 
	.A0(n1907__Exclude_0_NET));
   SDFFSQX1M count_reg_0_ (.SN(i_rst_n), 
	.SI(test_si), 
	.SE(test_se), 
	.Q(count[0]), 
	.D(N12), 
	.CK(clk_m_UART__L5_N0));
   INVXLM U5 (.Y(n6), 
	.A(i_div_ratio[1]));
   INVXLM U7 (.Y(n8), 
	.A(count[2]));
   INVXLM U9 (.Y(n10), 
	.A(n14));
   INVXLM U15 (.Y(n12), 
	.A(n1907__Exclude_0_NET));
endmodule

module CLK_GATE (
	CLK_EN, 
	CLK, 
	GATED_CLK, 
	clk_m_REF__L3_N0);
   input CLK_EN;
   input CLK;
   output GATED_CLK;
   input clk_m_REF__L3_N0;

   // Internal wires
   wire Latch_Out;

   AND2X1M U2 (.Y(GATED_CLK), 
	.B(clk_m_REF__L3_N0), 
	.A(Latch_Out));
   TLATNX1M Latch_Out_reg (.Q(Latch_Out), 
	.GN(CLK), 
	.D(CLK_EN));
endmodule

