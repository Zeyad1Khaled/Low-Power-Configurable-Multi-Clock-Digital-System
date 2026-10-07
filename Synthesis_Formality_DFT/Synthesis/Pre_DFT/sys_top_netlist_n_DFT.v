/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Mon Oct  5 02:48:38 2026
/////////////////////////////////////////////////////////////


module clk_div_WIDTH6_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [5:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N12, N13, N14, N15, N16, N17, N37, n39, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34;
  wire   [5:0] count;

  MX2XLM U40 ( .A(test_so), .B(i_ref_clk), .S0(N37), .Y(o_div_clk) );
  SDFFRQX1M count_reg_5_ ( .D(N17), .SI(count[4]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[5]) );
  SDFFRQX1M count_reg_4_ ( .D(N16), .SI(count[3]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[4]) );
  SDFFRQX1M count_reg_3_ ( .D(N15), .SI(count[2]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[3]) );
  SDFFRQX1M count_reg_2_ ( .D(N14), .SI(count[1]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[2]) );
  SDFFRQX1M count_reg_1_ ( .D(N13), .SI(count[0]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[1]) );
  SDFFRQX1M div_clk_reg_reg ( .D(n39), .SI(count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(test_so) );
  AND3XLM U4 ( .A(i_div_ratio[1]), .B(test_so), .C(i_div_ratio[0]), .Y(n10) );
  AOI222XLM U5 ( .A0(count[1]), .A1(n5), .B0(count[1]), .B1(n4), .C0(n5), .C1(
        n4), .Y(n9) );
  OAI21XLM U6 ( .A0(n9), .A1(n26), .B0(n8), .Y(n14) );
  NAND2XLM U7 ( .A(n24), .B(n26), .Y(n23) );
  AOI21XLM U8 ( .A0(N12), .A1(n22), .B0(n24), .Y(N13) );
  AND2X1M U9 ( .A(i_div_ratio[0]), .B(test_so), .Y(n3) );
  AOI21XLM U10 ( .A0(i_div_ratio[1]), .A1(n3), .B0(count[0]), .Y(n2) );
  OAI21XLM U11 ( .A0(i_div_ratio[1]), .A1(n3), .B0(n2), .Y(n5) );
  NAND2XLM U12 ( .A(i_div_ratio[2]), .B(n10), .Y(n7) );
  OAI21XLM U13 ( .A0(i_div_ratio[2]), .A1(n10), .B0(n7), .Y(n4) );
  AOI22XLM U15 ( .A0(n9), .A1(n26), .B0(n7), .B1(i_div_ratio[3]), .Y(n6) );
  OAI21XLM U16 ( .A0(n7), .A1(i_div_ratio[3]), .B0(n6), .Y(n8) );
  AND2X1M U17 ( .A(i_div_ratio[2]), .B(n10), .Y(n11) );
  AND2X1M U18 ( .A(i_div_ratio[3]), .B(n11), .Y(n12) );
  NAND2XLM U19 ( .A(i_div_ratio[4]), .B(n12), .Y(n15) );
  OAI21XLM U20 ( .A0(i_div_ratio[4]), .A1(n12), .B0(n15), .Y(n13) );
  AOI222XLM U21 ( .A0(count[3]), .A1(n14), .B0(count[3]), .B1(n13), .C0(n14), 
        .C1(n13), .Y(n16) );
  AOI211XLM U24 ( .A0(n16), .A1(n30), .B0(n17), .C0(i_div_ratio[5]), .Y(n19)
         );
  AOI211XLM U25 ( .A0(i_div_ratio[5]), .A1(n17), .B0(n16), .C0(n30), .Y(n18)
         );
  OR2X1M U26 ( .A(n19), .B(n18), .Y(n20) );
  NOR2XLM U27 ( .A(count[5]), .B(n20), .Y(n32) );
  NAND2XLM U28 ( .A(count[0]), .B(n32), .Y(N12) );
  OR4X1M U29 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n21) );
  NOR2XLM U30 ( .A(i_div_ratio[2]), .B(n21), .Y(N37) );
  NAND2XLM U31 ( .A(count[1]), .B(n32), .Y(n22) );
  NAND3XLM U32 ( .A(count[0]), .B(count[1]), .C(n32), .Y(n25) );
  OAI31XLM U34 ( .A0(n26), .A1(n24), .A2(n34), .B0(n23), .Y(N14) );
  NOR2XLM U36 ( .A(n26), .B(n25), .Y(n29) );
  NAND2XLM U37 ( .A(n29), .B(n28), .Y(n27) );
  OAI31XLM U38 ( .A0(n28), .A1(n29), .A2(n34), .B0(n27), .Y(N15) );
  NAND2XLM U39 ( .A(count[3]), .B(n29), .Y(n31) );
  NOR2XLM U41 ( .A(n30), .B(n31), .Y(N17) );
  AOI211XLM U42 ( .A0(n31), .A1(n30), .B0(n34), .C0(N17), .Y(N16) );
  AOI221XLM U44 ( .A0(test_so), .A1(n34), .B0(n33), .B1(n32), .C0(N37), .Y(n39) );
  SDFFSQX1M count_reg_0_ ( .D(N12), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .SN(i_rst_n), .Q(count[0]) );
  INVXLM U3 ( .A(n15), .Y(n17) );
  INVXLM U14 ( .A(count[2]), .Y(n26) );
  INVXLM U22 ( .A(n25), .Y(n24) );
  INVXLM U23 ( .A(n32), .Y(n34) );
  INVXLM U33 ( .A(count[4]), .Y(n30) );
  INVXLM U35 ( .A(test_so), .Y(n33) );
  INVXLM U43 ( .A(count[3]), .Y(n28) );
endmodule


module clk_div_WIDTH6_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [5:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N12, N13, N14, N37, n13, n5, n6, n7, n8, n9, n10, n11, n12, n14;
  wire   [2:0] count;

  MX2XLM U18 ( .A(test_so), .B(i_ref_clk), .S0(N37), .Y(o_div_clk) );
  SDFFRQX1M count_reg_2_ ( .D(N14), .SI(count[1]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[2]) );
  SDFFRQX1M count_reg_1_ ( .D(N13), .SI(count[0]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[1]) );
  SDFFRQX1M div_clk_reg_reg ( .D(n13), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(test_so) );
  OAI211XLM U3 ( .A0(n9), .A1(i_div_ratio[2]), .B0(n8), .C0(n7), .Y(n14) );
  NAND2XLM U4 ( .A(test_so), .B(i_div_ratio[0]), .Y(n5) );
  AOI222XLM U6 ( .A0(count[0]), .A1(n6), .B0(count[0]), .B1(n5), .C0(n6), .C1(
        n5), .Y(n9) );
  OAI2BB1XLM U8 ( .A0N(n9), .A1N(i_div_ratio[2]), .B0(count[1]), .Y(n7) );
  NAND2XLM U10 ( .A(count[0]), .B(n10), .Y(N12) );
  NAND2XLM U11 ( .A(count[1]), .B(n10), .Y(n11) );
  NOR2XLM U12 ( .A(N12), .B(n11), .Y(N14) );
  AOI21XLM U13 ( .A0(N12), .A1(n11), .B0(N14), .Y(N13) );
  NOR2XLM U14 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(N37) );
  AOI221XLM U17 ( .A0(test_so), .A1(n14), .B0(n12), .B1(n10), .C0(N37), .Y(n13) );
  SDFFSQX1M count_reg_0_ ( .D(N12), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .SN(i_rst_n), .Q(count[0]) );
  INVXLM U5 ( .A(i_div_ratio[1]), .Y(n6) );
  INVXLM U7 ( .A(count[2]), .Y(n8) );
  INVXLM U9 ( .A(n14), .Y(n10) );
  INVXLM U15 ( .A(test_so), .Y(n12) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;
  wire   Latch_Out;

  AND2X1M U2 ( .A(Latch_Out), .B(CLK), .Y(GATED_CLK) );
  TLATNX1M Latch_Out_reg ( .D(CLK_EN), .GN(CLK), .Q(Latch_Out) );
endmodule


module sys_top ( REF_CLK, UART_CLK, RST_N, UART_RX_IN, scan_clk, scan_rst, 
        test_mode, SE, SI, SO, UART_TX_O, parity_error, framing_error, 
        test_si4 );
  input [2:0] SI;
  output [2:0] SO;
  input REF_CLK, UART_CLK, RST_N, UART_RX_IN, scan_clk, scan_rst, test_mode,
         SE, test_si4;
  output UART_TX_O, parity_error, framing_error;
  wire   clk_m_UART, clk_m_REF, ref_rst, ref_func_rst, uart_rst, tx_rst,
         tx_func_rst, rx_rst, rx_func_rst, rst_m, alu_clk_en_test, tx_clk,
         rx_clk, busy, fifo_full, fifo_empty, alu_cg, alu_out_v, rd_data_vld,
         rx_out_v, Pulse_U_rcv_flop, Pulse_U_pls_flop,
         Regfile_u_reg_file_15__0_, Regfile_u_reg_file_15__1_,
         Regfile_u_reg_file_15__2_, Regfile_u_reg_file_15__3_,
         Regfile_u_reg_file_15__4_, Regfile_u_reg_file_15__5_,
         Regfile_u_reg_file_15__6_, Regfile_u_reg_file_15__7_,
         Regfile_u_reg_file_14__0_, Regfile_u_reg_file_14__1_,
         Regfile_u_reg_file_14__2_, Regfile_u_reg_file_14__3_,
         Regfile_u_reg_file_14__4_, Regfile_u_reg_file_14__5_,
         Regfile_u_reg_file_14__6_, Regfile_u_reg_file_14__7_,
         Regfile_u_reg_file_13__0_, Regfile_u_reg_file_13__1_,
         Regfile_u_reg_file_13__2_, Regfile_u_reg_file_13__3_,
         Regfile_u_reg_file_13__4_, Regfile_u_reg_file_13__5_,
         Regfile_u_reg_file_13__6_, Regfile_u_reg_file_13__7_,
         Regfile_u_reg_file_12__0_, Regfile_u_reg_file_12__1_,
         Regfile_u_reg_file_12__2_, Regfile_u_reg_file_12__3_,
         Regfile_u_reg_file_12__4_, Regfile_u_reg_file_12__5_,
         Regfile_u_reg_file_12__6_, Regfile_u_reg_file_12__7_,
         Regfile_u_reg_file_11__0_, Regfile_u_reg_file_11__1_,
         Regfile_u_reg_file_11__2_, Regfile_u_reg_file_11__3_,
         Regfile_u_reg_file_11__4_, Regfile_u_reg_file_11__5_,
         Regfile_u_reg_file_11__6_, Regfile_u_reg_file_11__7_,
         Regfile_u_reg_file_10__0_, Regfile_u_reg_file_10__1_,
         Regfile_u_reg_file_10__2_, Regfile_u_reg_file_10__3_,
         Regfile_u_reg_file_10__4_, Regfile_u_reg_file_10__5_,
         Regfile_u_reg_file_10__6_, Regfile_u_reg_file_10__7_,
         Regfile_u_reg_file_9__0_, Regfile_u_reg_file_9__1_,
         Regfile_u_reg_file_9__2_, Regfile_u_reg_file_9__3_,
         Regfile_u_reg_file_9__4_, Regfile_u_reg_file_9__5_,
         Regfile_u_reg_file_9__6_, Regfile_u_reg_file_9__7_,
         Regfile_u_reg_file_8__0_, Regfile_u_reg_file_8__1_,
         Regfile_u_reg_file_8__2_, Regfile_u_reg_file_8__3_,
         Regfile_u_reg_file_8__4_, Regfile_u_reg_file_8__5_,
         Regfile_u_reg_file_8__6_, Regfile_u_reg_file_8__7_,
         Regfile_u_reg_file_7__0_, Regfile_u_reg_file_7__1_,
         Regfile_u_reg_file_7__2_, Regfile_u_reg_file_7__3_,
         Regfile_u_reg_file_7__4_, Regfile_u_reg_file_7__5_,
         Regfile_u_reg_file_7__6_, Regfile_u_reg_file_7__7_,
         Regfile_u_reg_file_6__0_, Regfile_u_reg_file_6__1_,
         Regfile_u_reg_file_6__2_, Regfile_u_reg_file_6__3_,
         Regfile_u_reg_file_6__4_, Regfile_u_reg_file_6__5_,
         Regfile_u_reg_file_6__6_, Regfile_u_reg_file_6__7_,
         Regfile_u_reg_file_5__0_, Regfile_u_reg_file_5__1_,
         Regfile_u_reg_file_5__2_, Regfile_u_reg_file_5__3_,
         Regfile_u_reg_file_5__4_, Regfile_u_reg_file_5__5_,
         Regfile_u_reg_file_5__6_, Regfile_u_reg_file_5__7_,
         Regfile_u_reg_file_4__0_, Regfile_u_reg_file_4__1_,
         Regfile_u_reg_file_4__2_, Regfile_u_reg_file_4__3_,
         Regfile_u_reg_file_4__4_, Regfile_u_reg_file_4__6_,
         Regfile_u_reg_file_4__7_, Regfile_u_n18, Regfile_u_n17,
         sys_ctrl_u_reg3_cfg, sys_ctrl_u_reg2_cfg, sys_ctrl_u_cfg_locked,
         Rx2SysCtrl_pulse_out, FIFO_u_U4_WR_PTR_BIN_3_,
         FIFO_u_U5_RD_PTR_BIN_3_, UART_TX_RX_U0_UART_TX_par_bit,
         UART_TX_RX_U0_UART_TX_ser_data, UART_TX_RX_U0_UART_TX_ser_done,
         UART_TX_RX_U0_UART_RX_samp_b, UART_TX_RX_U0_UART_RX_stp_chk_en,
         UART_TX_RX_U0_UART_RX_strt_glitch, UART_TX_RX_U0_UART_RX_stp_done,
         UART_TX_RX_U0_UART_RX_par_done, UART_TX_RX_U0_UART_RX_samp_valid,
         UART_TX_RX_U0_UART_TX_U1_loading,
         UART_TX_RX_U0_UART_RX_U7_data_valid_next,
         UART_TX_RX_U0_UART_RX_U7_sample_valid_d,
         UART_TX_RX_U0_UART_RX_U7_n_state_0_, UART_TX_RX_U0_UART_RX_U6_N5,
         UART_TX_RX_U0_UART_RX_U5_N4, UART_TX_RX_U0_UART_RX_U4_par_done_next,
         UART_TX_RX_U0_UART_RX_U4_parity_reg, UART_TX_RX_U0_UART_RX_U1_N116,
         UART_TX_RX_U0_UART_RX_U1_N115, UART_TX_RX_U0_UART_RX_U1_N114,
         UART_TX_RX_U0_UART_RX_U1_N113, UART_TX_RX_U0_UART_RX_U1_N112,
         UART_TX_RX_U0_UART_RX_U1_N111, UART_TX_RX_U0_UART_RX_U2_N39,
         UART_TX_RX_U0_UART_RX_U2_s1, UART_TX_RX_U0_UART_RX_U2_s0,
         C118_DATA15_0, C118_DATA15_1, C118_DATA15_2, C118_DATA15_3,
         C118_DATA15_4, C118_DATA15_5, C118_DATA15_6, C118_DATA15_7,
         eq_x_40_n25, eq_x_37_n25, n613, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n707, n708, n709, n710,
         n711, n712, n713, n714, n715, n716, n717, n718, n719, n720, n721,
         n722, n723, n724, n725, n726, n727, n728, n729, n730, n731, n732,
         n733, n734, n735, n736, n737, n738, n739, n740, n741, n742, n743,
         n744, n745, n746, n747, n748, n749, n750, n751, n752, n753, n754,
         n755, n756, n757, n758, n759, n760, n761, n762, n763, n764, n765,
         n766, n767, n768, n769, n770, n771, n772, n773, n774, n775, n776,
         n777, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787,
         n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, n798,
         n799, n800, n801, n802, n803, n804, n805, n806, n807, n808, n809,
         n810, n811, n812, n813, n814, n815, n816, n817, n818, n819, n820,
         n821, n822, n823, n824, n825, n826, n827, n828, n829, n830, n831,
         n832, n833, n834, n835, n836, n837, n838, n839, n840, n841, n842,
         n843, n844, n845, n846, n847, n848, n849, n850, n851, n852, n853,
         n854, n855, n856, n857, n858, n859, n860, n861, n862, n863, n864,
         n865, n866, n867, n868, n869, n870, n871, n872, n873, n874, n875,
         n876, n877, n878, n879, n881, n882, n883, n884, n885,
         DP_OP_196J1_124_5161_n43, DP_OP_196J1_124_5161_n29,
         DP_OP_196J1_124_5161_n28, DP_OP_196J1_124_5161_n27,
         DP_OP_196J1_124_5161_n26, DP_OP_196J1_124_5161_n25,
         DP_OP_196J1_124_5161_n24, DP_OP_196J1_124_5161_n23,
         DP_OP_196J1_124_5161_n22, DP_OP_196J1_124_5161_n16,
         DP_OP_196J1_124_5161_n15, DP_OP_196J1_124_5161_n14,
         DP_OP_196J1_124_5161_n13, DP_OP_196J1_124_5161_n12,
         DP_OP_196J1_124_5161_n11, DP_OP_196J1_124_5161_n10,
         DP_OP_196J1_124_5161_n9, intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_,
         intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_4_, intadd_0_B_3_,
         intadd_0_B_2_, intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_,
         intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n5, intadd_0_n4,
         intadd_0_n3, intadd_0_n2, intadd_0_n1, intadd_1_A_3_, intadd_1_A_2_,
         intadd_1_A_1_, intadd_1_A_0_, intadd_1_B_4_, intadd_1_B_3_,
         intadd_1_B_2_, intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_,
         intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n5, intadd_1_n4,
         intadd_1_n3, intadd_1_n2, intadd_1_n1, intadd_2_A_3_, intadd_2_A_2_,
         intadd_2_A_1_, intadd_2_B_3_, intadd_2_B_2_, intadd_2_SUM_3_,
         intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n4,
         intadd_2_n3, intadd_2_n2, intadd_2_n1, intadd_3_A_3_, intadd_3_A_2_,
         intadd_3_B_2_, intadd_3_B_0_, intadd_3_SUM_2_, intadd_3_SUM_0_,
         intadd_3_n4, intadd_3_n3, intadd_3_n2, intadd_3_n1, intadd_4_A_0_,
         intadd_4_B_1_, intadd_4_CI, intadd_4_SUM_0_, intadd_4_n3, intadd_4_n2,
         intadd_4_n1, intadd_5_A_2_, intadd_5_B_1_, intadd_5_n3, intadd_5_n2,
         intadd_5_n1, intadd_6_A_2_, intadd_6_A_0_, intadd_6_B_2_,
         intadd_6_B_1_, intadd_6_B_0_, intadd_6_SUM_2_, intadd_6_SUM_1_,
         intadd_6_SUM_0_, intadd_6_n3, intadd_6_n2, intadd_6_n1, intadd_7_A_1_,
         intadd_7_A_0_, intadd_7_B_2_, intadd_7_B_1_, intadd_7_B_0_,
         intadd_7_CI, intadd_7_SUM_2_, intadd_7_SUM_1_, intadd_7_SUM_0_,
         intadd_7_n3, intadd_7_n2, intadd_7_n1, n886, n887, n888, n889, n890,
         n891, n892, n893, n894, n895, n896, n897, n898, n899, n900, n902,
         n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n933, n934, n935, n936,
         n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971, n972, n973, n974, n975, n976, n977, n978, n979, n980, n981,
         n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, n992,
         n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003,
         n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013,
         n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023,
         n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033,
         n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043,
         n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053,
         n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063,
         n1064, n1065, n1066, n1067, n1069, n1070, n1071, n1072, n1073, n1074,
         n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084,
         n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094,
         n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104,
         n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114,
         n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125,
         n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135,
         n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145,
         n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155,
         n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165,
         n1166, n1167, n1169, n1170, n1171, n1173, n1174, n1175, n1176, n1177,
         n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187,
         n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197,
         n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208,
         n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218,
         n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228,
         n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238,
         n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248,
         n1249, n1250, n1251, n1252, n1253, n1255, n1256, n1257, n1258, n1259,
         n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269,
         n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278, n1279,
         n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288, n1289,
         n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298, n1299,
         n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308, n1309,
         n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318, n1319,
         n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328, n1329,
         n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338, n1339,
         n1340, n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348, n1349,
         n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357, n1358, n1359,
         n1360, n1361, n1362, n1363, n1364, n1365, n1366, n1367, n1368, n1369,
         n1370, n1371, n1372, n1373, n1374, n1375, n1376, n1377, n1378, n1379,
         n1380, n1381, n1382, n1383, n1384, n1385, n1386, n1387, n1388, n1389,
         n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397, n1398, n1399,
         n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407, n1408, n1409,
         n1410, n1411, n1412, n1413, n1414, n1415, n1416, n1417, n1418, n1419,
         n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427, n1428, n1429,
         n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437, n1438, n1439,
         n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447, n1448, n1449,
         n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457, n1458, n1459,
         n1460, n1461, n1462, n1463, n1464, n1465, n1467, n1469, n1470, n1471,
         n1472, n1473, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482,
         n1483, n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492,
         n1493, n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502,
         n1503, n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512,
         n1513, n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522,
         n1523, n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532,
         n1533, n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542,
         n1543, n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552,
         n1553, n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562,
         n1563, n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572,
         n1573, n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582,
         n1583, n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591, n1592,
         n1593, n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602,
         n1603, n1604, n1605, n1606, n1607, n1608, n1609, n1610, n1611, n1612,
         n1613, n1614, n1615, n1616, n1617, n1618, n1619, n1620, n1621, n1622,
         n1623, n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631, n1632,
         n1633, n1634, n1635, n1636, n1637, n1638, n1639, n1640, n1641, n1642,
         n1643, n1644, n1645, n1646, n1647, n1648, n1649, n1650, n1651, n1652,
         n1653, n1654, n1655, n1656, n1657, n1658, n1659, n1660, n1661, n1662,
         n1663, n1664, n1665, n1666, n1667, n1668, n1669, n1670, n1671, n1672,
         n1673, n1674, n1675, n1676, n1677, n1678, n1679, n1680, n1681, n1682,
         n1683, n1684, n1685, n1686, n1687, n1688, n1689, n1690, n1691, n1692,
         n1693, n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701, n1702,
         n1703, n1704, n1705, n1706, n1707, n1708, n1709, n1710, n1711, n1712,
         n1713, n1714, n1715, n1716, n1717, n1718, n1719, n1720, n1721, n1722,
         n1723, n1724, n1725, n1726, n1727, n1728, n1729, n1730, n1731, n1732,
         n1733, n1734, n1735, n1736, n1737, n1738, n1739, n1740, n1741, n1742,
         n1743, n1744, n1745, n1746, n1747, n1748, n1749, n1750, n1751, n1752,
         n1753, n1754, n1755, n1756, n1757, n1758, n1759, n1760, n1761, n1762,
         n1763, n1764, n1765, n1766, n1767, n1768, n1769, n1770, n1771, n1772,
         n1773, n1774, n1775, n1776, n1777, n1778, n1779, n1780, n1781, n1782,
         n1783, n1784, n1785, n1786, n1787, n1788, n1789, n1790, n1791, n1792,
         n1793, n1794, n1795, n1796, n1797, n1798, n1799, n1800, n1801, n1802,
         n1803, n1804, n1805, n1806, n1807, n1808, n1809, n1810, n1811, n1812,
         n1813, n1814, n1815, n1816, n1817, n1818, n1819, n1820, n1821, n1822,
         n1823, n1824, n1825, n1826, n1827, n1828, n1829, n1830, n1831, n1832,
         n1833, n1834, n1835, n1836, n1837, n1838, n1839, n1840, n1841, n1842,
         n1843, n1844, n1845, n1846, n1847, n1848, n1849, n1850, n1851, n1852,
         n1853, n1854, n1855, n1856, n1857, n1858, n1859, n1860, n1861, n1862,
         n1863, n1864, n1865, n1866, n1867, n1868, n1869, n1870, n1871, n1872,
         n1876, n1877, n1878, n1879, n1880, n1881, n1882, n1883, n1884, n1885,
         n1886, n1887, n1888, n1889, n1890, n1891, n1892, n1893, n1894, n1895,
         n1896, n1897, n1898, n1899, n1900, n1901, n1903, n1904, n1907, n1913,
         n1917, n1921, n1922, n1925, n1927, n1928, n1929, n1931, n1932, n1933,
         n1936, n1938, n1939, n1940, n1941, n1942, n1943;
  wire   [7:0] reg0;
  wire   [7:0] reg1;
  wire   [15:0] alu_out;
  wire   [7:0] rd_data;
  wire   [7:0] reg2;
  wire   [5:0] reg3;
  wire   [7:0] synced_p_data;
  wire   [7:0] rx_p_out;
  wire   [2:0] rx_ratio;
  wire   [3:0] FIFO_u_r_ptr_synch;
  wire   [2:0] FIFO_u_r_ptr;
  wire   [3:0] FIFO_u_w_ptr_synch;
  wire   [2:0] FIFO_u_w_ptr;
  wire   [2:0] FIFO_u_r_addr;
  wire   [2:0] FIFO_u_w_addr;
  wire   [15:0] ALU_u_ALU_OUT_Comb;
  wire   [3:0] sys_ctrl_u_wr_addr;
  wire   [7:0] sys_ctrl_u_frame2;
  wire   [3:0] sys_ctrl_u_current_state;
  wire   [3:0] Rx2SysCtrl_SYNC;
  wire   [1:0] RF1_n_synch;
  wire   [1:0] rx_rst_sync_n_synch;
  wire   [1:0] tx_rst_sync_n_synch;
  wire   [1:0] uart_rst_sync_n_synch;
  wire   [63:0] FIFO_u_U1_mem;
  wire   [3:0] FIFO_u_U2_WRptr_sync_s0;
  wire   [3:0] FIFO_u_U4_WR_PTR_GRAY_NEXT;
  wire   [2:0] FIFO_u_U4_WR_PTR_BIN_NEXT;
  wire   [3:0] FIFO_u_U5_RD_PTR_GRAY_NEXT;
  wire   [2:0] FIFO_u_U5_RD_PTR_BIN_NEXT;
  wire   [5:0] UART_TX_RX_U0_UART_RX_edge_cnt;
  wire   [3:0] UART_TX_RX_U0_UART_RX_bit_cnt;
  wire   [3:0] FIFO_u_U3_RDptr_sync_s0;
  wire   [7:0] UART_TX_RX_U0_UART_TX_U1_mem;
  wire   [2:0] UART_TX_RX_U0_UART_TX_U1_counter;
  wire   [2:0] UART_TX_RX_U0_UART_TX_U2_next_state;
  wire   [2:0] UART_TX_RX_U0_UART_TX_U2_current_state;
  wire   [2:0] UART_TX_RX_U0_UART_RX_U7_c_state;
  wire   [3:0] UART_TX_RX_U0_UART_RX_U4_count;

  AO22X1M U760 ( .A0(test_mode), .A1(scan_clk), .B0(n613), .B1(REF_CLK), .Y(
        clk_m_REF) );
  CLKMX2X2M U953 ( .A(n885), .B(scan_clk), .S0(test_mode), .Y(tx_clk) );
  CLKMX2X2M U954 ( .A(n884), .B(scan_clk), .S0(test_mode), .Y(rx_clk) );
  SDFFRQX1M RF1_n_synch_reg_0_ ( .D(1'b1), .SI(fifo_empty), .SE(n1929), .CK(
        clk_m_REF), .RN(rst_m), .Q(RF1_n_synch[0]) );
  SDFFRQX1M rx_rst_sync_n_synch_reg_0_ ( .D(1'b1), .SI(
        UART_TX_RX_U0_UART_TX_par_bit), .SE(n1941), .CK(rx_clk), .RN(uart_rst), 
        .Q(rx_rst_sync_n_synch[0]) );
  SDFFRQX1M tx_rst_sync_n_synch_reg_0_ ( .D(1'b1), .SI(sys_ctrl_u_wr_addr[3]), 
        .SE(n1933), .CK(tx_clk), .RN(uart_rst), .Q(tx_rst_sync_n_synch[0]) );
  SDFFRQX1M uart_rst_sync_n_synch_reg_0_ ( .D(1'b1), .SI(
        tx_rst_sync_n_synch[0]), .SE(n1931), .CK(clk_m_UART), .RN(rst_m), .Q(
        uart_rst_sync_n_synch[0]) );
  SDFFRQX1M RF1_n_synch_reg_1_ ( .D(RF1_n_synch[0]), .SI(Pulse_U_pls_flop), 
        .SE(n1941), .CK(clk_m_REF), .RN(rst_m), .Q(RF1_n_synch[1]) );
  SDFFRQX1M rx_rst_sync_n_synch_reg_1_ ( .D(rx_rst_sync_n_synch[0]), .SI(
        UART_TX_RX_U0_UART_RX_U7_sample_valid_d), .SE(n1929), .CK(rx_clk), 
        .RN(uart_rst), .Q(rx_rst_sync_n_synch[1]) );
  SDFFRQX1M tx_rst_sync_n_synch_reg_1_ ( .D(tx_rst_sync_n_synch[0]), .SI(
        rx_func_rst), .SE(n1938), .CK(tx_clk), .RN(uart_rst), .Q(
        tx_rst_sync_n_synch[1]) );
  SDFFRQX1M uart_rst_sync_n_synch_reg_1_ ( .D(uart_rst_sync_n_synch[0]), .SI(
        tx_func_rst), .SE(n1933), .CK(clk_m_UART), .RN(rst_m), .Q(
        uart_rst_sync_n_synch[1]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U2_Sampled_bit_reg ( .D(n664), .SI(
        UART_TX_RX_U0_UART_RX_edge_cnt[5]), .SE(n1922), .CK(rx_clk), .RN(
        rx_rst), .Q(UART_TX_RX_U0_UART_RX_samp_b) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U7_data_valid_reg ( .D(
        UART_TX_RX_U0_UART_RX_U7_data_valid_next), .SI(
        UART_TX_RX_U0_UART_RX_U7_c_state[2]), .SE(n1943), .CK(rx_clk), .RN(
        rx_rst), .Q(rx_out_v) );
  SDFFRQX1M Rx2SysCtrl_SYNC_reg_0_ ( .D(rx_out_v), .SI(ref_func_rst), .SE(
        n1939), .CK(clk_m_REF), .RN(n1895), .Q(Rx2SysCtrl_SYNC[0]) );
  SDFFRQX1M sys_ctrl_u_current_state_reg_2_ ( .D(n651), .SI(
        sys_ctrl_u_current_state[1]), .SE(n1941), .CK(clk_m_REF), .RN(n1896), 
        .Q(sys_ctrl_u_current_state[2]) );
  SDFFRQX1M sys_ctrl_u_reg2_cfg_reg ( .D(n648), .SI(sys_ctrl_u_frame2[7]), 
        .SE(n1943), .CK(clk_m_REF), .RN(n1896), .Q(sys_ctrl_u_reg2_cfg) );
  SDFFRQX1M sys_ctrl_u_cfg_locked_reg ( .D(n650), .SI(rx_rst_sync_n_synch[0]), 
        .SE(n1925), .CK(clk_m_REF), .RN(n1896), .Q(sys_ctrl_u_cfg_locked) );
  SDFFRQX1M Regfile_u_RdData_VLD_reg ( .D(n878), .SI(n1907), .SE(n1917), .CK(
        clk_m_REF), .RN(n1896), .Q(rd_data_vld) );
  SDFFRQX1M sys_ctrl_u_current_state_reg_1_ ( .D(n652), .SI(
        sys_ctrl_u_current_state[0]), .SE(SE), .CK(clk_m_REF), .RN(n1896), .Q(
        sys_ctrl_u_current_state[1]) );
  SDFFRQX1M sys_ctrl_u_current_state_reg_3_ ( .D(n879), .SI(
        sys_ctrl_u_current_state[2]), .SE(n1921), .CK(clk_m_REF), .RN(n1896), 
        .Q(sys_ctrl_u_current_state[3]) );
  SDFFRQX1M sys_ctrl_u_reg3_cfg_reg ( .D(n649), .SI(sys_ctrl_u_reg2_cfg), .SE(
        n1936), .CK(clk_m_REF), .RN(n1896), .Q(sys_ctrl_u_reg3_cfg) );
  SDFFRQX1M sys_ctrl_u_current_state_reg_0_ ( .D(n653), .SI(
        sys_ctrl_u_cfg_locked), .SE(n1932), .CK(clk_m_REF), .RN(n1896), .Q(
        sys_ctrl_u_current_state[0]) );
  SDFFRQX1M ALU_u_OUT_VALID_reg ( .D(n1898), .SI(alu_out[15]), .SE(n1941), 
        .CK(alu_cg), .RN(n1896), .Q(alu_out_v) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_9_ ( .D(ALU_u_ALU_OUT_Comb[9]), .SI(alu_out[8]), 
        .SE(n1925), .CK(alu_cg), .RN(n1896), .Q(alu_out[9]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_10_ ( .D(ALU_u_ALU_OUT_Comb[10]), .SI(alu_out[9]), .SE(n1939), .CK(alu_cg), .RN(n1896), .Q(alu_out[10]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_11_ ( .D(ALU_u_ALU_OUT_Comb[11]), .SI(
        alu_out[10]), .SE(SE), .CK(alu_cg), .RN(n1896), .Q(alu_out[11]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_12_ ( .D(ALU_u_ALU_OUT_Comb[12]), .SI(
        alu_out[11]), .SE(n1929), .CK(alu_cg), .RN(n1896), .Q(alu_out[12]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_13_ ( .D(ALU_u_ALU_OUT_Comb[13]), .SI(
        alu_out[12]), .SE(n1942), .CK(alu_cg), .RN(n1896), .Q(alu_out[13]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_14_ ( .D(ALU_u_ALU_OUT_Comb[14]), .SI(
        alu_out[13]), .SE(n1936), .CK(alu_cg), .RN(n1896), .Q(alu_out[14]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_15_ ( .D(ALU_u_ALU_OUT_Comb[15]), .SI(
        alu_out[14]), .SE(n1925), .CK(alu_cg), .RN(n1896), .Q(alu_out[15]) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_loading_reg ( .D(n861), .SI(
        UART_TX_RX_U0_UART_TX_U1_counter[2]), .SE(n1927), .CK(tx_clk), .RN(
        tx_rst), .Q(UART_TX_RX_U0_UART_TX_U1_loading) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_counter_reg_0_ ( .D(n863), .SI(rx_out_v), 
        .SE(n1929), .CK(tx_clk), .RN(tx_rst), .Q(
        UART_TX_RX_U0_UART_TX_U1_counter[0]) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_counter_reg_1_ ( .D(n859), .SI(
        UART_TX_RX_U0_UART_TX_U1_counter[0]), .SE(n1917), .CK(tx_clk), .RN(
        tx_rst), .Q(UART_TX_RX_U0_UART_TX_U1_counter[1]) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_counter_reg_2_ ( .D(n862), .SI(
        UART_TX_RX_U0_UART_TX_U1_counter[1]), .SE(SE), .CK(tx_clk), .RN(tx_rst), .Q(UART_TX_RX_U0_UART_TX_U1_counter[2]) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_ser_done_reg ( .D(n860), .SI(
        UART_TX_RX_U0_UART_TX_ser_data), .SE(n1941), .CK(tx_clk), .RN(tx_rst), 
        .Q(UART_TX_RX_U0_UART_TX_ser_done) );
  SDFFRQX1M Pulse_U_rcv_flop_reg ( .D(busy), .SI(FIFO_u_r_ptr_synch[3]), .SE(
        n1922), .CK(tx_clk), .RN(tx_rst), .Q(Pulse_U_rcv_flop) );
  SDFFRQX1M FIFO_u_U5_RD_PTR_BIN_reg_0_ ( .D(FIFO_u_U5_RD_PTR_BIN_NEXT[0]), 
        .SI(fifo_full), .SE(n1938), .CK(tx_clk), .RN(tx_rst), .Q(
        FIFO_u_r_addr[0]) );
  SDFFRQX1M FIFO_u_U5_RD_PTR_BIN_reg_1_ ( .D(FIFO_u_U5_RD_PTR_BIN_NEXT[1]), 
        .SI(FIFO_u_r_addr[0]), .SE(n1933), .CK(tx_clk), .RN(tx_rst), .Q(
        FIFO_u_r_addr[1]) );
  SDFFRQX1M FIFO_u_U5_RD_PTR_GRAY_reg_0_ ( .D(FIFO_u_U5_RD_PTR_GRAY_NEXT[0]), 
        .SI(FIFO_u_U5_RD_PTR_BIN_3_), .SE(n1942), .CK(tx_clk), .RN(tx_rst), 
        .Q(FIFO_u_r_ptr[0]) );
  SDFFRQX1M FIFO_u_U3_RDptr_sync_s0_reg_0_ ( .D(FIFO_u_r_ptr[0]), .SI(
        FIFO_u_w_ptr_synch[3]), .SE(n1922), .CK(clk_m_REF), .RN(n1896), .Q(
        FIFO_u_U3_RDptr_sync_s0[0]) );
  SDFFRQX1M FIFO_u_U5_RD_PTR_BIN_reg_2_ ( .D(FIFO_u_U5_RD_PTR_BIN_NEXT[2]), 
        .SI(FIFO_u_r_addr[1]), .SE(SE), .CK(tx_clk), .RN(tx_rst), .Q(
        FIFO_u_r_addr[2]) );
  SDFFRQX1M FIFO_u_U5_RD_PTR_GRAY_reg_1_ ( .D(FIFO_u_U5_RD_PTR_GRAY_NEXT[1]), 
        .SI(FIFO_u_r_ptr[0]), .SE(n1931), .CK(tx_clk), .RN(tx_rst), .Q(
        FIFO_u_r_ptr[1]) );
  SDFFRQX1M FIFO_u_U3_RDptr_sync_s0_reg_1_ ( .D(FIFO_u_r_ptr[1]), .SI(
        FIFO_u_r_ptr_synch[0]), .SE(SE), .CK(clk_m_REF), .RN(n1896), .Q(
        FIFO_u_U3_RDptr_sync_s0[1]) );
  SDFFRQX1M FIFO_u_U5_RD_PTR_GRAY_reg_2_ ( .D(FIFO_u_U5_RD_PTR_GRAY_NEXT[2]), 
        .SI(FIFO_u_r_ptr[1]), .SE(n1927), .CK(tx_clk), .RN(tx_rst), .Q(
        FIFO_u_r_ptr[2]) );
  SDFFRQX1M FIFO_u_U3_RDptr_sync_s0_reg_2_ ( .D(FIFO_u_r_ptr[2]), .SI(
        FIFO_u_r_ptr_synch[1]), .SE(n1936), .CK(clk_m_REF), .RN(n1896), .Q(
        FIFO_u_U3_RDptr_sync_s0[2]) );
  SDFFRQX1M FIFO_u_U5_RD_PTR_BIN_reg_3_ ( .D(FIFO_u_U5_RD_PTR_GRAY_NEXT[3]), 
        .SI(FIFO_u_r_addr[2]), .SE(n1931), .CK(tx_clk), .RN(tx_rst), .Q(
        FIFO_u_U5_RD_PTR_BIN_3_) );
  SDFFRQX1M FIFO_u_U3_RDptr_sync_s0_reg_3_ ( .D(FIFO_u_U5_RD_PTR_BIN_3_), .SI(
        FIFO_u_r_ptr_synch[2]), .SE(n1942), .CK(clk_m_REF), .RN(n1897), .Q(
        FIFO_u_U3_RDptr_sync_s0[3]) );
  SDFFRQX1M FIFO_u_U4_full_reg ( .D(eq_x_37_n25), .SI(FIFO_u_w_ptr[2]), .SE(SE), .CK(clk_m_REF), .RN(n1897), .Q(fifo_full) );
  SDFFRQX1M FIFO_u_U4_WR_PTR_BIN_reg_0_ ( .D(FIFO_u_U4_WR_PTR_BIN_NEXT[0]), 
        .SI(FIFO_u_U1_mem[7]), .SE(n1917), .CK(clk_m_REF), .RN(n1897), .Q(
        FIFO_u_w_addr[0]) );
  SDFFRQX1M FIFO_u_U4_WR_PTR_BIN_reg_1_ ( .D(FIFO_u_U4_WR_PTR_BIN_NEXT[1]), 
        .SI(FIFO_u_w_addr[0]), .SE(n1917), .CK(clk_m_REF), .RN(n1897), .Q(
        FIFO_u_w_addr[1]) );
  SDFFRQX1M FIFO_u_U4_WR_PTR_BIN_reg_2_ ( .D(FIFO_u_U4_WR_PTR_BIN_NEXT[2]), 
        .SI(FIFO_u_w_addr[1]), .SE(n1929), .CK(clk_m_REF), .RN(n1897), .Q(
        FIFO_u_w_addr[2]) );
  SDFFRQX1M FIFO_u_U4_WR_PTR_BIN_reg_3_ ( .D(FIFO_u_U4_WR_PTR_GRAY_NEXT[3]), 
        .SI(FIFO_u_w_addr[2]), .SE(n1928), .CK(clk_m_REF), .RN(n1897), .Q(
        FIFO_u_U4_WR_PTR_BIN_3_) );
  SDFFRQX1M FIFO_u_U2_WRptr_sync_s0_reg_3_ ( .D(FIFO_u_U4_WR_PTR_BIN_3_), .SI(
        FIFO_u_w_ptr_synch[2]), .SE(n1939), .CK(tx_clk), .RN(tx_rst), .Q(
        FIFO_u_U2_WRptr_sync_s0[3]) );
  SDFFRQX1M FIFO_u_U4_WR_PTR_GRAY_reg_1_ ( .D(FIFO_u_U4_WR_PTR_GRAY_NEXT[1]), 
        .SI(FIFO_u_w_ptr[0]), .SE(SE), .CK(clk_m_REF), .RN(n1897), .Q(
        FIFO_u_w_ptr[1]) );
  SDFFRQX1M FIFO_u_U2_WRptr_sync_s0_reg_1_ ( .D(FIFO_u_w_ptr[1]), .SI(
        FIFO_u_w_ptr_synch[0]), .SE(n1942), .CK(tx_clk), .RN(tx_rst), .Q(
        FIFO_u_U2_WRptr_sync_s0[1]) );
  SDFFRQX1M FIFO_u_U4_WR_PTR_GRAY_reg_2_ ( .D(FIFO_u_U4_WR_PTR_GRAY_NEXT[2]), 
        .SI(FIFO_u_w_ptr[1]), .SE(n1929), .CK(clk_m_REF), .RN(n1897), .Q(
        FIFO_u_w_ptr[2]) );
  SDFFRQX1M FIFO_u_U2_WRptr_sync_s0_reg_2_ ( .D(FIFO_u_w_ptr[2]), .SI(
        FIFO_u_w_ptr_synch[1]), .SE(n1936), .CK(tx_clk), .RN(tx_rst), .Q(
        FIFO_u_U2_WRptr_sync_s0[2]) );
  SDFFRQX1M FIFO_u_U4_WR_PTR_GRAY_reg_0_ ( .D(FIFO_u_U4_WR_PTR_GRAY_NEXT[0]), 
        .SI(FIFO_u_U4_WR_PTR_BIN_3_), .SE(SE), .CK(clk_m_REF), .RN(n1897), .Q(
        FIFO_u_w_ptr[0]) );
  SDFFRQX1M FIFO_u_U2_WRptr_sync_s0_reg_0_ ( .D(FIFO_u_w_ptr[0]), .SI(
        FIFO_u_U1_mem[16]), .SE(n1942), .CK(tx_clk), .RN(tx_rst), .Q(
        FIFO_u_U2_WRptr_sync_s0[0]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U4_parity_reg_reg ( .D(n663), .SI(
        parity_error), .SE(n1927), .CK(rx_clk), .RN(rx_rst), .Q(
        UART_TX_RX_U0_UART_RX_U4_parity_reg) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U4_count_reg_0_ ( .D(n662), .SI(rx_p_out[7]), 
        .SE(n1938), .CK(rx_clk), .RN(rx_rst), .Q(
        UART_TX_RX_U0_UART_RX_U4_count[0]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U4_count_reg_3_ ( .D(n659), .SI(
        UART_TX_RX_U0_UART_RX_U4_count[2]), .SE(n1932), .CK(rx_clk), .RN(
        rx_rst), .Q(UART_TX_RX_U0_UART_RX_U4_count[3]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U4_count_reg_1_ ( .D(n661), .SI(
        UART_TX_RX_U0_UART_RX_U4_count[0]), .SE(n1928), .CK(rx_clk), .RN(
        rx_rst), .Q(UART_TX_RX_U0_UART_RX_U4_count[1]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U4_count_reg_2_ ( .D(n660), .SI(
        UART_TX_RX_U0_UART_RX_U4_count[1]), .SE(n1927), .CK(rx_clk), .RN(
        rx_rst), .Q(UART_TX_RX_U0_UART_RX_U4_count[2]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U4_par_done_reg ( .D(
        UART_TX_RX_U0_UART_RX_U4_par_done_next), .SI(
        UART_TX_RX_U0_UART_RX_U4_count[3]), .SE(SE), .CK(rx_clk), .RN(rx_rst), 
        .Q(UART_TX_RX_U0_UART_RX_par_done) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U7_c_state_reg_2_ ( .D(n881), .SI(
        UART_TX_RX_U0_UART_RX_U7_c_state[1]), .SE(SE), .CK(rx_clk), .RN(rx_rst), .Q(UART_TX_RX_U0_UART_RX_U7_c_state[2]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U7_c_state_reg_1_ ( .D(n882), .SI(
        UART_TX_RX_U0_UART_RX_U7_c_state[0]), .SE(SE), .CK(rx_clk), .RN(rx_rst), .Q(UART_TX_RX_U0_UART_RX_U7_c_state[1]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U2_Sample_Valid_reg ( .D(
        UART_TX_RX_U0_UART_RX_U2_N39), .SI(Rx2SysCtrl_pulse_out), .SE(n1922), 
        .CK(rx_clk), .RN(rx_rst), .Q(UART_TX_RX_U0_UART_RX_samp_valid) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U6_stp_done_reg ( .D(
        UART_TX_RX_U0_UART_RX_stp_chk_en), .SI(
        UART_TX_RX_U0_UART_RX_strt_glitch), .SE(n1943), .CK(rx_clk), .RN(
        rx_rst), .Q(UART_TX_RX_U0_UART_RX_stp_done) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U2_s1_reg ( .D(n666), .SI(
        UART_TX_RX_U0_UART_RX_U2_s0), .SE(n1931), .CK(rx_clk), .RN(rx_rst), 
        .Q(UART_TX_RX_U0_UART_RX_U2_s1) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U2_s0_reg ( .D(n665), .SI(
        UART_TX_RX_U0_UART_RX_samp_b), .SE(n1928), .CK(rx_clk), .RN(rx_rst), 
        .Q(UART_TX_RX_U0_UART_RX_U2_s0) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Edge_cnt_reg_0_ ( .D(
        UART_TX_RX_U0_UART_RX_U1_N111), .SI(UART_TX_RX_U0_UART_RX_bit_cnt[3]), 
        .SE(n1925), .CK(rx_clk), .RN(rx_rst), .Q(
        UART_TX_RX_U0_UART_RX_edge_cnt[0]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Edge_cnt_reg_1_ ( .D(
        UART_TX_RX_U0_UART_RX_U1_N112), .SI(UART_TX_RX_U0_UART_RX_edge_cnt[0]), 
        .SE(n1938), .CK(rx_clk), .RN(rx_rst), .Q(
        UART_TX_RX_U0_UART_RX_edge_cnt[1]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Edge_cnt_reg_2_ ( .D(
        UART_TX_RX_U0_UART_RX_U1_N113), .SI(UART_TX_RX_U0_UART_RX_edge_cnt[1]), 
        .SE(n1932), .CK(rx_clk), .RN(rx_rst), .Q(
        UART_TX_RX_U0_UART_RX_edge_cnt[2]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Edge_cnt_reg_3_ ( .D(
        UART_TX_RX_U0_UART_RX_U1_N114), .SI(UART_TX_RX_U0_UART_RX_edge_cnt[2]), 
        .SE(n1929), .CK(rx_clk), .RN(rx_rst), .Q(
        UART_TX_RX_U0_UART_RX_edge_cnt[3]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Edge_cnt_reg_4_ ( .D(
        UART_TX_RX_U0_UART_RX_U1_N115), .SI(UART_TX_RX_U0_UART_RX_edge_cnt[3]), 
        .SE(n1943), .CK(rx_clk), .RN(rx_rst), .Q(
        UART_TX_RX_U0_UART_RX_edge_cnt[4]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Edge_cnt_reg_5_ ( .D(
        UART_TX_RX_U0_UART_RX_U1_N116), .SI(UART_TX_RX_U0_UART_RX_edge_cnt[4]), 
        .SE(n1939), .CK(rx_clk), .RN(rx_rst), .Q(
        UART_TX_RX_U0_UART_RX_edge_cnt[5]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Bit_cnt_reg_0_ ( .D(n658), .SI(n1904), 
        .SE(n1933), .CK(rx_clk), .RN(rx_rst), .Q(
        UART_TX_RX_U0_UART_RX_bit_cnt[0]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Bit_cnt_reg_3_ ( .D(n655), .SI(
        UART_TX_RX_U0_UART_RX_bit_cnt[2]), .SE(n1928), .CK(rx_clk), .RN(rx_rst), .Q(UART_TX_RX_U0_UART_RX_bit_cnt[3]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Bit_cnt_reg_1_ ( .D(n657), .SI(
        UART_TX_RX_U0_UART_RX_bit_cnt[0]), .SE(n1929), .CK(rx_clk), .RN(rx_rst), .Q(UART_TX_RX_U0_UART_RX_bit_cnt[1]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U1_Bit_cnt_reg_2_ ( .D(n656), .SI(
        UART_TX_RX_U0_UART_RX_bit_cnt[1]), .SE(SE), .CK(rx_clk), .RN(rx_rst), 
        .Q(UART_TX_RX_U0_UART_RX_bit_cnt[2]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U7_c_state_reg_0_ ( .D(
        UART_TX_RX_U0_UART_RX_U7_n_state_0_), .SI(
        UART_TX_RX_U0_UART_RX_stp_done), .SE(n1917), .CK(rx_clk), .RN(rx_rst), 
        .Q(UART_TX_RX_U0_UART_RX_U7_c_state[0]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U5_strt_glitch_reg ( .D(
        UART_TX_RX_U0_UART_RX_U5_N4), .SI(UART_TX_RX_U0_UART_RX_U4_parity_reg), 
        .SE(n1928), .CK(rx_clk), .RN(rx_rst), .Q(
        UART_TX_RX_U0_UART_RX_strt_glitch) );
  SDFFRQX1M Regfile_u_reg_file_reg_2__1_ ( .D(n770), .SI(reg2[0]), .SE(n1921), 
        .CK(clk_m_REF), .RN(n1897), .Q(reg2[1]) );
  SDFFRQX1M Regfile_u_reg_file_reg_2__2_ ( .D(n752), .SI(reg2[1]), .SE(n1936), 
        .CK(clk_m_REF), .RN(n1897), .Q(reg2[2]) );
  SDFFRQX1M Regfile_u_reg_file_reg_2__3_ ( .D(n735), .SI(reg2[2]), .SE(n1932), 
        .CK(clk_m_REF), .RN(n1897), .Q(reg2[3]) );
  SDFFRQX1M Regfile_u_reg_file_reg_2__4_ ( .D(n718), .SI(reg2[3]), .SE(n1943), 
        .CK(clk_m_REF), .RN(n1897), .Q(reg2[4]) );
  SDFFRQX1M Regfile_u_reg_file_reg_2__5_ ( .D(n701), .SI(reg2[4]), .SE(n1921), 
        .CK(clk_m_REF), .RN(n1897), .Q(reg2[5]) );
  SDFFRQX1M Regfile_u_reg_file_reg_2__6_ ( .D(n684), .SI(reg2[5]), .SE(n1939), 
        .CK(clk_m_REF), .RN(n1897), .Q(reg2[6]) );
  SDFFRQX1M Regfile_u_reg_file_reg_1__0_ ( .D(n786), .SI(reg0[7]), .SE(n1933), 
        .CK(clk_m_REF), .RN(n1897), .Q(reg1[0]) );
  SDFFRQX1M Regfile_u_reg_file_reg_5__0_ ( .D(n867), .SI(
        Regfile_u_reg_file_4__7_), .SE(n1925), .CK(clk_m_REF), .RN(n1895), .Q(
        Regfile_u_reg_file_5__0_) );
  SDFFRQX1M Regfile_u_reg_file_reg_5__1_ ( .D(n773), .SI(
        Regfile_u_reg_file_5__0_), .SE(n1943), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_5__1_) );
  SDFFRQX1M Regfile_u_reg_file_reg_5__2_ ( .D(n755), .SI(
        Regfile_u_reg_file_5__1_), .SE(n1939), .CK(clk_m_REF), .RN(n1897), .Q(
        Regfile_u_reg_file_5__2_) );
  SDFFRQX1M Regfile_u_reg_file_reg_5__3_ ( .D(n738), .SI(
        Regfile_u_reg_file_5__2_), .SE(SE), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_5__3_) );
  SDFFRQX1M Regfile_u_reg_file_reg_5__4_ ( .D(n721), .SI(
        Regfile_u_reg_file_5__3_), .SE(n1941), .CK(clk_m_REF), .RN(n1896), .Q(
        Regfile_u_reg_file_5__4_) );
  SDFFRQX1M Regfile_u_reg_file_reg_5__5_ ( .D(n704), .SI(
        Regfile_u_reg_file_5__4_), .SE(SE), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_5__5_) );
  SDFFRQX1M Regfile_u_reg_file_reg_5__6_ ( .D(n687), .SI(
        Regfile_u_reg_file_5__5_), .SE(n1927), .CK(clk_m_REF), .RN(n1895), .Q(
        Regfile_u_reg_file_5__6_) );
  SDFFRQX1M Regfile_u_reg_file_reg_5__7_ ( .D(n670), .SI(
        Regfile_u_reg_file_5__6_), .SE(n1925), .CK(clk_m_REF), .RN(n1897), .Q(
        Regfile_u_reg_file_5__7_) );
  SDFFRQX1M Regfile_u_reg_file_reg_4__0_ ( .D(n866), .SI(Regfile_u_n17), .SE(
        n1929), .CK(clk_m_REF), .RN(n886), .Q(Regfile_u_reg_file_4__0_) );
  SDFFRQX1M Regfile_u_reg_file_reg_4__1_ ( .D(n772), .SI(
        Regfile_u_reg_file_4__0_), .SE(n1922), .CK(clk_m_REF), .RN(n1896), .Q(
        Regfile_u_reg_file_4__1_) );
  SDFFRQX1M Regfile_u_reg_file_reg_4__2_ ( .D(n754), .SI(
        Regfile_u_reg_file_4__1_), .SE(n1938), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_4__2_) );
  SDFFRQX1M Regfile_u_reg_file_reg_4__3_ ( .D(n737), .SI(
        Regfile_u_reg_file_4__2_), .SE(n1933), .CK(clk_m_REF), .RN(n1895), .Q(
        Regfile_u_reg_file_4__3_) );
  SDFFRQX1M Regfile_u_reg_file_reg_4__4_ ( .D(n720), .SI(
        Regfile_u_reg_file_4__3_), .SE(n1943), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_4__4_) );
  SDFFRQX1M Regfile_u_reg_file_reg_4__6_ ( .D(n686), .SI(SI[0]), .SE(n1925), 
        .CK(clk_m_REF), .RN(n886), .Q(Regfile_u_reg_file_4__6_) );
  SDFFRQX1M Regfile_u_reg_file_reg_4__7_ ( .D(n669), .SI(
        Regfile_u_reg_file_4__6_), .SE(SE), .CK(clk_m_REF), .RN(n1896), .Q(
        Regfile_u_reg_file_4__7_) );
  SDFFRQX1M Regfile_u_reg_file_reg_3__0_ ( .D(n865), .SI(reg2[7]), .SE(n1943), 
        .CK(clk_m_REF), .RN(n886), .Q(reg3[0]) );
  SDFFRQX1M Regfile_u_reg_file_reg_3__1_ ( .D(n771), .SI(reg3[0]), .SE(n1941), 
        .CK(clk_m_REF), .RN(n1895), .Q(reg3[1]) );
  SDFFRQX1M Regfile_u_reg_file_reg_3__2_ ( .D(n753), .SI(reg3[1]), .SE(n1936), 
        .CK(clk_m_REF), .RN(n1895), .Q(reg3[2]) );
  SDFFRQX1M Regfile_u_reg_file_reg_3__3_ ( .D(n736), .SI(reg3[2]), .SE(n1931), 
        .CK(clk_m_REF), .RN(n886), .Q(reg3[3]) );
  SDFFRQX1M Regfile_u_reg_file_reg_3__4_ ( .D(n719), .SI(reg3[3]), .SE(n1922), 
        .CK(clk_m_REF), .RN(n1897), .Q(reg3[4]) );
  SDFFRQX1M Regfile_u_reg_file_reg_3__6_ ( .D(n685), .SI(reg3[5]), .SE(n1941), 
        .CK(clk_m_REF), .RN(n886), .Q(Regfile_u_n18) );
  SDFFRQX1M Regfile_u_reg_file_reg_3__7_ ( .D(n668), .SI(Regfile_u_n18), .SE(
        SE), .CK(clk_m_REF), .RN(n1896), .Q(Regfile_u_n17) );
  SDFFRQX1M Regfile_u_reg_file_reg_7__0_ ( .D(n869), .SI(
        Regfile_u_reg_file_6__7_), .SE(n1917), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_7__0_) );
  SDFFRQX1M Regfile_u_reg_file_reg_7__1_ ( .D(n775), .SI(
        Regfile_u_reg_file_7__0_), .SE(SE), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_7__1_) );
  SDFFRQX1M Regfile_u_reg_file_reg_7__2_ ( .D(n757), .SI(
        Regfile_u_reg_file_7__1_), .SE(n1928), .CK(clk_m_REF), .RN(n1895), .Q(
        Regfile_u_reg_file_7__2_) );
  SDFFRQX1M Regfile_u_reg_file_reg_7__3_ ( .D(n740), .SI(
        Regfile_u_reg_file_7__2_), .SE(n1939), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_7__3_) );
  SDFFRQX1M Regfile_u_reg_file_reg_7__4_ ( .D(n723), .SI(
        Regfile_u_reg_file_7__3_), .SE(SE), .CK(clk_m_REF), .RN(n1897), .Q(
        Regfile_u_reg_file_7__4_) );
  SDFFRQX1M Regfile_u_reg_file_reg_7__5_ ( .D(n706), .SI(
        Regfile_u_reg_file_7__4_), .SE(n1942), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_7__5_) );
  SDFFRQX1M Regfile_u_reg_file_reg_7__6_ ( .D(n689), .SI(
        Regfile_u_reg_file_7__5_), .SE(n1925), .CK(clk_m_REF), .RN(n1896), .Q(
        Regfile_u_reg_file_7__6_) );
  SDFFRQX1M Regfile_u_reg_file_reg_7__7_ ( .D(n672), .SI(
        Regfile_u_reg_file_7__6_), .SE(n1936), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_7__7_) );
  SDFFRQX1M Regfile_u_reg_file_reg_6__0_ ( .D(n868), .SI(
        Regfile_u_reg_file_5__7_), .SE(n1931), .CK(clk_m_REF), .RN(n1897), .Q(
        Regfile_u_reg_file_6__0_) );
  SDFFRQX1M Regfile_u_reg_file_reg_6__1_ ( .D(n774), .SI(
        Regfile_u_reg_file_6__0_), .SE(n1929), .CK(clk_m_REF), .RN(n1895), .Q(
        Regfile_u_reg_file_6__1_) );
  SDFFRQX1M Regfile_u_reg_file_reg_6__2_ ( .D(n756), .SI(
        Regfile_u_reg_file_6__1_), .SE(n1927), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_6__2_) );
  SDFFRQX1M Regfile_u_reg_file_reg_6__3_ ( .D(n739), .SI(
        Regfile_u_reg_file_6__2_), .SE(n1938), .CK(clk_m_REF), .RN(n1897), .Q(
        Regfile_u_reg_file_6__3_) );
  SDFFRQX1M Regfile_u_reg_file_reg_6__4_ ( .D(n722), .SI(
        Regfile_u_reg_file_6__3_), .SE(n1932), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_6__4_) );
  SDFFRQX1M Regfile_u_reg_file_reg_6__5_ ( .D(n705), .SI(
        Regfile_u_reg_file_6__4_), .SE(n1922), .CK(clk_m_REF), .RN(n1896), .Q(
        Regfile_u_reg_file_6__5_) );
  SDFFRQX1M Regfile_u_reg_file_reg_6__6_ ( .D(n688), .SI(
        Regfile_u_reg_file_6__5_), .SE(n1929), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_6__6_) );
  SDFFRQX1M Regfile_u_reg_file_reg_6__7_ ( .D(n671), .SI(
        Regfile_u_reg_file_6__6_), .SE(n1921), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_6__7_) );
  SDFFRQX1M Regfile_u_reg_file_reg_9__0_ ( .D(n871), .SI(
        Regfile_u_reg_file_8__7_), .SE(SE), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_9__0_) );
  SDFFRQX1M Regfile_u_reg_file_reg_9__1_ ( .D(n777), .SI(
        Regfile_u_reg_file_9__0_), .SE(n1922), .CK(clk_m_REF), .RN(n1897), .Q(
        Regfile_u_reg_file_9__1_) );
  SDFFRQX1M Regfile_u_reg_file_reg_9__2_ ( .D(n759), .SI(
        Regfile_u_reg_file_9__1_), .SE(n1942), .CK(clk_m_REF), .RN(n1896), .Q(
        Regfile_u_reg_file_9__2_) );
  SDFFRQX1M Regfile_u_reg_file_reg_9__3_ ( .D(n742), .SI(
        Regfile_u_reg_file_9__2_), .SE(SE), .CK(clk_m_REF), .RN(n1895), .Q(
        Regfile_u_reg_file_9__3_) );
  SDFFRQX1M Regfile_u_reg_file_reg_9__4_ ( .D(n725), .SI(
        Regfile_u_reg_file_9__3_), .SE(n1931), .CK(clk_m_REF), .RN(n1895), .Q(
        Regfile_u_reg_file_9__4_) );
  SDFFRQX1M Regfile_u_reg_file_reg_9__5_ ( .D(n708), .SI(
        Regfile_u_reg_file_9__4_), .SE(n1927), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_9__5_) );
  SDFFRQX1M Regfile_u_reg_file_reg_9__6_ ( .D(n691), .SI(
        Regfile_u_reg_file_9__5_), .SE(n1942), .CK(clk_m_REF), .RN(n1896), .Q(
        Regfile_u_reg_file_9__6_) );
  SDFFRQX1M Regfile_u_reg_file_reg_9__7_ ( .D(n674), .SI(
        Regfile_u_reg_file_9__6_), .SE(n1938), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_9__7_) );
  SDFFRQX1M Regfile_u_reg_file_reg_8__0_ ( .D(n870), .SI(
        Regfile_u_reg_file_7__7_), .SE(n1932), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_8__0_) );
  SDFFRQX1M Regfile_u_reg_file_reg_8__1_ ( .D(n776), .SI(
        Regfile_u_reg_file_8__0_), .SE(n1925), .CK(clk_m_REF), .RN(n1895), .Q(
        Regfile_u_reg_file_8__1_) );
  SDFFRQX1M Regfile_u_reg_file_reg_8__2_ ( .D(n758), .SI(
        Regfile_u_reg_file_8__1_), .SE(n1942), .CK(clk_m_REF), .RN(n1895), .Q(
        Regfile_u_reg_file_8__2_) );
  SDFFRQX1M Regfile_u_reg_file_reg_8__3_ ( .D(n741), .SI(
        Regfile_u_reg_file_8__2_), .SE(n1939), .CK(clk_m_REF), .RN(n1895), .Q(
        Regfile_u_reg_file_8__3_) );
  SDFFRQX1M Regfile_u_reg_file_reg_8__4_ ( .D(n724), .SI(
        Regfile_u_reg_file_8__3_), .SE(n1933), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_8__4_) );
  SDFFRQX1M Regfile_u_reg_file_reg_8__5_ ( .D(n707), .SI(
        Regfile_u_reg_file_8__4_), .SE(n1928), .CK(clk_m_REF), .RN(n1895), .Q(
        Regfile_u_reg_file_8__5_) );
  SDFFRQX1M Regfile_u_reg_file_reg_8__6_ ( .D(n690), .SI(
        Regfile_u_reg_file_8__5_), .SE(SE), .CK(clk_m_REF), .RN(n1895), .Q(
        Regfile_u_reg_file_8__6_) );
  SDFFRQX1M Regfile_u_reg_file_reg_8__7_ ( .D(n673), .SI(
        Regfile_u_reg_file_8__6_), .SE(SE), .CK(clk_m_REF), .RN(n1895), .Q(
        Regfile_u_reg_file_8__7_) );
  SDFFRQX1M Regfile_u_reg_file_reg_13__0_ ( .D(n875), .SI(
        Regfile_u_reg_file_12__7_), .SE(n1917), .CK(clk_m_REF), .RN(n1897), 
        .Q(Regfile_u_reg_file_13__0_) );
  SDFFRQX1M Regfile_u_reg_file_reg_13__1_ ( .D(n781), .SI(
        Regfile_u_reg_file_13__0_), .SE(n1929), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_13__1_) );
  SDFFRQX1M Regfile_u_reg_file_reg_13__2_ ( .D(n763), .SI(
        Regfile_u_reg_file_13__1_), .SE(n1921), .CK(clk_m_REF), .RN(n1895), 
        .Q(Regfile_u_reg_file_13__2_) );
  SDFFRQX1M Regfile_u_reg_file_reg_13__3_ ( .D(n746), .SI(
        Regfile_u_reg_file_13__2_), .SE(n1936), .CK(clk_m_REF), .RN(n1895), 
        .Q(Regfile_u_reg_file_13__3_) );
  SDFFRQX1M Regfile_u_reg_file_reg_13__4_ ( .D(n729), .SI(
        Regfile_u_reg_file_13__3_), .SE(n1932), .CK(clk_m_REF), .RN(n1895), 
        .Q(Regfile_u_reg_file_13__4_) );
  SDFFRQX1M Regfile_u_reg_file_reg_13__5_ ( .D(n712), .SI(
        Regfile_u_reg_file_13__4_), .SE(n1927), .CK(clk_m_REF), .RN(n1895), 
        .Q(Regfile_u_reg_file_13__5_) );
  SDFFRQX1M Regfile_u_reg_file_reg_13__6_ ( .D(n695), .SI(
        Regfile_u_reg_file_13__5_), .SE(n1929), .CK(clk_m_REF), .RN(n1895), 
        .Q(Regfile_u_reg_file_13__6_) );
  SDFFRQX1M Regfile_u_reg_file_reg_13__7_ ( .D(n678), .SI(
        Regfile_u_reg_file_13__6_), .SE(n1939), .CK(clk_m_REF), .RN(n1895), 
        .Q(Regfile_u_reg_file_13__7_) );
  SDFFRQX1M Regfile_u_reg_file_reg_12__0_ ( .D(n874), .SI(
        Regfile_u_reg_file_11__7_), .SE(n1933), .CK(clk_m_REF), .RN(ref_rst), 
        .Q(Regfile_u_reg_file_12__0_) );
  SDFFRQX1M Regfile_u_reg_file_reg_12__1_ ( .D(n780), .SI(
        Regfile_u_reg_file_12__0_), .SE(n1927), .CK(clk_m_REF), .RN(ref_rst), 
        .Q(Regfile_u_reg_file_12__1_) );
  SDFFRQX1M Regfile_u_reg_file_reg_12__2_ ( .D(n762), .SI(
        Regfile_u_reg_file_12__1_), .SE(n1928), .CK(clk_m_REF), .RN(ref_rst), 
        .Q(Regfile_u_reg_file_12__2_) );
  SDFFRQX1M Regfile_u_reg_file_reg_12__3_ ( .D(n745), .SI(
        Regfile_u_reg_file_12__2_), .SE(n1928), .CK(clk_m_REF), .RN(ref_rst), 
        .Q(Regfile_u_reg_file_12__3_) );
  SDFFRQX1M Regfile_u_reg_file_reg_12__4_ ( .D(n728), .SI(
        Regfile_u_reg_file_12__3_), .SE(n1925), .CK(clk_m_REF), .RN(ref_rst), 
        .Q(Regfile_u_reg_file_12__4_) );
  SDFFRQX1M Regfile_u_reg_file_reg_12__5_ ( .D(n711), .SI(
        Regfile_u_reg_file_12__4_), .SE(n1921), .CK(clk_m_REF), .RN(ref_rst), 
        .Q(Regfile_u_reg_file_12__5_) );
  SDFFRQX1M Regfile_u_reg_file_reg_12__6_ ( .D(n694), .SI(
        Regfile_u_reg_file_12__5_), .SE(n1928), .CK(clk_m_REF), .RN(n1897), 
        .Q(Regfile_u_reg_file_12__6_) );
  SDFFRQX1M Regfile_u_reg_file_reg_12__7_ ( .D(n677), .SI(
        Regfile_u_reg_file_12__6_), .SE(SE), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_12__7_) );
  SDFFRQX1M Regfile_u_reg_file_reg_11__0_ ( .D(n873), .SI(
        Regfile_u_reg_file_10__7_), .SE(SE), .CK(clk_m_REF), .RN(n1896), .Q(
        Regfile_u_reg_file_11__0_) );
  SDFFRQX1M Regfile_u_reg_file_reg_11__1_ ( .D(n779), .SI(
        Regfile_u_reg_file_11__0_), .SE(SE), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_11__1_) );
  SDFFRQX1M Regfile_u_reg_file_reg_11__2_ ( .D(n761), .SI(
        Regfile_u_reg_file_11__1_), .SE(n1941), .CK(clk_m_REF), .RN(n1895), 
        .Q(Regfile_u_reg_file_11__2_) );
  SDFFRQX1M Regfile_u_reg_file_reg_11__3_ ( .D(n744), .SI(
        Regfile_u_reg_file_11__2_), .SE(n1938), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_11__3_) );
  SDFFRQX1M Regfile_u_reg_file_reg_11__4_ ( .D(n727), .SI(
        Regfile_u_reg_file_11__3_), .SE(n1933), .CK(clk_m_REF), .RN(n1897), 
        .Q(Regfile_u_reg_file_11__4_) );
  SDFFRQX1M Regfile_u_reg_file_reg_11__5_ ( .D(n710), .SI(
        Regfile_u_reg_file_11__4_), .SE(n1943), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_11__5_) );
  SDFFRQX1M Regfile_u_reg_file_reg_11__6_ ( .D(n693), .SI(
        Regfile_u_reg_file_11__5_), .SE(n1925), .CK(clk_m_REF), .RN(ref_rst), 
        .Q(Regfile_u_reg_file_11__6_) );
  SDFFRQX1M Regfile_u_reg_file_reg_11__7_ ( .D(n676), .SI(
        Regfile_u_reg_file_11__6_), .SE(n1938), .CK(clk_m_REF), .RN(ref_rst), 
        .Q(Regfile_u_reg_file_11__7_) );
  SDFFRQX1M Regfile_u_reg_file_reg_10__0_ ( .D(n872), .SI(
        Regfile_u_reg_file_9__7_), .SE(SE), .CK(clk_m_REF), .RN(ref_rst), .Q(
        Regfile_u_reg_file_10__0_) );
  SDFFRQX1M Regfile_u_reg_file_reg_10__1_ ( .D(n778), .SI(
        Regfile_u_reg_file_10__0_), .SE(n1929), .CK(clk_m_REF), .RN(ref_rst), 
        .Q(Regfile_u_reg_file_10__1_) );
  SDFFRQX1M Regfile_u_reg_file_reg_10__2_ ( .D(n760), .SI(
        Regfile_u_reg_file_10__1_), .SE(n1941), .CK(clk_m_REF), .RN(ref_rst), 
        .Q(Regfile_u_reg_file_10__2_) );
  SDFFRQX1M Regfile_u_reg_file_reg_10__3_ ( .D(n743), .SI(
        Regfile_u_reg_file_10__2_), .SE(n1936), .CK(clk_m_REF), .RN(ref_rst), 
        .Q(Regfile_u_reg_file_10__3_) );
  SDFFRQX1M Regfile_u_reg_file_reg_10__4_ ( .D(n726), .SI(
        Regfile_u_reg_file_10__3_), .SE(n1931), .CK(clk_m_REF), .RN(ref_rst), 
        .Q(Regfile_u_reg_file_10__4_) );
  SDFFRQX1M Regfile_u_reg_file_reg_10__5_ ( .D(n709), .SI(
        Regfile_u_reg_file_10__4_), .SE(n1921), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_10__5_) );
  SDFFRQX1M Regfile_u_reg_file_reg_10__6_ ( .D(n692), .SI(
        Regfile_u_reg_file_10__5_), .SE(n1929), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_10__6_) );
  SDFFRQX1M Regfile_u_reg_file_reg_10__7_ ( .D(n675), .SI(
        Regfile_u_reg_file_10__6_), .SE(SE), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_10__7_) );
  SDFFRQX1M Regfile_u_reg_file_reg_15__0_ ( .D(n877), .SI(
        Regfile_u_reg_file_14__7_), .SE(n1917), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_15__0_) );
  SDFFRQX1M Regfile_u_reg_file_reg_15__1_ ( .D(n783), .SI(
        Regfile_u_reg_file_15__0_), .SE(n1921), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_15__1_) );
  SDFFRQX1M Regfile_u_reg_file_reg_15__2_ ( .D(n765), .SI(
        Regfile_u_reg_file_15__1_), .SE(n1943), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_15__2_) );
  SDFFRQX1M Regfile_u_reg_file_reg_15__3_ ( .D(n748), .SI(
        Regfile_u_reg_file_15__2_), .SE(n1939), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_15__3_) );
  SDFFRQX1M Regfile_u_reg_file_reg_15__4_ ( .D(n731), .SI(
        Regfile_u_reg_file_15__3_), .SE(n1917), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_15__4_) );
  SDFFRQX1M Regfile_u_reg_file_reg_15__5_ ( .D(n714), .SI(
        Regfile_u_reg_file_15__4_), .SE(n1941), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_15__5_) );
  SDFFRQX1M Regfile_u_reg_file_reg_15__6_ ( .D(n697), .SI(
        Regfile_u_reg_file_15__5_), .SE(n1943), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_15__6_) );
  SDFFRQX1M Regfile_u_reg_file_reg_15__7_ ( .D(n680), .SI(
        Regfile_u_reg_file_15__6_), .SE(n1936), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_15__7_) );
  SDFFRQX1M Regfile_u_reg_file_reg_14__0_ ( .D(n876), .SI(
        Regfile_u_reg_file_13__7_), .SE(n1931), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_14__0_) );
  SDFFRQX1M Regfile_u_reg_file_reg_14__1_ ( .D(n782), .SI(
        Regfile_u_reg_file_14__0_), .SE(n1925), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_14__1_) );
  SDFFRQX1M Regfile_u_reg_file_reg_14__2_ ( .D(n764), .SI(
        Regfile_u_reg_file_14__1_), .SE(n1921), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_14__2_) );
  SDFFRQX1M Regfile_u_reg_file_reg_14__3_ ( .D(n747), .SI(
        Regfile_u_reg_file_14__2_), .SE(n1938), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_14__3_) );
  SDFFRQX1M Regfile_u_reg_file_reg_14__4_ ( .D(n730), .SI(
        Regfile_u_reg_file_14__3_), .SE(n1932), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_14__4_) );
  SDFFRQX1M Regfile_u_reg_file_reg_14__5_ ( .D(n713), .SI(
        Regfile_u_reg_file_14__4_), .SE(n1922), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_14__5_) );
  SDFFRQX1M Regfile_u_reg_file_reg_14__6_ ( .D(n696), .SI(
        Regfile_u_reg_file_14__5_), .SE(SE), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_14__6_) );
  SDFFRQX1M Regfile_u_reg_file_reg_14__7_ ( .D(n679), .SI(
        Regfile_u_reg_file_14__6_), .SE(SE), .CK(clk_m_REF), .RN(n886), .Q(
        Regfile_u_reg_file_14__7_) );
  SDFFRQX1M Regfile_u_RdData_reg_0_ ( .D(n784), .SI(rd_data_vld), .SE(SE), 
        .CK(clk_m_REF), .RN(ref_rst), .Q(rd_data[0]) );
  SDFFRQX1M Regfile_u_RdData_reg_1_ ( .D(n766), .SI(rd_data[0]), .SE(n1929), 
        .CK(clk_m_REF), .RN(ref_rst), .Q(rd_data[1]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_1_ ( .D(ALU_u_ALU_OUT_Comb[1]), .SI(alu_out[0]), 
        .SE(n1942), .CK(alu_cg), .RN(n1896), .Q(alu_out[1]) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_1_ ( .D(n787), .SI(
        UART_TX_RX_U0_UART_TX_U1_mem[0]), .SE(n1936), .CK(tx_clk), .RN(tx_rst), 
        .Q(UART_TX_RX_U0_UART_TX_U1_mem[1]) );
  SDFFRQX1M Regfile_u_RdData_reg_2_ ( .D(n749), .SI(rd_data[1]), .SE(n1931), 
        .CK(clk_m_REF), .RN(ref_rst), .Q(rd_data[2]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_2_ ( .D(ALU_u_ALU_OUT_Comb[2]), .SI(alu_out[1]), 
        .SE(n1941), .CK(alu_cg), .RN(ref_rst), .Q(alu_out[2]) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_2_ ( .D(n789), .SI(
        UART_TX_RX_U0_UART_TX_U1_mem[1]), .SE(n1929), .CK(tx_clk), .RN(tx_rst), 
        .Q(UART_TX_RX_U0_UART_TX_U1_mem[2]) );
  SDFFRQX1M Regfile_u_RdData_reg_3_ ( .D(n732), .SI(rd_data[2]), .SE(n1938), 
        .CK(clk_m_REF), .RN(ref_rst), .Q(rd_data[3]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_3_ ( .D(ALU_u_ALU_OUT_Comb[3]), .SI(alu_out[2]), 
        .SE(n1932), .CK(alu_cg), .RN(ref_rst), .Q(alu_out[3]) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_3_ ( .D(n791), .SI(
        UART_TX_RX_U0_UART_TX_U1_mem[2]), .SE(n1941), .CK(tx_clk), .RN(tx_rst), 
        .Q(UART_TX_RX_U0_UART_TX_U1_mem[3]) );
  SDFFRQX1M Regfile_u_RdData_reg_4_ ( .D(n715), .SI(rd_data[3]), .SE(n1922), 
        .CK(clk_m_REF), .RN(ref_rst), .Q(rd_data[4]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_4_ ( .D(ALU_u_ALU_OUT_Comb[4]), .SI(alu_out[3]), 
        .SE(n1939), .CK(alu_cg), .RN(ref_rst), .Q(alu_out[4]) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_4_ ( .D(n793), .SI(
        UART_TX_RX_U0_UART_TX_U1_mem[3]), .SE(n1933), .CK(tx_clk), .RN(tx_rst), 
        .Q(UART_TX_RX_U0_UART_TX_U1_mem[4]) );
  SDFFRQX1M Regfile_u_RdData_reg_5_ ( .D(n698), .SI(rd_data[4]), .SE(n1942), 
        .CK(clk_m_REF), .RN(ref_rst), .Q(rd_data[5]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_5_ ( .D(ALU_u_ALU_OUT_Comb[5]), .SI(alu_out[4]), 
        .SE(n1922), .CK(alu_cg), .RN(ref_rst), .Q(alu_out[5]) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_5_ ( .D(n795), .SI(
        UART_TX_RX_U0_UART_TX_U1_mem[4]), .SE(SE), .CK(tx_clk), .RN(tx_rst), 
        .Q(UART_TX_RX_U0_UART_TX_U1_mem[5]) );
  SDFFRQX1M Regfile_u_RdData_reg_6_ ( .D(n681), .SI(rd_data[5]), .SE(n1917), 
        .CK(clk_m_REF), .RN(ref_rst), .Q(rd_data[6]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_6_ ( .D(ALU_u_ALU_OUT_Comb[6]), .SI(alu_out[5]), 
        .SE(SE), .CK(alu_cg), .RN(ref_rst), .Q(alu_out[6]) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_6_ ( .D(n797), .SI(
        UART_TX_RX_U0_UART_TX_U1_mem[5]), .SE(n1927), .CK(tx_clk), .RN(tx_rst), 
        .Q(UART_TX_RX_U0_UART_TX_U1_mem[6]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_7_ ( .D(ALU_u_ALU_OUT_Comb[7]), .SI(alu_out[6]), 
        .SE(n1936), .CK(alu_cg), .RN(ref_rst), .Q(alu_out[7]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_8_ ( .D(ALU_u_ALU_OUT_Comb[8]), .SI(alu_out[7]), 
        .SE(n1932), .CK(alu_cg), .RN(n886), .Q(alu_out[8]) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_0_ ( .D(n801), .SI(
        UART_TX_RX_U0_UART_TX_U1_loading), .SE(n1927), .CK(tx_clk), .RN(tx_rst), .Q(UART_TX_RX_U0_UART_TX_U1_mem[0]) );
  SDFFRQX1M Regfile_u_RdData_reg_7_ ( .D(n645), .SI(rd_data[6]), .SE(n1925), 
        .CK(clk_m_REF), .RN(n886), .Q(rd_data[7]) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_mem_reg_7_ ( .D(n799), .SI(
        UART_TX_RX_U0_UART_TX_U1_mem[6]), .SE(n1939), .CK(tx_clk), .RN(tx_rst), 
        .Q(UART_TX_RX_U0_UART_TX_U1_mem[7]) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U1_ser_data_reg ( .D(n883), .SI(
        UART_TX_RX_U0_UART_TX_U1_mem[7]), .SE(n1933), .CK(tx_clk), .RN(tx_rst), 
        .Q(UART_TX_RX_U0_UART_TX_ser_data) );
  SDFFRQX1M UART_TX_RX_U0_UART_TX_U3_par_bit_reg ( .D(n769), .SI(n1903), .SE(
        n1929), .CK(tx_clk), .RN(tx_rst), .Q(UART_TX_RX_U0_UART_TX_par_bit) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_7_ ( .D(n643), .SI(rx_p_out[6]), .SE(n1928), .CK(rx_clk), .RN(rx_rst), .Q(rx_p_out[7]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_6_ ( .D(n642), .SI(rx_p_out[5]), .SE(n1941), .CK(rx_clk), .RN(rx_rst), .Q(rx_p_out[6]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_5_ ( .D(n641), .SI(rx_p_out[4]), .SE(SE), .CK(rx_clk), .RN(rx_rst), .Q(rx_p_out[5]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_4_ ( .D(n640), .SI(rx_p_out[3]), .SE(n1942), .CK(rx_clk), .RN(rx_rst), .Q(rx_p_out[4]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_3_ ( .D(n639), .SI(rx_p_out[2]), .SE(n1929), .CK(rx_clk), .RN(rx_rst), .Q(rx_p_out[3]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_2_ ( .D(n638), .SI(rx_p_out[1]), .SE(SE), .CK(rx_clk), .RN(rx_rst), .Q(rx_p_out[2]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_1_ ( .D(n637), .SI(rx_p_out[0]), .SE(n1917), .CK(rx_clk), .RN(rx_rst), .Q(rx_p_out[1]) );
  SDFFRQX1M UART_TX_RX_U0_UART_RX_U3_P_DATA_reg_0_ ( .D(n636), .SI(
        UART_TX_RX_U0_UART_RX_U2_s1), .SE(n1942), .CK(rx_clk), .RN(rx_rst), 
        .Q(rx_p_out[0]) );
  SDFFRQX1M Rx2SysCtrl_sync_bus_reg_0_ ( .D(n635), .SI(test_si4), .SE(n1927), 
        .CK(clk_m_REF), .RN(n886), .Q(synced_p_data[0]) );
  SDFFRQX1M Rx2SysCtrl_sync_bus_reg_7_ ( .D(n634), .SI(synced_p_data[6]), .SE(
        n1938), .CK(clk_m_REF), .RN(n886), .Q(synced_p_data[7]) );
  SDFFRQX1M Rx2SysCtrl_sync_bus_reg_1_ ( .D(n633), .SI(synced_p_data[0]), .SE(
        n1933), .CK(clk_m_REF), .RN(n886), .Q(synced_p_data[1]) );
  SDFFRQX1M Rx2SysCtrl_sync_bus_reg_2_ ( .D(n632), .SI(synced_p_data[1]), .SE(
        n1928), .CK(clk_m_REF), .RN(n886), .Q(synced_p_data[2]) );
  SDFFRQX1M Rx2SysCtrl_sync_bus_reg_3_ ( .D(n631), .SI(synced_p_data[2]), .SE(
        n1927), .CK(clk_m_REF), .RN(n886), .Q(synced_p_data[3]) );
  SDFFRQX1M Rx2SysCtrl_sync_bus_reg_4_ ( .D(n630), .SI(synced_p_data[3]), .SE(
        n1942), .CK(clk_m_REF), .RN(n886), .Q(synced_p_data[4]) );
  SDFFRQX1M Rx2SysCtrl_sync_bus_reg_5_ ( .D(n629), .SI(synced_p_data[4]), .SE(
        SE), .CK(clk_m_REF), .RN(n886), .Q(synced_p_data[5]) );
  SDFFRQX1M Rx2SysCtrl_sync_bus_reg_6_ ( .D(n628), .SI(synced_p_data[5]), .SE(
        n1925), .CK(clk_m_REF), .RN(n886), .Q(synced_p_data[6]) );
  SDFFRQX1M sys_ctrl_u_wr_addr_reg_0_ ( .D(n627), .SI(sys_ctrl_u_reg3_cfg), 
        .SE(n1921), .CK(clk_m_REF), .RN(n886), .Q(sys_ctrl_u_wr_addr[0]) );
  SDFFRQX1M sys_ctrl_u_wr_addr_reg_3_ ( .D(n626), .SI(sys_ctrl_u_wr_addr[2]), 
        .SE(n1939), .CK(clk_m_REF), .RN(n886), .Q(sys_ctrl_u_wr_addr[3]) );
  SDFFRQX1M sys_ctrl_u_wr_addr_reg_2_ ( .D(n625), .SI(sys_ctrl_u_wr_addr[1]), 
        .SE(n1931), .CK(clk_m_REF), .RN(n886), .Q(sys_ctrl_u_wr_addr[2]) );
  SDFFRQX1M sys_ctrl_u_wr_addr_reg_1_ ( .D(n624), .SI(sys_ctrl_u_wr_addr[0]), 
        .SE(n1921), .CK(clk_m_REF), .RN(n886), .Q(sys_ctrl_u_wr_addr[1]) );
  SDFFRQX1M sys_ctrl_u_frame2_reg_1_ ( .D(n623), .SI(sys_ctrl_u_frame2[0]), 
        .SE(SE), .CK(clk_m_REF), .RN(n886), .Q(sys_ctrl_u_frame2[1]) );
  SDFFRQX1M sys_ctrl_u_frame2_reg_2_ ( .D(n622), .SI(sys_ctrl_u_frame2[1]), 
        .SE(n1917), .CK(clk_m_REF), .RN(n886), .Q(sys_ctrl_u_frame2[2]) );
  SDFFRQX1M sys_ctrl_u_frame2_reg_3_ ( .D(n621), .SI(sys_ctrl_u_frame2[2]), 
        .SE(n1917), .CK(clk_m_REF), .RN(n886), .Q(sys_ctrl_u_frame2[3]) );
  SDFFRQX1M sys_ctrl_u_frame2_reg_4_ ( .D(n620), .SI(sys_ctrl_u_frame2[3]), 
        .SE(n1929), .CK(clk_m_REF), .RN(n886), .Q(sys_ctrl_u_frame2[4]) );
  SDFFRQX1M sys_ctrl_u_frame2_reg_5_ ( .D(n619), .SI(sys_ctrl_u_frame2[4]), 
        .SE(n1943), .CK(clk_m_REF), .RN(n886), .Q(sys_ctrl_u_frame2[5]) );
  SDFFRQX1M sys_ctrl_u_frame2_reg_6_ ( .D(n618), .SI(sys_ctrl_u_frame2[5]), 
        .SE(n1939), .CK(clk_m_REF), .RN(n886), .Q(sys_ctrl_u_frame2[6]) );
  SDFFRQX1M sys_ctrl_u_frame2_reg_7_ ( .D(n617), .SI(sys_ctrl_u_frame2[6]), 
        .SE(SE), .CK(clk_m_REF), .RN(n886), .Q(sys_ctrl_u_frame2[7]) );
  SDFFRQX1M sys_ctrl_u_frame2_reg_0_ ( .D(n616), .SI(
        sys_ctrl_u_current_state[3]), .SE(n1928), .CK(clk_m_REF), .RN(n1896), 
        .Q(sys_ctrl_u_frame2[0]) );
  SDFFQX1M FIFO_u_U1_mem_reg_7__1_ ( .D(n851), .SI(FIFO_u_U1_mem[0]), .SE(
        n1931), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[1]) );
  SDFFQX1M FIFO_u_U1_mem_reg_6__1_ ( .D(n843), .SI(FIFO_u_U1_mem[8]), .SE(
        n1929), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[9]) );
  SDFFQX1M FIFO_u_U1_mem_reg_5__1_ ( .D(n835), .SI(SI[1]), .SE(n1942), .CK(
        clk_m_REF), .Q(FIFO_u_U1_mem[17]) );
  SDFFQX1M FIFO_u_U1_mem_reg_4__1_ ( .D(n827), .SI(FIFO_u_U1_mem[24]), .SE(
        n1932), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[25]) );
  SDFFQX1M FIFO_u_U1_mem_reg_3__1_ ( .D(n819), .SI(FIFO_u_U1_mem[32]), .SE(
        n1938), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[33]) );
  SDFFQX1M FIFO_u_U1_mem_reg_2__1_ ( .D(n811), .SI(FIFO_u_U1_mem[40]), .SE(
        n1921), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[41]) );
  SDFFQX1M FIFO_u_U1_mem_reg_1__1_ ( .D(n803), .SI(FIFO_u_U1_mem[48]), .SE(
        n1922), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[49]) );
  SDFFQX1M FIFO_u_U1_mem_reg_0__1_ ( .D(n788), .SI(FIFO_u_U1_mem[56]), .SE(
        n1933), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[57]) );
  SDFFQX1M FIFO_u_U1_mem_reg_7__2_ ( .D(n852), .SI(FIFO_u_U1_mem[1]), .SE(
        n1938), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[2]) );
  SDFFQX1M FIFO_u_U1_mem_reg_6__2_ ( .D(n844), .SI(FIFO_u_U1_mem[9]), .SE(SE), 
        .CK(clk_m_REF), .Q(FIFO_u_U1_mem[10]) );
  SDFFQX1M FIFO_u_U1_mem_reg_5__2_ ( .D(n836), .SI(FIFO_u_U1_mem[17]), .SE(
        n1922), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[18]) );
  SDFFQX1M FIFO_u_U1_mem_reg_4__2_ ( .D(n828), .SI(FIFO_u_U1_mem[25]), .SE(
        n1917), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[26]) );
  SDFFQX1M FIFO_u_U1_mem_reg_3__2_ ( .D(n820), .SI(FIFO_u_U1_mem[33]), .SE(
        n1936), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[34]) );
  SDFFQX1M FIFO_u_U1_mem_reg_2__2_ ( .D(n812), .SI(FIFO_u_U1_mem[41]), .SE(
        n1943), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[42]) );
  SDFFQX1M FIFO_u_U1_mem_reg_1__2_ ( .D(n804), .SI(FIFO_u_U1_mem[49]), .SE(
        n1929), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[50]) );
  SDFFQX1M FIFO_u_U1_mem_reg_0__2_ ( .D(n790), .SI(FIFO_u_U1_mem[57]), .SE(
        n1932), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[58]) );
  SDFFQX1M FIFO_u_U1_mem_reg_7__3_ ( .D(n853), .SI(FIFO_u_U1_mem[2]), .SE(SE), 
        .CK(clk_m_REF), .Q(FIFO_u_U1_mem[3]) );
  SDFFQX1M FIFO_u_U1_mem_reg_6__3_ ( .D(n845), .SI(FIFO_u_U1_mem[10]), .SE(
        n1927), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[11]) );
  SDFFQX1M FIFO_u_U1_mem_reg_5__3_ ( .D(n837), .SI(FIFO_u_U1_mem[18]), .SE(
        n1941), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[19]) );
  SDFFQX1M FIFO_u_U1_mem_reg_4__3_ ( .D(n829), .SI(FIFO_u_U1_mem[26]), .SE(
        n1933), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[27]) );
  SDFFQX1M FIFO_u_U1_mem_reg_3__3_ ( .D(n821), .SI(FIFO_u_U1_mem[34]), .SE(
        n1939), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[35]) );
  SDFFQX1M FIFO_u_U1_mem_reg_2__3_ ( .D(n813), .SI(FIFO_u_U1_mem[42]), .SE(
        n1928), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[43]) );
  SDFFQX1M FIFO_u_U1_mem_reg_1__3_ ( .D(n805), .SI(FIFO_u_U1_mem[50]), .SE(SE), 
        .CK(clk_m_REF), .Q(FIFO_u_U1_mem[51]) );
  SDFFQX1M FIFO_u_U1_mem_reg_0__3_ ( .D(n792), .SI(FIFO_u_U1_mem[58]), .SE(SE), 
        .CK(clk_m_REF), .Q(FIFO_u_U1_mem[59]) );
  SDFFQX1M FIFO_u_U1_mem_reg_7__4_ ( .D(n854), .SI(FIFO_u_U1_mem[3]), .SE(
        n1939), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[4]) );
  SDFFQX1M FIFO_u_U1_mem_reg_6__4_ ( .D(n846), .SI(FIFO_u_U1_mem[11]), .SE(
        n1929), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[12]) );
  SDFFQX1M FIFO_u_U1_mem_reg_5__4_ ( .D(n838), .SI(FIFO_u_U1_mem[19]), .SE(
        n1928), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[20]) );
  SDFFQX1M FIFO_u_U1_mem_reg_4__4_ ( .D(n830), .SI(FIFO_u_U1_mem[27]), .SE(
        n1925), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[28]) );
  SDFFQX1M FIFO_u_U1_mem_reg_3__4_ ( .D(n822), .SI(FIFO_u_U1_mem[35]), .SE(
        n1938), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[36]) );
  SDFFQX1M FIFO_u_U1_mem_reg_2__4_ ( .D(n814), .SI(FIFO_u_U1_mem[43]), .SE(
        n1922), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[44]) );
  SDFFQX1M FIFO_u_U1_mem_reg_1__4_ ( .D(n806), .SI(FIFO_u_U1_mem[51]), .SE(
        n1943), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[52]) );
  SDFFQX1M FIFO_u_U1_mem_reg_0__4_ ( .D(n794), .SI(FIFO_u_U1_mem[59]), .SE(
        n1933), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[60]) );
  SDFFQX1M FIFO_u_U1_mem_reg_7__5_ ( .D(n855), .SI(FIFO_u_U1_mem[4]), .SE(
        n1922), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[5]) );
  SDFFQX1M FIFO_u_U1_mem_reg_6__5_ ( .D(n847), .SI(FIFO_u_U1_mem[12]), .SE(
        n1929), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[13]) );
  SDFFQX1M FIFO_u_U1_mem_reg_5__5_ ( .D(n839), .SI(FIFO_u_U1_mem[20]), .SE(
        n1921), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[21]) );
  SDFFQX1M FIFO_u_U1_mem_reg_4__5_ ( .D(n831), .SI(FIFO_u_U1_mem[28]), .SE(SE), 
        .CK(clk_m_REF), .Q(FIFO_u_U1_mem[29]) );
  SDFFQX1M FIFO_u_U1_mem_reg_3__5_ ( .D(n823), .SI(FIFO_u_U1_mem[36]), .SE(
        n1925), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[37]) );
  SDFFQX1M FIFO_u_U1_mem_reg_2__5_ ( .D(n815), .SI(FIFO_u_U1_mem[44]), .SE(
        n1941), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[45]) );
  SDFFQX1M FIFO_u_U1_mem_reg_1__5_ ( .D(n807), .SI(FIFO_u_U1_mem[52]), .SE(
        n1929), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[53]) );
  SDFFQX1M FIFO_u_U1_mem_reg_0__5_ ( .D(n796), .SI(FIFO_u_U1_mem[60]), .SE(
        n1931), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[61]) );
  SDFFQX1M FIFO_u_U1_mem_reg_7__6_ ( .D(n856), .SI(FIFO_u_U1_mem[5]), .SE(
        n1917), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[6]) );
  SDFFQX1M FIFO_u_U1_mem_reg_6__6_ ( .D(n848), .SI(FIFO_u_U1_mem[13]), .SE(
        n1921), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[14]) );
  SDFFQX1M FIFO_u_U1_mem_reg_5__6_ ( .D(n840), .SI(FIFO_u_U1_mem[21]), .SE(
        n1942), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[22]) );
  SDFFQX1M FIFO_u_U1_mem_reg_4__6_ ( .D(n832), .SI(FIFO_u_U1_mem[29]), .SE(
        n1917), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[30]) );
  SDFFQX1M FIFO_u_U1_mem_reg_3__6_ ( .D(n824), .SI(FIFO_u_U1_mem[37]), .SE(
        n1939), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[38]) );
  SDFFQX1M FIFO_u_U1_mem_reg_2__6_ ( .D(n816), .SI(FIFO_u_U1_mem[45]), .SE(
        n1927), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[46]) );
  SDFFQX1M FIFO_u_U1_mem_reg_1__6_ ( .D(n808), .SI(FIFO_u_U1_mem[53]), .SE(
        n1927), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[54]) );
  SDFFQX1M FIFO_u_U1_mem_reg_0__6_ ( .D(n798), .SI(FIFO_u_U1_mem[61]), .SE(SE), 
        .CK(clk_m_REF), .Q(FIFO_u_U1_mem[62]) );
  SDFFQX1M FIFO_u_U1_mem_reg_7__0_ ( .D(n858), .SI(FIFO_u_U1_mem[15]), .SE(
        n1925), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[0]) );
  SDFFQX1M FIFO_u_U1_mem_reg_6__0_ ( .D(n850), .SI(FIFO_u_U1_mem[23]), .SE(
        n1929), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[8]) );
  SDFFQX1M FIFO_u_U1_mem_reg_5__0_ ( .D(n842), .SI(FIFO_u_U1_mem[31]), .SE(
        n1941), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[16]) );
  SDFFQX1M FIFO_u_U1_mem_reg_4__0_ ( .D(n834), .SI(FIFO_u_U1_mem[39]), .SE(
        n1931), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[24]) );
  SDFFQX1M FIFO_u_U1_mem_reg_3__0_ ( .D(n826), .SI(FIFO_u_U1_mem[47]), .SE(
        n1936), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[32]) );
  SDFFQX1M FIFO_u_U1_mem_reg_2__0_ ( .D(n818), .SI(FIFO_u_U1_mem[55]), .SE(
        n1943), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[40]) );
  SDFFQX1M FIFO_u_U1_mem_reg_1__0_ ( .D(n810), .SI(FIFO_u_U1_mem[63]), .SE(
        n1942), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[48]) );
  SDFFQX1M FIFO_u_U1_mem_reg_0__0_ ( .D(n802), .SI(alu_out_v), .SE(n1932), 
        .CK(clk_m_REF), .Q(FIFO_u_U1_mem[56]) );
  SDFFQX1M FIFO_u_U1_mem_reg_7__7_ ( .D(n857), .SI(FIFO_u_U1_mem[6]), .SE(
        n1936), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[7]) );
  SDFFQX1M FIFO_u_U1_mem_reg_6__7_ ( .D(n849), .SI(FIFO_u_U1_mem[14]), .SE(
        n1929), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[15]) );
  SDFFQX1M FIFO_u_U1_mem_reg_5__7_ ( .D(n841), .SI(FIFO_u_U1_mem[22]), .SE(
        n1929), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[23]) );
  SDFFQX1M FIFO_u_U1_mem_reg_4__7_ ( .D(n833), .SI(FIFO_u_U1_mem[30]), .SE(SE), 
        .CK(clk_m_REF), .Q(FIFO_u_U1_mem[31]) );
  SDFFQX1M FIFO_u_U1_mem_reg_3__7_ ( .D(n825), .SI(FIFO_u_U1_mem[38]), .SE(SE), 
        .CK(clk_m_REF), .Q(FIFO_u_U1_mem[39]) );
  SDFFQX1M FIFO_u_U1_mem_reg_2__7_ ( .D(n817), .SI(FIFO_u_U1_mem[46]), .SE(
        n1928), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[47]) );
  SDFFQX1M FIFO_u_U1_mem_reg_1__7_ ( .D(n809), .SI(FIFO_u_U1_mem[54]), .SE(
        n1931), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[55]) );
  SDFFQX1M FIFO_u_U1_mem_reg_0__7_ ( .D(n800), .SI(FIFO_u_U1_mem[62]), .SE(
        n1932), .CK(clk_m_REF), .Q(FIFO_u_U1_mem[63]) );
  SDFFRQX1M Regfile_u_reg_file_reg_1__1_ ( .D(n768), .SI(reg1[0]), .SE(n1929), 
        .CK(clk_m_REF), .RN(n1897), .Q(reg1[1]) );
  SDFFRQX1M Regfile_u_reg_file_reg_1__3_ ( .D(n734), .SI(reg1[2]), .SE(n1936), 
        .CK(clk_m_REF), .RN(n1897), .Q(reg1[3]) );
  SDFFRHQX1M Regfile_u_reg_file_reg_1__5_ ( .D(n700), .SI(reg1[4]), .SE(n1929), 
        .CK(clk_m_REF), .RN(n1897), .Q(reg1[5]) );
  SDFFRQX1M Regfile_u_reg_file_reg_0__0_ ( .D(n785), .SI(rd_data[7]), .SE(
        n1931), .CK(clk_m_REF), .RN(n886), .Q(reg0[0]) );
  SDFFRQX1M Regfile_u_reg_file_reg_0__1_ ( .D(n767), .SI(reg0[0]), .SE(n1928), 
        .CK(clk_m_REF), .RN(ref_rst), .Q(reg0[1]) );
  SDFFRQX1M Regfile_u_reg_file_reg_0__2_ ( .D(n750), .SI(reg0[1]), .SE(n1921), 
        .CK(clk_m_REF), .RN(ref_rst), .Q(reg0[2]) );
  SDFFRQX1M Regfile_u_reg_file_reg_0__3_ ( .D(n733), .SI(reg0[2]), .SE(n1936), 
        .CK(clk_m_REF), .RN(n886), .Q(reg0[3]) );
  SDFFRQX1M Regfile_u_reg_file_reg_0__4_ ( .D(n716), .SI(reg0[3]), .SE(n1932), 
        .CK(clk_m_REF), .RN(ref_rst), .Q(reg0[4]) );
  SDFFRQX1M Regfile_u_reg_file_reg_0__5_ ( .D(n699), .SI(reg0[4]), .SE(n1943), 
        .CK(clk_m_REF), .RN(n886), .Q(reg0[5]) );
  SDFFRQX1M Regfile_u_reg_file_reg_0__6_ ( .D(n682), .SI(reg0[5]), .SE(n1921), 
        .CK(clk_m_REF), .RN(n886), .Q(reg0[6]) );
  SDFFRX1M UART_TX_RX_U0_UART_TX_U2_current_state_reg_1_ ( .D(
        UART_TX_RX_U0_UART_TX_U2_next_state[1]), .SI(n1900), .SE(n1932), .CK(
        tx_clk), .RN(tx_rst), .Q(UART_TX_RX_U0_UART_TX_U2_current_state[1]), 
        .QN(n1901) );
  SDFFRX1M UART_TX_RX_U0_UART_TX_U2_current_state_reg_0_ ( .D(
        UART_TX_RX_U0_UART_TX_U2_next_state[0]), .SI(
        UART_TX_RX_U0_UART_TX_ser_done), .SE(SE), .CK(tx_clk), .RN(tx_rst), 
        .Q(UART_TX_RX_U0_UART_TX_U2_current_state[0]), .QN(n1900) );
  SDFFRX1M UART_TX_RX_U0_UART_TX_U2_current_state_reg_2_ ( .D(
        UART_TX_RX_U0_UART_TX_U2_next_state[2]), .SI(n1901), .SE(n1922), .CK(
        tx_clk), .RN(tx_rst), .Q(UART_TX_RX_U0_UART_TX_U2_current_state[2]), 
        .QN(n1903) );
  DFFRQX1M RF1_n_synch_reg_2_ ( .D(RF1_n_synch[1]), .CK(clk_m_REF), .RN(rst_m), 
        .Q(ref_func_rst) );
  SDFFRQX1M Regfile_u_reg_file_reg_1__2_ ( .D(n751), .SI(reg1[1]), .SE(n1938), 
        .CK(clk_m_REF), .RN(n1897), .Q(reg1[2]) );
  SDFFRQX1M Regfile_u_reg_file_reg_1__4_ ( .D(n717), .SI(reg1[3]), .SE(n1932), 
        .CK(clk_m_REF), .RN(n1897), .Q(reg1[4]) );
  SDFFRQX1M Regfile_u_reg_file_reg_1__6_ ( .D(n683), .SI(reg1[5]), .SE(SE), 
        .CK(clk_m_REF), .RN(n886), .Q(reg1[6]) );
  MX2XLM U952 ( .A(RST_N), .B(scan_rst), .S0(test_mode), .Y(rst_m) );
  MX2XLM U947 ( .A(UART_CLK), .B(scan_clk), .S0(test_mode), .Y(clk_m_UART) );
  CLKMX2X2M U948 ( .A(ref_func_rst), .B(scan_rst), .S0(test_mode), .Y(ref_rst)
         );
  DFFRQX1M UART_TX_RX_U0_UART_RX_U7_sample_valid_d_reg ( .D(
        UART_TX_RX_U0_UART_RX_samp_valid), .CK(rx_clk), .RN(rx_rst), .Q(
        UART_TX_RX_U0_UART_RX_U7_sample_valid_d) );
  DFFRQX1M FIFO_u_U2_WRptr_sync_s1_reg_0_ ( .D(FIFO_u_U2_WRptr_sync_s0[0]), 
        .CK(tx_clk), .RN(tx_rst), .Q(FIFO_u_w_ptr_synch[0]) );
  DFFRQX1M FIFO_u_U2_WRptr_sync_s1_reg_2_ ( .D(FIFO_u_U2_WRptr_sync_s0[2]), 
        .CK(tx_clk), .RN(tx_rst), .Q(FIFO_u_w_ptr_synch[2]) );
  DFFRQX1M FIFO_u_U2_WRptr_sync_s1_reg_1_ ( .D(FIFO_u_U2_WRptr_sync_s0[1]), 
        .CK(tx_clk), .RN(tx_rst), .Q(FIFO_u_w_ptr_synch[1]) );
  DFFRQX1M FIFO_u_U2_WRptr_sync_s1_reg_3_ ( .D(FIFO_u_U2_WRptr_sync_s0[3]), 
        .CK(tx_clk), .RN(tx_rst), .Q(FIFO_u_w_ptr_synch[3]) );
  DFFRQX1M FIFO_u_U3_RDptr_sync_s1_reg_3_ ( .D(FIFO_u_U3_RDptr_sync_s0[3]), 
        .CK(clk_m_REF), .RN(n1895), .Q(FIFO_u_r_ptr_synch[3]) );
  DFFRQX1M FIFO_u_U3_RDptr_sync_s1_reg_2_ ( .D(FIFO_u_U3_RDptr_sync_s0[2]), 
        .CK(clk_m_REF), .RN(n1895), .Q(FIFO_u_r_ptr_synch[2]) );
  DFFRQX1M FIFO_u_U3_RDptr_sync_s1_reg_1_ ( .D(FIFO_u_U3_RDptr_sync_s0[1]), 
        .CK(clk_m_REF), .RN(n1895), .Q(FIFO_u_r_ptr_synch[1]) );
  DFFRQX1M FIFO_u_U3_RDptr_sync_s1_reg_0_ ( .D(FIFO_u_U3_RDptr_sync_s0[0]), 
        .CK(clk_m_REF), .RN(n1895), .Q(FIFO_u_r_ptr_synch[0]) );
  DFFRQX1M Pulse_U_pls_flop_reg ( .D(Pulse_U_rcv_flop), .CK(tx_clk), .RN(
        tx_rst), .Q(Pulse_U_pls_flop) );
  DFFRQX1M Rx2SysCtrl_SYNC_reg_1_ ( .D(Rx2SysCtrl_SYNC[0]), .CK(clk_m_REF), 
        .RN(n1895), .Q(Rx2SysCtrl_SYNC[1]) );
  DFFRQX1M Rx2SysCtrl_SYNC_reg_2_ ( .D(Rx2SysCtrl_SYNC[1]), .CK(clk_m_REF), 
        .RN(n1895), .Q(Rx2SysCtrl_SYNC[2]) );
  DFFRQX1M Rx2SysCtrl_SYNC_reg_3_ ( .D(Rx2SysCtrl_SYNC[2]), .CK(clk_m_REF), 
        .RN(n1895), .Q(Rx2SysCtrl_SYNC[3]) );
  DFFRQX1M Rx2SysCtrl_pulse_out_reg ( .D(Rx2SysCtrl_SYNC[3]), .CK(clk_m_REF), 
        .RN(n1895), .Q(Rx2SysCtrl_pulse_out) );
  DFFRQX1M tx_rst_sync_n_synch_reg_2_ ( .D(tx_rst_sync_n_synch[1]), .CK(tx_clk), .RN(uart_rst), .Q(tx_func_rst) );
  DFFRQX1M rx_rst_sync_n_synch_reg_2_ ( .D(rx_rst_sync_n_synch[1]), .CK(rx_clk), .RN(uart_rst), .Q(rx_func_rst) );
  SDFFRQX1M Regfile_u_reg_file_reg_0__7_ ( .D(n646), .SI(reg0[6]), .SE(n1922), 
        .CK(clk_m_REF), .RN(n886), .Q(reg0[7]) );
  SDFFRQX1M ALU_u_ALU_OUT_reg_0_ ( .D(ALU_u_ALU_OUT_Comb[0]), .SI(SI[2]), .SE(
        n1938), .CK(alu_cg), .RN(n1895), .Q(alu_out[0]) );
  SDFFRQX1M Regfile_u_reg_file_reg_1__7_ ( .D(n647), .SI(reg1[6]), .SE(n1933), 
        .CK(clk_m_REF), .RN(n1896), .Q(reg1[7]) );
  CLKMX2X3M U951 ( .A(rx_func_rst), .B(scan_rst), .S0(test_mode), .Y(rx_rst)
         );
  CLKMX2X3M U950 ( .A(tx_func_rst), .B(scan_rst), .S0(test_mode), .Y(tx_rst)
         );
  NOR2XLM U955 ( .A(n1628), .B(n1627), .Y(n1631) );
  OAI2BB1X2M U956 ( .A0N(reg1[2]), .A1N(n1390), .B0(n1388), .Y(n1298) );
  NAND2XLM U957 ( .A(n1587), .B(n1577), .Y(n1597) );
  NAND4XLM U959 ( .A(n1410), .B(n1642), .C(n1632), .D(n1448), .Y(n1411) );
  NOR2XLM U960 ( .A(n1176), .B(n1154), .Y(DP_OP_196J1_124_5161_n43) );
  NOR2XLM U962 ( .A(n1871), .B(fifo_full), .Y(n910) );
  NAND2XLM U963 ( .A(alu_out_v), .B(n918), .Y(n1871) );
  NAND2XLM U964 ( .A(synced_p_data[3]), .B(SO[0]), .Y(n1828) );
  NAND2XLM U965 ( .A(FIFO_u_w_addr[0]), .B(n914), .Y(n1742) );
  OR2X1M U966 ( .A(n1633), .B(n1632), .Y(n1635) );
  OAI21XLM U968 ( .A0(n1586), .A1(n1585), .B0(n1584), .Y(n1595) );
  OA21XLM U969 ( .A0(n1582), .A1(n1641), .B0(n1581), .Y(n1586) );
  MX2XLM U970 ( .A(n1623), .B(n1622), .S0(n1641), .Y(n1633) );
  NAND2XLM U971 ( .A(n1626), .B(n1625), .Y(n1630) );
  AND2X1M U972 ( .A(n1643), .B(n1642), .Y(n1644) );
  OAI21X1M U974 ( .A0(n1607), .A1(n1453), .B0(n1452), .Y(n1454) );
  AND2X1M U979 ( .A(n1640), .B(n1632), .Y(n888) );
  AND2X1M U980 ( .A(n1449), .B(n1448), .Y(n1640) );
  OAI21X1M U984 ( .A0(n1413), .A1(n1412), .B0(n1411), .Y(n1447) );
  OAI21X1M U985 ( .A0(reg1[3]), .A1(n1441), .B0(n1405), .Y(n1443) );
  AO22XLM U986 ( .A0(n1433), .A1(n1403), .B0(n1587), .B1(n1402), .Y(n1439) );
  AND2X1M U987 ( .A(n1530), .B(n1529), .Y(eq_x_37_n25) );
  AO2B2XLM U988 ( .B0(FIFO_u_U4_WR_PTR_BIN_NEXT[2]), .B1(n1135), .A0(
        FIFO_u_U4_WR_PTR_GRAY_NEXT[3]), .A1N(FIFO_u_U4_WR_PTR_BIN_NEXT[2]), 
        .Y(FIFO_u_U4_WR_PTR_GRAY_NEXT[2]) );
  OAI21X1M U989 ( .A0(n1583), .A1(n1293), .B0(n1295), .Y(n1182) );
  XNOR2X1M U990 ( .A(n1188), .B(n1187), .Y(n1189) );
  OAI2BB1X1M U991 ( .A0N(reg1[0]), .A1N(n1191), .B0(reg0[5]), .Y(n1180) );
  NAND2X1M U994 ( .A(n1140), .B(n1139), .Y(n1256) );
  NOR2X1M U995 ( .A(n1147), .B(n1137), .Y(n1269) );
  AND2X1M U996 ( .A(n1659), .B(n1057), .Y(n1056) );
  OAI21XLM U997 ( .A0(reg0[7]), .A1(n1580), .B0(n1583), .Y(n1137) );
  AND2X1M U998 ( .A(reg0[1]), .B(reg1[6]), .Y(n1888) );
  AND2X1M U1000 ( .A(reg0[4]), .B(reg1[2]), .Y(n1885) );
  AND2X1M U1001 ( .A(reg0[0]), .B(reg1[6]), .Y(n1879) );
  OAI21X2M U1004 ( .A0(n1399), .A1(n1583), .B0(n1292), .Y(n1390) );
  OAI2BB1X2M U1005 ( .A0N(n1399), .A1N(n1583), .B0(n1291), .Y(n1292) );
  MXI2XLM U1007 ( .A(n1392), .B(n1391), .S0(n1408), .Y(n1404) );
  XOR2XLM U1009 ( .A(n1387), .B(n1386), .Y(n1445) );
  NAND2XLM U1010 ( .A(n1408), .B(n1385), .Y(n1387) );
  NAND2XLM U1012 ( .A(n1447), .B(n1440), .Y(n1442) );
  NAND2XLM U1013 ( .A(n1447), .B(n1444), .Y(n1446) );
  OAI21XLM U1014 ( .A0(n1449), .A1(n1580), .B0(reg0[2]), .Y(n1427) );
  NAND2XLM U1015 ( .A(n1447), .B(n1434), .Y(n1436) );
  NAND2XLM U1016 ( .A(n1286), .B(n1290), .Y(n1407) );
  NOR2XLM U1017 ( .A(n1408), .B(n1407), .Y(n1448) );
  OAI21XLM U1019 ( .A0(n1334), .A1(n1333), .B0(n1332), .Y(intadd_2_A_3_) );
  OAI21XLM U1020 ( .A0(intadd_2_SUM_2_), .A1(intadd_0_n1), .B0(intadd_5_n1), 
        .Y(n1332) );
  NAND2BXLM U1021 ( .AN(reg0[3]), .B(reg1[0]), .Y(n1397) );
  NAND2BXLM U1022 ( .AN(reg0[4]), .B(reg1[0]), .Y(n1293) );
  NAND2XLM U1023 ( .A(n1447), .B(n1430), .Y(n1431) );
  AOI21XLM U1024 ( .A0(n1379), .A1(n1378), .B0(n1377), .Y(n1562) );
  NOR2XLM U1026 ( .A(n1562), .B(n1381), .Y(n1383) );
  NAND2XLM U1027 ( .A(n1619), .B(n1618), .Y(n1620) );
  AOI21XLM U1028 ( .A0(n1616), .A1(n1615), .B0(n1614), .Y(n1621) );
  NOR3XLM U1029 ( .A(n1375), .B(n1374), .C(n1380), .Y(intadd_0_A_0_) );
  NOR2XLM U1030 ( .A(intadd_4_A_0_), .B(n1357), .Y(n1565) );
  NOR2XLM U1032 ( .A(n1565), .B(n1358), .Y(n1360) );
  NAND2XLM U1033 ( .A(n1605), .B(n1589), .Y(n1601) );
  NOR3XLM U1034 ( .A(n1343), .B(n1374), .C(n1375), .Y(n1377) );
  NOR2XLM U1035 ( .A(n1536), .B(n1642), .Y(n1557) );
  NOR2XLM U1037 ( .A(n1380), .B(n1589), .Y(n1561) );
  NOR2XLM U1038 ( .A(n1346), .B(n1371), .Y(n1559) );
  NAND2XLM U1039 ( .A(n1628), .B(n1627), .Y(n1629) );
  OAI21XLM U1040 ( .A0(n1593), .A1(n1592), .B0(n1591), .Y(n1594) );
  NAND2XLM U1041 ( .A(n1590), .B(n1589), .Y(n1591) );
  NAND2XLM U1042 ( .A(n1588), .B(n1587), .Y(n1592) );
  NAND2XLM U1046 ( .A(n1287), .B(n1409), .Y(n1309) );
  NOR3XLM U1047 ( .A(n1491), .B(n1374), .C(n1536), .Y(intadd_7_A_0_) );
  OAI21XLM U1050 ( .A0(intadd_1_SUM_2_), .A1(intadd_6_n1), .B0(n1353), .Y(
        n1354) );
  OAI2BB1XLM U1051 ( .A0N(intadd_1_SUM_1_), .A1N(intadd_4_SUM_0_), .B0(n1264), 
        .Y(n1353) );
  OAI21XLM U1052 ( .A0(intadd_1_SUM_1_), .A1(intadd_4_SUM_0_), .B0(
        intadd_3_SUM_0_), .Y(n1264) );
  NAND2XLM U1053 ( .A(n1143), .B(n1142), .Y(n1151) );
  NAND2XLM U1054 ( .A(reg0[4]), .B(reg1[4]), .Y(n1348) );
  OAI21XLM U1055 ( .A0(n1342), .A1(n1341), .B0(n1340), .Y(intadd_0_A_4_) );
  OAI21XLM U1056 ( .A0(intadd_0_SUM_3_), .A1(intadd_1_n1), .B0(intadd_3_n1), 
        .Y(n1340) );
  OAI21XLM U1057 ( .A0(n1394), .A1(n1397), .B0(n1393), .Y(n1395) );
  OAI2BB1XLM U1058 ( .A0N(reg1[0]), .A1N(n1408), .B0(reg0[3]), .Y(n1393) );
  NAND2BXLM U1059 ( .AN(reg0[2]), .B(reg1[0]), .Y(n1429) );
  XNOR2XLM U1060 ( .A(n1401), .B(n1400), .Y(n1435) );
  NAND2XLM U1062 ( .A(n1408), .B(n1398), .Y(n1401) );
  OAI21XLM U1063 ( .A0(reg1[1]), .A1(n1432), .B0(n1396), .Y(n1433) );
  OAI21XLM U1064 ( .A0(n1395), .A1(n1583), .B0(n1429), .Y(n1396) );
  NAND2XLM U1068 ( .A(n1191), .B(n1185), .Y(n1188) );
  CLKINVX1M U1069 ( .A(n1397), .Y(n1291) );
  XOR2XLM U1070 ( .A(n1297), .B(n1296), .Y(n1388) );
  NAND2XLM U1072 ( .A(n1301), .B(n1294), .Y(n1297) );
  XOR2XLM U1073 ( .A(n1303), .B(n1302), .Y(n1304) );
  NAND2XLM U1074 ( .A(n1301), .B(n1300), .Y(n1303) );
  XNOR2XLM U1075 ( .A(n1299), .B(reg1[2]), .Y(n1300) );
  NOR2XLM U1076 ( .A(n1582), .B(n1583), .Y(n1568) );
  NAND2XLM U1077 ( .A(n1582), .B(n1583), .Y(n1569) );
  OAI22XLM U1078 ( .A0(n1828), .A1(n931), .B0(n930), .B1(n929), .Y(n955) );
  NAND2BXLM U1081 ( .AN(n902), .B(n1059), .Y(n1057) );
  MX2XLM U1082 ( .A(n1611), .B(n1610), .S0(n1641), .Y(n1628) );
  XNOR2XLM U1083 ( .A(n1616), .B(n1609), .Y(n1611) );
  NAND2XLM U1084 ( .A(n1615), .B(n1613), .Y(n1609) );
  MX2XLM U1085 ( .A(n1573), .B(n1572), .S0(n1641), .Y(n1588) );
  XNOR2XLM U1086 ( .A(n1572), .B(n1571), .Y(n1573) );
  MX2XLM U1087 ( .A(n1578), .B(n1577), .S0(n1641), .Y(n1590) );
  NAND2XLM U1088 ( .A(n1575), .B(n1597), .Y(n1576) );
  OAI21XLM U1090 ( .A0(n1641), .A1(n1580), .B0(reg0[1]), .Y(n1581) );
  NAND2XLM U1091 ( .A(n1536), .B(reg1[0]), .Y(n1582) );
  NAND2BXLM U1092 ( .AN(reg0[0]), .B(reg1[0]), .Y(n1655) );
  MX2XLM U1093 ( .A(n1606), .B(n1605), .S0(n1641), .Y(n1626) );
  XNOR2XLM U1094 ( .A(n1604), .B(n1603), .Y(n1606) );
  NAND2XLM U1095 ( .A(n1602), .B(n1601), .Y(n1603) );
  OAI21XLM U1096 ( .A0(n1599), .A1(n1598), .B0(n1597), .Y(n1604) );
  NOR3XLM U1097 ( .A(n1380), .B(n1374), .C(n1366), .Y(intadd_4_A_0_) );
  NAND2XLM U1098 ( .A(n1142), .B(n1587), .Y(n1147) );
  NAND2XLM U1099 ( .A(n1409), .B(n1625), .Y(n1194) );
  NAND2XLM U1101 ( .A(n1622), .B(n1627), .Y(n1618) );
  NOR2XLM U1102 ( .A(n1610), .B(n1625), .Y(n1608) );
  NOR2XLM U1103 ( .A(n1622), .B(n1627), .Y(n1617) );
  NAND2XLM U1104 ( .A(reg1[0]), .B(reg1[1]), .Y(n1374) );
  NAND2XLM U1108 ( .A(n951), .B(n953), .Y(n952) );
  NAND2XLM U1109 ( .A(n956), .B(n955), .Y(n958) );
  NAND2XLM U1111 ( .A(n953), .B(n955), .Y(n954) );
  NAND2XLM U1112 ( .A(n956), .B(n951), .Y(n936) );
  NOR2XLM U1113 ( .A(n1370), .B(n1379), .Y(n1371) );
  OAI22XLM U1114 ( .A0(n1383), .A1(n1564), .B0(n1382), .B1(n1563), .Y(
        intadd_0_A_1_) );
  NOR2XLM U1117 ( .A(n1652), .B(n1058), .Y(n1171) );
  NOR2XLM U1119 ( .A(intadd_0_A_0_), .B(n1376), .Y(intadd_3_B_0_) );
  OAI22XLM U1120 ( .A0(n1360), .A1(n1567), .B0(n1359), .B1(n1566), .Y(
        intadd_1_A_1_) );
  NAND2BXLM U1122 ( .AN(n1154), .B(n1167), .Y(n1158) );
  NAND2XLM U1123 ( .A(n1157), .B(n1156), .Y(n1462) );
  NAND2XLM U1124 ( .A(n1145), .B(n1144), .Y(n1146) );
  NAND2XLM U1126 ( .A(n1186), .B(n1583), .Y(n1145) );
  NAND2XLM U1127 ( .A(n1141), .B(n1256), .Y(n1192) );
  NOR2XLM U1129 ( .A(n1194), .B(reg1[3]), .Y(n1142) );
  AOI21XLM U1130 ( .A0(n1369), .A1(n1368), .B0(intadd_1_A_0_), .Y(
        intadd_6_B_0_) );
  AOI2B1XLM U1131 ( .A1N(n1531), .A0(n1533), .B0(n1532), .Y(n1538) );
  NOR2XLM U1132 ( .A(n1491), .B(n1589), .Y(n1533) );
  NOR2XLM U1133 ( .A(n1425), .B(n1369), .Y(n1539) );
  NOR2XLM U1135 ( .A(n1493), .B(n1531), .Y(n1532) );
  NOR2XLM U1136 ( .A(n1410), .B(n1448), .Y(n1413) );
  NAND2XLM U1137 ( .A(n1662), .B(n1171), .Y(n1669) );
  NAND2XLM U1138 ( .A(n1153), .B(n1154), .Y(n1670) );
  NOR2XLM U1139 ( .A(n1462), .B(n1167), .Y(n1174) );
  OAI21XLM U1140 ( .A0(n1617), .A1(n1613), .B0(n1618), .Y(n1451) );
  OR2X1M U1141 ( .A(n1640), .B(n1632), .Y(n887) );
  NOR2XLM U1142 ( .A(n1608), .B(n1617), .Y(n1450) );
  AOI21XLM U1143 ( .A0(n1574), .A1(n1438), .B0(n1437), .Y(n1607) );
  NOR2XLM U1144 ( .A(n1598), .B(n1600), .Y(n1438) );
  NAND2XLM U1145 ( .A(n1157), .B(n1652), .Y(n1155) );
  NAND2XLM U1146 ( .A(n1154), .B(n1167), .Y(n1463) );
  AOI211XLM U1147 ( .A0(n1464), .A1(n1645), .B0(n1463), .C0(n1462), .Y(n1664)
         );
  NAND2BXLM U1149 ( .AN(n902), .B(n1058), .Y(n1659) );
  NAND2XLM U1150 ( .A(n1056), .B(n1156), .Y(n1176) );
  NOR2XLM U1151 ( .A(n936), .B(n957), .Y(n1043) );
  NOR2XLM U1152 ( .A(n959), .B(n952), .Y(n1729) );
  NOR2XLM U1153 ( .A(n957), .B(n952), .Y(n1731) );
  NOR2XLM U1154 ( .A(n957), .B(n958), .Y(n1727) );
  NOR2XLM U1155 ( .A(n959), .B(n958), .Y(n1725) );
  NOR2XLM U1156 ( .A(n957), .B(n954), .Y(n1723) );
  NOR2XLM U1157 ( .A(n959), .B(n954), .Y(n1719) );
  OAI211XLM U1158 ( .A0(n931), .A1(n1735), .B0(n928), .C0(n938), .Y(n1721) );
  NAND2XLM U1163 ( .A(n1721), .B(n1720), .Y(n1732) );
  NOR2BXLM U1165 ( .AN(synced_p_data[1]), .B(n1913), .Y(n1652) );
  NOR2XLM U1166 ( .A(n959), .B(n936), .Y(n1044) );
  NAND2XLM U1167 ( .A(n969), .B(n1720), .Y(n1733) );
  AND3XLM U1168 ( .A(rd_data_vld), .B(n907), .C(n906), .Y(n908) );
  AND3XLM U1169 ( .A(n905), .B(n904), .C(n906), .Y(n909) );
  OAI21BXLM U1170 ( .A0(n1370), .A1(n1372), .B0N(n1371), .Y(n1338) );
  NOR2XLM U1172 ( .A(n1366), .B(n1632), .Y(n1551) );
  OAI22XLM U1173 ( .A0(n1345), .A1(n1558), .B0(n1556), .B1(n1344), .Y(n1350)
         );
  NOR2XLM U1174 ( .A(n1377), .B(n1557), .Y(n1345) );
  OAI21XLM U1175 ( .A0(n1349), .A1(n1348), .B0(n1347), .Y(n1554) );
  OAI21XLM U1176 ( .A0(n1560), .A1(n1561), .B0(n1559), .Y(n1347) );
  NOR2XLM U1178 ( .A(n1155), .B(n1059), .Y(n1153) );
  NAND2XLM U1179 ( .A(n1486), .B(n1171), .Y(n1166) );
  NAND2XLM U1180 ( .A(n1056), .B(n1055), .Y(n1152) );
  NAND2XLM U1181 ( .A(n905), .B(n1863), .Y(n903) );
  NOR2XLM U1182 ( .A(n922), .B(n917), .Y(n907) );
  AOI211XLM U1183 ( .A0(n1675), .A1(n1674), .B0(n1673), .C0(n1672), .Y(n1676)
         );
  OAI21XLM U1184 ( .A0(n1639), .A1(n1638), .B0(n1637), .Y(n1646) );
  NAND2XLM U1185 ( .A(n1624), .B(n1635), .Y(n1638) );
  NOR2XLM U1189 ( .A(n1865), .B(n1864), .Y(n1870) );
  AOI22XLM U1190 ( .A0(intadd_1_SUM_2_), .A1(intadd_6_n1), .B0(n1356), .B1(
        n1355), .Y(n1266) );
  AOI21XLM U1191 ( .A0(n1353), .A1(n1266), .B0(n1671), .Y(n1265) );
  NOR2XLM U1192 ( .A(intadd_7_n1), .B(intadd_6_SUM_1_), .Y(n1364) );
  NOR2XLM U1193 ( .A(n1158), .B(n1462), .Y(n1665) );
  AOI211XLM U1194 ( .A0(n1259), .A1(n1674), .B0(n1258), .C0(n1257), .Y(n1261)
         );
  NOR2XLM U1195 ( .A(n1152), .B(n1154), .Y(n1684) );
  NAND2X2M U1197 ( .A(n1454), .B(n1642), .Y(n1641) );
  NAND2XLM U1198 ( .A(n1450), .B(n887), .Y(n1453) );
  AOI21XLM U1199 ( .A0(n1451), .A1(n887), .B0(n888), .Y(n1452) );
  AOI21XLM U1201 ( .A0(n1495), .A1(n1499), .B0(n1494), .Y(n1504) );
  AOI211XLM U1202 ( .A0(n1493), .A1(n1492), .B0(n1671), .C0(intadd_7_A_0_), 
        .Y(n1494) );
  NAND4XLM U1203 ( .A(n1487), .B(n1652), .C(n1486), .D(n1659), .Y(n1488) );
  NOR2XLM U1204 ( .A(n1176), .B(n1323), .Y(n1681) );
  NOR2XLM U1205 ( .A(n1524), .B(n1721), .Y(n1051) );
  NOR2XLM U1206 ( .A(n969), .B(n1524), .Y(n1049) );
  NOR2XLM U1207 ( .A(n1722), .B(n1733), .Y(n1833) );
  NOR2XLM U1208 ( .A(n1722), .B(n1732), .Y(n1832) );
  NOR2XLM U1209 ( .A(n1726), .B(n1733), .Y(n1837) );
  NOR2XLM U1210 ( .A(n1726), .B(n1732), .Y(n1836) );
  NOR2XLM U1211 ( .A(n1724), .B(n1733), .Y(n1835) );
  NOR2XLM U1212 ( .A(n1724), .B(n1732), .Y(n1834) );
  NOR2XLM U1213 ( .A(n1728), .B(n1733), .Y(n1839) );
  NOR2XLM U1214 ( .A(n1730), .B(n1733), .Y(n1841) );
  NOR2XLM U1215 ( .A(n1730), .B(n1732), .Y(n1840) );
  NOR2XLM U1216 ( .A(n1734), .B(n1733), .Y(n1843) );
  NOR2XLM U1217 ( .A(n1734), .B(n1732), .Y(n1842) );
  NOR2XLM U1221 ( .A(n1740), .B(n1742), .Y(n1134) );
  NAND2XLM U1222 ( .A(n1134), .B(n1738), .Y(n949) );
  OR3X1M U1223 ( .A(n910), .B(n909), .C(n908), .Y(n914) );
  OAI2BB2XLM U1224 ( .B0(FIFO_u_U4_WR_PTR_BIN_NEXT[1]), .B1(
        FIFO_u_U4_WR_PTR_BIN_NEXT[2]), .A0N(FIFO_u_w_addr[2]), .A1N(
        FIFO_u_U4_WR_PTR_BIN_NEXT[1]), .Y(n1526) );
  OAI22XLM U1225 ( .A0(n1528), .A1(FIFO_u_r_ptr_synch[0]), .B0(
        FIFO_u_U4_WR_PTR_GRAY_NEXT[2]), .B1(FIFO_u_r_ptr_synch[2]), .Y(n1527)
         );
  OAI2BB2XLM U1226 ( .B0(FIFO_u_U4_WR_PTR_BIN_NEXT[0]), .B1(
        FIFO_u_U4_WR_PTR_BIN_NEXT[1]), .A0N(FIFO_u_w_addr[1]), .A1N(
        FIFO_u_U4_WR_PTR_BIN_NEXT[0]), .Y(n1528) );
  OAI21XLM U1227 ( .A0(n1544), .A1(n1546), .B0(n1325), .Y(n1329) );
  NOR2XLM U1228 ( .A(intadd_2_n1), .B(n1329), .Y(n1327) );
  OAI21XLM U1229 ( .A0(n1550), .A1(n1552), .B0(n1339), .Y(intadd_5_A_2_) );
  OAI21XLM U1230 ( .A0(n1338), .A1(n1337), .B0(n1551), .Y(n1339) );
  OAI22XLM U1231 ( .A0(n1336), .A1(n1543), .B0(n1335), .B1(n1541), .Y(
        intadd_2_A_2_) );
  NOR2XLM U1233 ( .A(n1278), .B(n1674), .Y(n1330) );
  OAI22XLM U1234 ( .A0(n1352), .A1(n1555), .B0(n1351), .B1(n1553), .Y(
        intadd_0_A_3_) );
  NOR2XLM U1235 ( .A(n1350), .B(n1554), .Y(n1352) );
  OR2X1M U1240 ( .A(DP_OP_196J1_124_5161_n9), .B(n1279), .Y(n1321) );
  NAND2XLM U1241 ( .A(n1166), .B(n1060), .Y(n1674) );
  NOR2XLM U1245 ( .A(n928), .B(n898), .Y(n1845) );
  NAND3XLM U1247 ( .A(n925), .B(n1866), .C(n1829), .Y(n947) );
  OAI2BB1XLM U1248 ( .A0N(n1684), .A1N(n1683), .B0(n1682), .Y(
        ALU_u_ALU_OUT_Comb[0]) );
  AOI21XLM U1249 ( .A0(C118_DATA15_0), .A1(n1681), .B0(n1680), .Y(n1682) );
  AO21XLM U1250 ( .A0(n1646), .A1(n1645), .B0(n1644), .Y(n1683) );
  OAI211XLM U1251 ( .A0(n1679), .A1(n1678), .B0(n1677), .C0(n1676), .Y(n1680)
         );
  OAI21XLM U1252 ( .A0(n1253), .A1(n1343), .B0(n1249), .Y(n646) );
  OAI21XLM U1253 ( .A0(n1253), .A1(n1375), .B0(n1251), .Y(n682) );
  OAI21XLM U1254 ( .A0(n1253), .A1(n1380), .B0(n1250), .Y(n699) );
  OAI21XLM U1255 ( .A0(n1253), .A1(n1366), .B0(n1252), .Y(n716) );
  OAI21XLM U1256 ( .A0(n1535), .A1(n1828), .B0(n935), .Y(n733) );
  OAI21XLM U1257 ( .A0(n1535), .A1(n1826), .B0(n933), .Y(n750) );
  OAI21XLM U1258 ( .A0(n1535), .A1(n1735), .B0(n934), .Y(n785) );
  AOI222XLM U1259 ( .A0(n971), .A1(n1051), .B0(n970), .B1(n1049), .C0(n1524), 
        .C1(rd_data[7]), .Y(n972) );
  NAND4XLM U1260 ( .A(n963), .B(n962), .C(n961), .D(n960), .Y(n971) );
  NAND4XLM U1261 ( .A(n968), .B(n967), .C(n966), .D(n965), .Y(n970) );
  OAI2BB1XLM U1262 ( .A0N(n1681), .A1N(n1282), .B0(n1281), .Y(
        ALU_u_ALU_OUT_Comb[8]) );
  AOI21XLM U1263 ( .A0(intadd_1_SUM_3_), .A1(n1422), .B0(n1280), .Y(n1281) );
  XNOR2XLM U1264 ( .A(DP_OP_196J1_124_5161_n9), .B(n1279), .Y(n1282) );
  OAI21XLM U1265 ( .A0(n1343), .A1(n1490), .B0(n1320), .Y(n1280) );
  OAI2B11XLM U1266 ( .A1N(C118_DATA15_7), .A0(n1276), .B0(n1275), .C0(n1274), 
        .Y(ALU_u_ALU_OUT_Comb[7]) );
  AOI211XLM U1267 ( .A0(n1273), .A1(n1674), .B0(n1272), .C0(n1271), .Y(n1274)
         );
  OAI21XLM U1268 ( .A0(n1353), .A1(n1266), .B0(n1265), .Y(n1275) );
  OAI2BB1XLM U1269 ( .A0N(n1681), .A1N(C118_DATA15_6), .B0(n1263), .Y(
        ALU_u_ALU_OUT_Comb[6]) );
  AOI21XLM U1270 ( .A0(intadd_6_SUM_2_), .A1(n1422), .B0(n1262), .Y(n1263) );
  OAI211XLM U1271 ( .A0(n1679), .A1(n1549), .B0(n1261), .C0(n1260), .Y(n1262)
         );
  AOI222XLM U1272 ( .A0(n1026), .A1(n1051), .B0(n1025), .B1(n1049), .C0(n1524), 
        .C1(rd_data[6]), .Y(n1027) );
  NAND4XLM U1273 ( .A(n1020), .B(n1019), .C(n1018), .D(n1017), .Y(n1026) );
  NAND4XLM U1274 ( .A(n1024), .B(n1023), .C(n1022), .D(n1021), .Y(n1025) );
  NAND3XLM U1275 ( .A(n1179), .B(n1178), .C(n1177), .Y(ALU_u_ALU_OUT_Comb[5])
         );
  AOI211XLM U1276 ( .A0(n1191), .A1(n1684), .B0(n1170), .C0(n1169), .Y(n1179)
         );
  NAND2XLM U1277 ( .A(C118_DATA15_5), .B(n1681), .Y(n1177) );
  NAND4XLM U1278 ( .A(n987), .B(n986), .C(n985), .D(n984), .Y(n993) );
  NAND4XLM U1279 ( .A(n991), .B(n990), .C(n989), .D(n988), .Y(n992) );
  OAI2BB1XLM U1280 ( .A0N(n1681), .A1N(C118_DATA15_4), .B0(n1205), .Y(
        ALU_u_ALU_OUT_Comb[4]) );
  AOI211XLM U1281 ( .A0(intadd_7_SUM_2_), .A1(n1422), .B0(n1204), .C0(n1203), 
        .Y(n1205) );
  NOR2XLM U1282 ( .A(n1290), .B(n1508), .Y(n1204) );
  AOI222XLM U1283 ( .A0(n1015), .A1(n1051), .B0(n1014), .B1(n1049), .C0(n1524), 
        .C1(rd_data[4]), .Y(n1016) );
  NAND4XLM U1284 ( .A(n1009), .B(n1008), .C(n1007), .D(n1006), .Y(n1015) );
  NAND4XLM U1285 ( .A(n1013), .B(n1012), .C(n1011), .D(n1010), .Y(n1014) );
  OAI211XLM U1286 ( .A0(n1394), .A1(n1508), .B0(n1318), .C0(n1317), .Y(
        ALU_u_ALU_OUT_Comb[3]) );
  AOI21XLM U1287 ( .A0(n1422), .A1(intadd_7_SUM_1_), .B0(n1316), .Y(n1318) );
  NAND2XLM U1288 ( .A(C118_DATA15_3), .B(n1681), .Y(n1317) );
  OAI211XLM U1289 ( .A0(n1679), .A1(n1315), .B0(n1314), .C0(n1313), .Y(n1316)
         );
  AOI222XLM U1290 ( .A0(n1037), .A1(n1051), .B0(n1036), .B1(n1049), .C0(n1524), 
        .C1(rd_data[3]), .Y(n1038) );
  NAND4XLM U1291 ( .A(n1031), .B(n1030), .C(n1029), .D(n1028), .Y(n1037) );
  NAND4XLM U1292 ( .A(n1035), .B(n1034), .C(n1033), .D(n1032), .Y(n1036) );
  OAI211XLM U1293 ( .A0(n1449), .A1(n1508), .B0(n1424), .C0(n1423), .Y(
        ALU_u_ALU_OUT_Comb[2]) );
  AOI21XLM U1294 ( .A0(n1422), .A1(intadd_7_SUM_0_), .B0(n1421), .Y(n1424) );
  NAND2XLM U1295 ( .A(C118_DATA15_2), .B(n1681), .Y(n1423) );
  OAI211XLM U1296 ( .A0(n1679), .A1(n1420), .B0(n1419), .C0(n1418), .Y(n1421)
         );
  NAND4XLM U1297 ( .A(n1002), .B(n1001), .C(n1000), .D(n999), .Y(n1003) );
  OAI21XLM U1298 ( .A0(n1641), .A1(n1508), .B0(n1507), .Y(
        ALU_u_ALU_OUT_Comb[1]) );
  AOI211XLM U1299 ( .A0(C118_DATA15_1), .A1(n1681), .B0(n1506), .C0(n1505), 
        .Y(n1507) );
  OAI211XLM U1300 ( .A0(n1491), .A1(n1490), .B0(n1489), .C0(n1488), .Y(n1506)
         );
  NAND3XLM U1301 ( .A(n1504), .B(n1503), .C(n1502), .Y(n1505) );
  AOI222XLM U1302 ( .A0(n982), .A1(n1051), .B0(n981), .B1(n1049), .C0(n1524), 
        .C1(rd_data[1]), .Y(n983) );
  NAND4XLM U1303 ( .A(n976), .B(n975), .C(n974), .D(n973), .Y(n982) );
  NAND4XLM U1304 ( .A(n980), .B(n979), .C(n978), .D(n977), .Y(n981) );
  AOI222XLM U1305 ( .A0(n1052), .A1(n1051), .B0(n1050), .B1(n1049), .C0(n1524), 
        .C1(rd_data[0]), .Y(n1053) );
  NAND4XLM U1306 ( .A(n1042), .B(n1041), .C(n1040), .D(n1039), .Y(n1052) );
  NAND4XLM U1307 ( .A(n1048), .B(n1047), .C(n1046), .D(n1045), .Y(n1050) );
  OAI21XLM U1308 ( .A0(n1134), .A1(n1738), .B0(n949), .Y(
        FIFO_u_U4_WR_PTR_BIN_NEXT[2]) );
  OAI21XLM U1309 ( .A0(n914), .A1(n913), .B0(n1744), .Y(
        FIFO_u_U4_WR_PTR_BIN_NEXT[0]) );
  OAI31XLM U1310 ( .A0(n1327), .A1(n1671), .A2(n1326), .B0(n1330), .Y(
        ALU_u_ALU_OUT_Comb[15]) );
  OAI21XLM U1311 ( .A0(n1331), .A1(n1671), .B0(n1330), .Y(
        ALU_u_ALU_OUT_Comb[14]) );
  AOI21XLM U1312 ( .A0(intadd_2_n1), .A1(n1329), .B0(n1328), .Y(n1331) );
  XOR2XLM U1313 ( .A(n1327), .B(n1326), .Y(n1328) );
  OAI211XLM U1314 ( .A0(n1671), .A1(n1322), .B0(n1321), .C0(n1320), .Y(
        ALU_u_ALU_OUT_Comb[12]) );
  XNOR2XLM U1315 ( .A(intadd_5_n1), .B(n1319), .Y(n1322) );
  AOI22XLM U1316 ( .A0(intadd_2_SUM_2_), .A1(intadd_0_n1), .B0(n1334), .B1(
        n1333), .Y(n1319) );
  OAI2BB1XLM U1317 ( .A0N(n1422), .A1N(intadd_0_SUM_4_), .B0(n1330), .Y(
        ALU_u_ALU_OUT_Comb[11]) );
  OAI211XLM U1318 ( .A0(n1671), .A1(n1284), .B0(n1321), .C0(n1320), .Y(
        ALU_u_ALU_OUT_Comb[10]) );
  XNOR2XLM U1319 ( .A(intadd_3_n1), .B(n1283), .Y(n1284) );
  AOI22XLM U1320 ( .A0(intadd_0_SUM_3_), .A1(intadd_1_n1), .B0(n1342), .B1(
        n1341), .Y(n1283) );
  NAND2BXLM U1321 ( .AN(n1278), .B(n1277), .Y(ALU_u_ALU_OUT_Comb[9]) );
  AOI21XLM U1322 ( .A0(intadd_1_SUM_4_), .A1(n1422), .B0(n1674), .Y(n1277) );
  NOR2XLM U1323 ( .A(n902), .B(n1913), .Y(n1898) );
  AOI22XLM U1324 ( .A0(n912), .A1(n1746), .B0(n1751), .B1(n911), .Y(n841) );
  AOI22XLM U1325 ( .A0(n912), .A1(n1754), .B0(n1759), .B1(n911), .Y(n840) );
  AOI22XLM U1326 ( .A0(n912), .A1(n1762), .B0(n1767), .B1(n911), .Y(n839) );
  AOI22XLM U1327 ( .A0(n912), .A1(n1786), .B0(n1791), .B1(n911), .Y(n836) );
  AOI22XLM U1328 ( .A0(n912), .A1(n1770), .B0(n1775), .B1(n911), .Y(n838) );
  AOI22XLM U1329 ( .A0(n912), .A1(n1745), .B0(n1701), .B1(n911), .Y(n842) );
  OAI2BB2X4M U1334 ( .B0(n1071), .B1(n1070), .A0N(
        UART_TX_RX_U0_UART_TX_par_bit), .A1N(n1900), .Y(UART_TX_O) );
  NAND2XLM U1341 ( .A(n1435), .B(reg1[2]), .Y(n1403) );
  XOR2XLM U1342 ( .A(n1599), .B(n1576), .Y(n1578) );
  AOI21XLM U1343 ( .A0(n1457), .A1(n1477), .B0(n1478), .Y(n1458) );
  NAND2BXLM U1344 ( .AN(reg0[5]), .B(reg1[0]), .Y(n1184) );
  OAI21XLM U1345 ( .A0(n1404), .A1(n1589), .B0(n1439), .Y(n1405) );
  AOI222XLM U1346 ( .A0(UART_TX_RX_U0_UART_RX_edge_cnt[2]), .A1(n1093), .B0(
        UART_TX_RX_U0_UART_RX_edge_cnt[2]), .B1(n1092), .C0(n1093), .C1(n1092), 
        .Y(n1095) );
  NOR3XLM U1347 ( .A(n1367), .B(n1374), .C(n1366), .Y(intadd_1_A_0_) );
  NAND2XLM U1348 ( .A(n1445), .B(reg1[4]), .Y(n1406) );
  NAND2XLM U1349 ( .A(n1610), .B(n1625), .Y(n1613) );
  NAND2XLM U1350 ( .A(n1117), .B(n1224), .Y(n1097) );
  NOR2XLM U1351 ( .A(n1371), .B(n1370), .Y(n1373) );
  OAI211XLM U1352 ( .A0(n1225), .A1(n1222), .B0(n1224), .C0(n1223), .Y(
        rx_ratio[0]) );
  OAI21XLM U1353 ( .A0(n1631), .A1(n1630), .B0(n1629), .Y(n1636) );
  OAI22XLM U1354 ( .A0(n1161), .A1(n1539), .B0(n1160), .B1(n1159), .Y(n1363)
         );
  AOI21XLM U1356 ( .A0(n1651), .A1(n1467), .B0(n1669), .Y(n1414) );
  OAI21XLM U1358 ( .A0(n1600), .A1(n1597), .B0(n1601), .Y(n1437) );
  NOR2BXLM U1359 ( .AN(n1541), .B(n1542), .Y(n1336) );
  XNOR2XLM U1360 ( .A(n1373), .B(n1372), .Y(intadd_0_B_2_) );
  AOI22XLM U1361 ( .A0(n1727), .A1(Regfile_u_reg_file_9__7_), .B0(n1725), .B1(
        Regfile_u_reg_file_11__7_), .Y(n966) );
  OAI21XLM U1362 ( .A0(n1356), .A1(n1355), .B0(n1354), .Y(intadd_1_A_3_) );
  OAI22XLM U1363 ( .A0(n1364), .A1(n1363), .B0(n1362), .B1(n1361), .Y(
        intadd_6_A_2_) );
  NAND2XLM U1364 ( .A(n1174), .B(n1173), .Y(n1667) );
  AOI22XLM U1365 ( .A0(n1723), .A1(Regfile_u_reg_file_13__5_), .B0(n1719), 
        .B1(Regfile_u_reg_file_15__5_), .Y(n990) );
  NOR2XLM U1367 ( .A(n1365), .B(n1539), .Y(intadd_7_A_1_) );
  AOI211XLM U1368 ( .A0(n1416), .A1(n1674), .B0(n1415), .C0(n1414), .Y(n1419)
         );
  AOI22XLM U1369 ( .A0(n1723), .A1(Regfile_u_reg_file_13__2_), .B0(n1719), 
        .B1(Regfile_u_reg_file_15__2_), .Y(n1001) );
  AOI21XLM U1370 ( .A0(n1465), .A1(n1500), .B0(n1664), .Y(n1489) );
  AOI22XLM U1371 ( .A0(n1044), .A1(reg3[0]), .B0(n1043), .B1(reg1[0]), .Y(
        n1045) );
  OAI2BB1XLM U1373 ( .A0N(n1546), .A1N(n1544), .B0(n1545), .Y(n1325) );
  NOR2XLM U1374 ( .A(n902), .B(n1810), .Y(n1055) );
  AND3XLM U1376 ( .A(n1222), .B(n1224), .C(n1223), .Y(rx_ratio[1]) );
  AND3XLM U1377 ( .A(n1225), .B(n1224), .C(n1223), .Y(rx_ratio[2]) );
  OAI211XLM U1378 ( .A0(n1800), .A1(n1749), .B0(n1748), .C0(n1747), .Y(n1753)
         );
  OAI211XLM U1379 ( .A0(n1800), .A1(n1757), .B0(n1756), .C0(n1755), .Y(n1761)
         );
  OAI22XLM U1380 ( .A0(n1679), .A1(n1552), .B0(n1320), .B1(n1175), .Y(n1169)
         );
  OAI211XLM U1381 ( .A0(n1800), .A1(n1781), .B0(n1780), .C0(n1779), .Y(n1785)
         );
  NAND4XLM U1382 ( .A(n998), .B(n997), .C(n996), .D(n995), .Y(n1004) );
  NAND4XLM U1384 ( .A(n1125), .B(n1124), .C(n1692), .D(n1123), .Y(n1128) );
  OAI22XLM U1385 ( .A0(n1526), .A1(FIFO_u_r_ptr_synch[1]), .B0(
        FIFO_u_U4_WR_PTR_GRAY_NEXT[3]), .B1(FIFO_u_r_ptr_synch[3]), .Y(n1525)
         );
  NAND3XLM U1387 ( .A(n946), .B(n944), .C(n943), .Y(n945) );
  AOI32XLM U1395 ( .A0(FIFO_u_U1_mem[24]), .A1(n1703), .A2(n1807), .B0(n1702), 
        .B1(n1703), .Y(n1811) );
  AOI222XLM U1396 ( .A0(n993), .A1(n1051), .B0(n992), .B1(n1049), .C0(n1524), 
        .C1(rd_data[5]), .Y(n994) );
  AOI222XLM U1397 ( .A0(n1004), .A1(n1051), .B0(n1003), .B1(n1049), .C0(n1524), 
        .C1(rd_data[2]), .Y(n1005) );
  NOR2XLM U1398 ( .A(n1728), .B(n1732), .Y(n1838) );
  OAI21XLM U1400 ( .A0(n1851), .A1(n1856), .B0(n1853), .Y(n1858) );
  NAND2XLM U1401 ( .A(n1853), .B(n1851), .Y(n1690) );
  NOR2XLM U1403 ( .A(n1152), .B(n1173), .Y(n1422) );
  OAI211XLM U1404 ( .A0(n1913), .A1(n943), .B0(n897), .C0(n938), .Y(n1720) );
  NAND2XLM U1405 ( .A(UART_TX_RX_U0_UART_RX_stp_done), .B(
        UART_TX_RX_U0_UART_RX_U7_sample_valid_d), .Y(n1211) );
  NAND2XLM U1406 ( .A(n1323), .B(n613), .Y(alu_clk_en_test) );
  AOI22XLM U1407 ( .A0(n950), .A1(n1746), .B0(n1749), .B1(n949), .Y(n825) );
  AOI22XLM U1408 ( .A0(n950), .A1(n1754), .B0(n1757), .B1(n949), .Y(n824) );
  AOI22XLM U1409 ( .A0(n950), .A1(n1770), .B0(n1773), .B1(n949), .Y(n822) );
  AOI22XLM U1410 ( .A0(n912), .A1(n1778), .B0(n1783), .B1(n911), .Y(n837) );
  AOI22XLM U1411 ( .A0(n912), .A1(n1794), .B0(n1805), .B1(n911), .Y(n835) );
  AOI22XLM U1412 ( .A0(n1216), .A1(n1246), .B0(n1248), .B1(n1215), .Y(n638) );
  OAI21XLM U1415 ( .A0(n938), .A1(n1735), .B0(n942), .Y(n786) );
  OAI2BB1XLM U1417 ( .A0N(n1422), .A1N(intadd_2_SUM_3_), .B0(n1330), .Y(
        ALU_u_ALU_OUT_Comb[13]) );
  NOR2XLM U1422 ( .A(sys_ctrl_u_current_state[1]), .B(n1865), .Y(n905) );
  NOR2XLM U1424 ( .A(sys_ctrl_u_current_state[0]), .B(
        sys_ctrl_u_current_state[3]), .Y(n1863) );
  NOR2XLM U1426 ( .A(sys_ctrl_u_current_state[1]), .B(
        sys_ctrl_u_current_state[2]), .Y(n895) );
  NAND2XLM U1427 ( .A(sys_ctrl_u_current_state[3]), .B(n895), .Y(n917) );
  NAND2XLM U1429 ( .A(rd_data_vld), .B(n906), .Y(n890) );
  OAI2BB2XLM U1431 ( .B0(sys_ctrl_u_current_state[3]), .B1(n905), .A0N(n922), 
        .A1N(n895), .Y(n889) );
  AOI22XLM U1432 ( .A0(n907), .A1(n890), .B0(n1913), .B1(n889), .Y(n891) );
  OAI21XLM U1433 ( .A0(alu_out_v), .A1(n903), .B0(n891), .Y(n926) );
  AOI31XLM U1434 ( .A0(n905), .A1(fifo_full), .A2(n892), .B0(n926), .Y(n946)
         );
  NOR2XLM U1436 ( .A(sys_ctrl_u_current_state[3]), .B(n922), .Y(n904) );
  NAND3BXLM U1437 ( .AN(sys_ctrl_u_current_state[2]), .B(n904), .C(
        sys_ctrl_u_current_state[1]), .Y(n902) );
  NAND4XLM U1439 ( .A(synced_p_data[3]), .B(n1863), .C(n895), .D(
        synced_p_data[7]), .Y(n916) );
  NAND3XLM U1441 ( .A(synced_p_data[5]), .B(n946), .C(n1831), .Y(n893) );
  NOR4XLM U1442 ( .A(synced_p_data[2]), .B(n1869), .C(n916), .D(n893), .Y(n925) );
  OAI21XLM U1445 ( .A0(n1863), .A1(n921), .B0(sys_ctrl_u_current_state[2]), 
        .Y(n894) );
  OAI211XLM U1446 ( .A0(n921), .A1(n902), .B0(n947), .C0(n894), .Y(n651) );
  NAND4XLM U1447 ( .A(SO[0]), .B(sys_ctrl_u_current_state[1]), .C(
        sys_ctrl_u_current_state[2]), .D(n904), .Y(n930) );
  NAND2XLM U1448 ( .A(n904), .B(n895), .Y(n943) );
  NOR2BXLM U1449 ( .AN(sys_ctrl_u_wr_addr[1]), .B(sys_ctrl_u_cfg_locked), .Y(
        n896) );
  OAI31XLM U1450 ( .A0(sys_ctrl_u_wr_addr[2]), .A1(sys_ctrl_u_wr_addr[3]), 
        .A2(n896), .B0(n1861), .Y(n897) );
  NAND4XLM U1451 ( .A(sys_ctrl_u_current_state[1]), .B(SO[0]), .C(n1863), .D(
        n1865), .Y(n938) );
  NAND3BXLM U1453 ( .AN(sys_ctrl_u_wr_addr[2]), .B(n1720), .C(n929), .Y(n898)
         );
  NOR2XLM U1454 ( .A(sys_ctrl_u_wr_addr[0]), .B(n898), .Y(n1862) );
  AOI32XLM U1455 ( .A0(sys_ctrl_u_reg2_cfg), .A1(sys_ctrl_u_reg3_cfg), .A2(
        n1720), .B0(n1862), .B1(sys_ctrl_u_reg3_cfg), .Y(n900) );
  NAND2XLM U1456 ( .A(sys_ctrl_u_wr_addr[0]), .B(n1861), .Y(n928) );
  AOI21XLM U1457 ( .A0(sys_ctrl_u_reg2_cfg), .A1(n1845), .B0(
        sys_ctrl_u_cfg_locked), .Y(n899) );
  OAI21XLM U1458 ( .A0(n930), .A1(n900), .B0(n899), .Y(n650) );
  NAND2XLM U1459 ( .A(n1898), .B(synced_p_data[0]), .Y(n1154) );
  NOR3XLM U1461 ( .A(FIFO_u_w_addr[1]), .B(n1738), .C(n1742), .Y(n912) );
  AOI222XLM U1462 ( .A0(n910), .A1(alu_out[1]), .B0(n909), .B1(
        sys_ctrl_u_frame2[1]), .C0(n908), .C1(rd_data[1]), .Y(n1794) );
  AOI222XLM U1464 ( .A0(n910), .A1(alu_out[0]), .B0(n909), .B1(
        sys_ctrl_u_frame2[0]), .C0(n908), .C1(rd_data[0]), .Y(n1745) );
  AOI222XLM U1466 ( .A0(n910), .A1(alu_out[3]), .B0(n909), .B1(
        sys_ctrl_u_frame2[3]), .C0(n908), .C1(rd_data[3]), .Y(n1778) );
  AOI222XLM U1467 ( .A0(n910), .A1(alu_out[4]), .B0(n909), .B1(
        sys_ctrl_u_frame2[4]), .C0(n908), .C1(rd_data[4]), .Y(n1770) );
  AOI222XLM U1469 ( .A0(n910), .A1(alu_out[2]), .B0(n909), .B1(
        sys_ctrl_u_frame2[2]), .C0(n908), .C1(rd_data[2]), .Y(n1786) );
  AOI222XLM U1471 ( .A0(n910), .A1(alu_out[5]), .B0(n909), .B1(
        sys_ctrl_u_frame2[5]), .C0(n908), .C1(rd_data[5]), .Y(n1762) );
  AOI222XLM U1473 ( .A0(n910), .A1(alu_out[6]), .B0(n909), .B1(
        sys_ctrl_u_frame2[6]), .C0(n908), .C1(rd_data[6]), .Y(n1754) );
  AOI222XLM U1475 ( .A0(n910), .A1(alu_out[7]), .B0(n909), .B1(
        sys_ctrl_u_frame2[7]), .C0(n908), .C1(rd_data[7]), .Y(n1746) );
  NOR2XLM U1477 ( .A(n1866), .B(n1829), .Y(n924) );
  NAND4XLM U1479 ( .A(synced_p_data[2]), .B(synced_p_data[6]), .C(n1869), .D(
        n1830), .Y(n915) );
  NOR2XLM U1480 ( .A(n916), .B(n915), .Y(n919) );
  AOI22XLM U1481 ( .A0(sys_ctrl_u_current_state[1]), .A1(n1863), .B0(n924), 
        .B1(n919), .Y(n944) );
  NOR2XLM U1482 ( .A(synced_p_data[0]), .B(synced_p_data[4]), .Y(n920) );
  NOR2XLM U1483 ( .A(sys_ctrl_u_current_state[0]), .B(n917), .Y(n964) );
  AOI211XLM U1484 ( .A0(n920), .A1(n919), .B0(n918), .C0(n964), .Y(n923) );
  AOI32XLM U1485 ( .A0(n944), .A1(n946), .A2(n923), .B0(n922), .B1(n921), .Y(
        n653) );
  AOI22XLM U1486 ( .A0(sys_ctrl_u_current_state[3]), .A1(n926), .B0(n925), 
        .B1(n924), .Y(n927) );
  NAND2XLM U1487 ( .A(n927), .B(n931), .Y(n879) );
  NAND2XLM U1488 ( .A(synced_p_data[0]), .B(SO[0]), .Y(n1735) );
  AOI22XLM U1489 ( .A0(n1058), .A1(n964), .B0(n1861), .B1(
        sys_ctrl_u_wr_addr[2]), .Y(n956) );
  AOI22XLM U1490 ( .A0(n1652), .A1(n964), .B0(n1861), .B1(
        sys_ctrl_u_wr_addr[1]), .Y(n959) );
  NAND2XLM U1491 ( .A(n1535), .B(reg0[2]), .Y(n933) );
  NAND2XLM U1492 ( .A(n1535), .B(reg0[0]), .Y(n934) );
  NAND2XLM U1493 ( .A(n1535), .B(reg0[3]), .Y(n935) );
  AOI22XLM U1495 ( .A0(n1827), .A1(n1828), .B0(n1108), .B1(n1054), .Y(n735) );
  NAND2XLM U1498 ( .A(n1537), .B(synced_p_data[7]), .Y(n939) );
  OAI21XLM U1499 ( .A0(n1537), .A1(n1642), .B0(n939), .Y(n647) );
  NAND2XLM U1501 ( .A(n1537), .B(synced_p_data[5]), .Y(n940) );
  OAI21XLM U1502 ( .A0(n1537), .A1(n1627), .B0(n940), .Y(n700) );
  NAND2XLM U1504 ( .A(n1537), .B(synced_p_data[6]), .Y(n941) );
  OAI21XLM U1505 ( .A0(n1537), .A1(n1632), .B0(n941), .Y(n683) );
  NAND2XLM U1507 ( .A(n938), .B(reg1[0]), .Y(n942) );
  OAI21XLM U1508 ( .A0(n946), .A1(sys_ctrl_u_current_state[1]), .B0(n945), .Y(
        n948) );
  NAND2XLM U1509 ( .A(n948), .B(n947), .Y(n652) );
  AOI22XLM U1511 ( .A0(n950), .A1(n1745), .B0(n1699), .B1(n949), .Y(n826) );
  AOI22XLM U1513 ( .A0(n950), .A1(n1794), .B0(n1799), .B1(n949), .Y(n819) );
  AOI22XLM U1515 ( .A0(n950), .A1(n1762), .B0(n1765), .B1(n949), .Y(n823) );
  AOI22XLM U1519 ( .A0(n950), .A1(n1786), .B0(n1789), .B1(n949), .Y(n820) );
  AOI22XLM U1522 ( .A0(n950), .A1(n1778), .B0(n1781), .B1(n949), .Y(n821) );
  AOI22XLM U1523 ( .A0(n1731), .A1(Regfile_u_reg_file_4__7_), .B0(n1729), .B1(
        Regfile_u_reg_file_6__7_), .Y(n963) );
  AOI22XLM U1524 ( .A0(n1723), .A1(Regfile_u_reg_file_12__7_), .B0(n1719), 
        .B1(Regfile_u_reg_file_14__7_), .Y(n962) );
  AOI22XLM U1525 ( .A0(n1727), .A1(Regfile_u_reg_file_8__7_), .B0(n1725), .B1(
        Regfile_u_reg_file_10__7_), .Y(n961) );
  AOI22XLM U1526 ( .A0(n1044), .A1(reg2[7]), .B0(n1043), .B1(reg0[7]), .Y(n960) );
  NAND2XLM U1527 ( .A(SO[0]), .B(n964), .Y(n1524) );
  AOI22XLM U1528 ( .A0(n1731), .A1(Regfile_u_reg_file_5__7_), .B0(n1729), .B1(
        Regfile_u_reg_file_7__7_), .Y(n968) );
  AOI22XLM U1529 ( .A0(n1723), .A1(Regfile_u_reg_file_13__7_), .B0(n1719), 
        .B1(Regfile_u_reg_file_15__7_), .Y(n967) );
  AOI22XLM U1530 ( .A0(n1044), .A1(Regfile_u_n17), .B0(n1043), .B1(reg1[7]), 
        .Y(n965) );
  AOI22XLM U1532 ( .A0(reg0[1]), .A1(n1043), .B0(n1044), .B1(reg2[1]), .Y(n976) );
  AOI22XLM U1533 ( .A0(n1731), .A1(Regfile_u_reg_file_4__1_), .B0(n1729), .B1(
        Regfile_u_reg_file_6__1_), .Y(n975) );
  AOI22XLM U1534 ( .A0(n1727), .A1(Regfile_u_reg_file_8__1_), .B0(n1725), .B1(
        Regfile_u_reg_file_10__1_), .Y(n974) );
  AOI22XLM U1535 ( .A0(n1723), .A1(Regfile_u_reg_file_12__1_), .B0(n1719), 
        .B1(Regfile_u_reg_file_14__1_), .Y(n973) );
  AOI22XLM U1536 ( .A0(n1731), .A1(Regfile_u_reg_file_5__1_), .B0(n1729), .B1(
        Regfile_u_reg_file_7__1_), .Y(n980) );
  AOI22XLM U1537 ( .A0(n1723), .A1(Regfile_u_reg_file_13__1_), .B0(n1719), 
        .B1(Regfile_u_reg_file_15__1_), .Y(n979) );
  AOI22XLM U1538 ( .A0(n1727), .A1(Regfile_u_reg_file_9__1_), .B0(n1725), .B1(
        Regfile_u_reg_file_11__1_), .Y(n978) );
  AOI22XLM U1539 ( .A0(n1044), .A1(reg3[1]), .B0(n1043), .B1(reg1[1]), .Y(n977) );
  AOI22XLM U1540 ( .A0(SO[1]), .A1(n1731), .B0(n1729), .B1(
        Regfile_u_reg_file_6__5_), .Y(n987) );
  AOI22XLM U1541 ( .A0(n1723), .A1(Regfile_u_reg_file_12__5_), .B0(n1719), 
        .B1(Regfile_u_reg_file_14__5_), .Y(n986) );
  AOI22XLM U1542 ( .A0(n1727), .A1(Regfile_u_reg_file_8__5_), .B0(n1725), .B1(
        Regfile_u_reg_file_10__5_), .Y(n985) );
  AOI22XLM U1543 ( .A0(n1044), .A1(reg2[5]), .B0(n1043), .B1(reg0[5]), .Y(n984) );
  AOI22XLM U1544 ( .A0(n1731), .A1(Regfile_u_reg_file_5__5_), .B0(n1729), .B1(
        Regfile_u_reg_file_7__5_), .Y(n991) );
  AOI22XLM U1545 ( .A0(n1727), .A1(Regfile_u_reg_file_9__5_), .B0(n1725), .B1(
        Regfile_u_reg_file_11__5_), .Y(n989) );
  AOI22XLM U1546 ( .A0(n1044), .A1(reg3[5]), .B0(n1043), .B1(reg1[5]), .Y(n988) );
  AOI22XLM U1548 ( .A0(reg0[2]), .A1(n1043), .B0(reg2[2]), .B1(n1044), .Y(n998) );
  AOI22XLM U1549 ( .A0(n1731), .A1(Regfile_u_reg_file_4__2_), .B0(n1729), .B1(
        Regfile_u_reg_file_6__2_), .Y(n997) );
  AOI22XLM U1550 ( .A0(n1727), .A1(Regfile_u_reg_file_8__2_), .B0(n1725), .B1(
        Regfile_u_reg_file_10__2_), .Y(n996) );
  AOI22XLM U1551 ( .A0(n1723), .A1(Regfile_u_reg_file_12__2_), .B0(n1719), 
        .B1(Regfile_u_reg_file_14__2_), .Y(n995) );
  AOI22XLM U1552 ( .A0(n1731), .A1(Regfile_u_reg_file_5__2_), .B0(n1729), .B1(
        Regfile_u_reg_file_7__2_), .Y(n1002) );
  AOI22XLM U1553 ( .A0(n1727), .A1(Regfile_u_reg_file_9__2_), .B0(n1725), .B1(
        Regfile_u_reg_file_11__2_), .Y(n1000) );
  AOI22XLM U1554 ( .A0(n1044), .A1(reg3[2]), .B0(n1043), .B1(reg1[2]), .Y(n999) );
  AOI22XLM U1556 ( .A0(reg0[4]), .A1(n1043), .B0(reg2[4]), .B1(n1044), .Y(
        n1009) );
  AOI22XLM U1557 ( .A0(n1731), .A1(Regfile_u_reg_file_4__4_), .B0(n1729), .B1(
        Regfile_u_reg_file_6__4_), .Y(n1008) );
  AOI22XLM U1558 ( .A0(n1727), .A1(Regfile_u_reg_file_8__4_), .B0(n1725), .B1(
        Regfile_u_reg_file_10__4_), .Y(n1007) );
  AOI22XLM U1559 ( .A0(n1723), .A1(Regfile_u_reg_file_12__4_), .B0(n1719), 
        .B1(Regfile_u_reg_file_14__4_), .Y(n1006) );
  AOI22XLM U1560 ( .A0(n1731), .A1(Regfile_u_reg_file_5__4_), .B0(n1729), .B1(
        Regfile_u_reg_file_7__4_), .Y(n1013) );
  AOI22XLM U1561 ( .A0(n1723), .A1(Regfile_u_reg_file_13__4_), .B0(n1719), 
        .B1(Regfile_u_reg_file_15__4_), .Y(n1012) );
  AOI22XLM U1562 ( .A0(n1727), .A1(Regfile_u_reg_file_9__4_), .B0(n1725), .B1(
        Regfile_u_reg_file_11__4_), .Y(n1011) );
  AOI22XLM U1563 ( .A0(n1044), .A1(reg3[4]), .B0(n1043), .B1(reg1[4]), .Y(
        n1010) );
  AOI22XLM U1565 ( .A0(n1731), .A1(Regfile_u_reg_file_4__6_), .B0(n1729), .B1(
        Regfile_u_reg_file_6__6_), .Y(n1020) );
  AOI22XLM U1566 ( .A0(n1723), .A1(Regfile_u_reg_file_12__6_), .B0(n1719), 
        .B1(Regfile_u_reg_file_14__6_), .Y(n1019) );
  AOI22XLM U1567 ( .A0(n1727), .A1(Regfile_u_reg_file_8__6_), .B0(n1725), .B1(
        Regfile_u_reg_file_10__6_), .Y(n1018) );
  AOI22XLM U1568 ( .A0(n1044), .A1(reg2[6]), .B0(n1043), .B1(reg0[6]), .Y(
        n1017) );
  AOI22XLM U1569 ( .A0(n1731), .A1(Regfile_u_reg_file_5__6_), .B0(n1729), .B1(
        Regfile_u_reg_file_7__6_), .Y(n1024) );
  AOI22XLM U1570 ( .A0(n1723), .A1(Regfile_u_reg_file_13__6_), .B0(n1719), 
        .B1(Regfile_u_reg_file_15__6_), .Y(n1023) );
  AOI22XLM U1571 ( .A0(n1727), .A1(Regfile_u_reg_file_9__6_), .B0(n1725), .B1(
        Regfile_u_reg_file_11__6_), .Y(n1022) );
  AOI22XLM U1572 ( .A0(n1044), .A1(Regfile_u_n18), .B0(n1043), .B1(reg1[6]), 
        .Y(n1021) );
  AOI22XLM U1573 ( .A0(reg0[3]), .A1(n1043), .B0(reg2[3]), .B1(n1044), .Y(
        n1031) );
  AOI22XLM U1574 ( .A0(n1731), .A1(Regfile_u_reg_file_4__3_), .B0(n1729), .B1(
        Regfile_u_reg_file_6__3_), .Y(n1030) );
  AOI22XLM U1575 ( .A0(n1727), .A1(Regfile_u_reg_file_8__3_), .B0(n1725), .B1(
        Regfile_u_reg_file_10__3_), .Y(n1029) );
  AOI22XLM U1576 ( .A0(n1723), .A1(Regfile_u_reg_file_12__3_), .B0(n1719), 
        .B1(Regfile_u_reg_file_14__3_), .Y(n1028) );
  AOI22XLM U1577 ( .A0(n1731), .A1(Regfile_u_reg_file_5__3_), .B0(n1729), .B1(
        Regfile_u_reg_file_7__3_), .Y(n1035) );
  AOI22XLM U1578 ( .A0(n1723), .A1(Regfile_u_reg_file_13__3_), .B0(n1719), 
        .B1(Regfile_u_reg_file_15__3_), .Y(n1034) );
  AOI22XLM U1579 ( .A0(n1727), .A1(Regfile_u_reg_file_9__3_), .B0(n1725), .B1(
        Regfile_u_reg_file_11__3_), .Y(n1033) );
  AOI22XLM U1580 ( .A0(n1044), .A1(reg3[3]), .B0(n1043), .B1(reg1[3]), .Y(
        n1032) );
  AOI22XLM U1582 ( .A0(reg0[0]), .A1(n1043), .B0(reg2[0]), .B1(n1044), .Y(
        n1042) );
  AOI22XLM U1583 ( .A0(n1731), .A1(Regfile_u_reg_file_4__0_), .B0(n1729), .B1(
        Regfile_u_reg_file_6__0_), .Y(n1041) );
  AOI22XLM U1584 ( .A0(n1727), .A1(Regfile_u_reg_file_8__0_), .B0(n1725), .B1(
        Regfile_u_reg_file_10__0_), .Y(n1040) );
  AOI22XLM U1585 ( .A0(n1723), .A1(Regfile_u_reg_file_12__0_), .B0(n1719), 
        .B1(Regfile_u_reg_file_14__0_), .Y(n1039) );
  AOI22XLM U1586 ( .A0(n1731), .A1(Regfile_u_reg_file_5__0_), .B0(n1729), .B1(
        Regfile_u_reg_file_7__0_), .Y(n1048) );
  AOI22XLM U1587 ( .A0(n1723), .A1(Regfile_u_reg_file_13__0_), .B0(n1719), 
        .B1(Regfile_u_reg_file_15__0_), .Y(n1047) );
  AOI22XLM U1588 ( .A0(n1727), .A1(Regfile_u_reg_file_9__0_), .B0(n1725), .B1(
        Regfile_u_reg_file_11__0_), .Y(n1046) );
  AOI22XLM U1591 ( .A0(n1827), .A1(n1831), .B0(n1114), .B1(n1054), .Y(n684) );
  AOI22XLM U1593 ( .A0(n1827), .A1(n1830), .B0(n1117), .B1(n1054), .Y(n701) );
  AOI22XLM U1595 ( .A0(n1827), .A1(n1829), .B0(n1078), .B1(n1054), .Y(n718) );
  AOI22XLM U1598 ( .A0(n1827), .A1(n1844), .B0(n1223), .B1(n1054), .Y(n667) );
  AOI22XLM U1600 ( .A0(n1827), .A1(n1735), .B0(n1235), .B1(n1054), .Y(n864) );
  BUFX2M U1603 ( .A(ref_rst), .Y(n1895) );
  BUFX2M U1604 ( .A(ref_rst), .Y(n1896) );
  BUFX2M U1605 ( .A(ref_rst), .Y(n1897) );
  NOR2XLM U1606 ( .A(UART_TX_RX_U0_UART_TX_U2_current_state[2]), .B(n1900), 
        .Y(n1061) );
  OR2X1M U1607 ( .A(UART_TX_RX_U0_UART_TX_U2_current_state[2]), .B(n1901), .Y(
        n1694) );
  NAND2XLM U1608 ( .A(n1509), .B(n1694), .Y(
        UART_TX_RX_U0_UART_TX_U2_next_state[1]) );
  OAI21XLM U1610 ( .A0(n1901), .A1(n1695), .B0(n1061), .Y(n1062) );
  OAI31XLM U1611 ( .A0(UART_TX_RX_U0_UART_TX_U2_current_state[1]), .A1(
        UART_TX_RX_U0_UART_TX_U2_current_state[2]), .A2(fifo_empty), .B0(n1062), .Y(UART_TX_RX_U0_UART_TX_U2_next_state[0]) );
  NOR3BXLM U1613 ( .AN(Pulse_U_rcv_flop), .B(fifo_empty), .C(Pulse_U_pls_flop), 
        .Y(n1064) );
  NAND2XLM U1614 ( .A(FIFO_u_r_addr[0]), .B(n1064), .Y(n1063) );
  NOR2XLM U1615 ( .A(n1696), .B(n1063), .Y(n1066) );
  AOI21XLM U1616 ( .A0(n1696), .A1(n1063), .B0(n1066), .Y(
        FIFO_u_U5_RD_PTR_BIN_NEXT[1]) );
  OAI21XLM U1617 ( .A0(FIFO_u_r_addr[0]), .A1(n1064), .B0(n1063), .Y(n1065) );
  OAI22XLM U1619 ( .A0(n1065), .A1(n1696), .B0(FIFO_u_U5_RD_PTR_BIN_NEXT[1]), 
        .B1(FIFO_u_U5_RD_PTR_BIN_NEXT[0]), .Y(n1514) );
  NOR2XLM U1621 ( .A(n1509), .B(UART_TX_RX_U0_UART_TX_U2_current_state[1]), 
        .Y(n1071) );
  NOR2XLM U1623 ( .A(UART_TX_RX_U0_UART_TX_U1_loading), .B(n1825), .Y(n1809)
         );
  NOR2XLM U1627 ( .A(n1704), .B(n1705), .Y(n1511) );
  OAI21XLM U1629 ( .A0(n1511), .A1(n1711), .B0(
        UART_TX_RX_U0_UART_TX_U1_loading), .Y(n1206) );
  NAND2XLM U1630 ( .A(n1713), .B(n1206), .Y(n863) );
  NAND2XLM U1631 ( .A(FIFO_u_r_addr[2]), .B(n1066), .Y(n1067) );
  OAI21XLM U1632 ( .A0(FIFO_u_r_addr[2]), .A1(n1066), .B0(n1067), .Y(n1069) );
  XOR2XLM U1634 ( .A(FIFO_u_U5_RD_PTR_BIN_3_), .B(n1067), .Y(n1517) );
  AOI22XLM U1635 ( .A0(FIFO_u_U5_RD_PTR_BIN_NEXT[2]), .A1(
        FIFO_u_U5_RD_PTR_BIN_3_), .B0(n1517), .B1(n1069), .Y(
        FIFO_u_U5_RD_PTR_GRAY_NEXT[2]) );
  AOI211XLM U1638 ( .A0(UART_TX_RX_U0_UART_TX_U2_current_state[0]), .A1(
        UART_TX_RX_U0_UART_TX_ser_data), .B0(
        UART_TX_RX_U0_UART_TX_U2_current_state[2]), .C0(n1901), .Y(n1070) );
  NAND2XLM U1640 ( .A(UART_TX_RX_U0_UART_RX_U7_c_state[1]), .B(n1075), .Y(
        n1714) );
  OAI211XLM U1642 ( .A0(reg2[0]), .A1(UART_TX_RX_U0_UART_RX_U7_c_state[0]), 
        .B0(n1231), .C0(UART_TX_RX_U0_UART_RX_samp_valid), .Y(n1213) );
  NAND4XLM U1646 ( .A(n1221), .B(n1073), .C(n1074), .D(
        UART_TX_RX_U0_UART_RX_U4_count[3]), .Y(n1218) );
  NAND2BXLM U1647 ( .AN(n1213), .B(n1218), .Y(n1072) );
  AOI2BB2XLM U1649 ( .B0(UART_TX_RX_U0_UART_RX_U4_parity_reg), .B1(n1847), 
        .A0N(n1847), .A1N(UART_TX_RX_U0_UART_RX_U4_parity_reg), .Y(n1859) );
  OAI2BB2XLM U1650 ( .B0(n1072), .B1(n1859), .A0N(
        UART_TX_RX_U0_UART_RX_U4_parity_reg), .A1N(n1213), .Y(n663) );
  NOR2XLM U1651 ( .A(n1213), .B(n1073), .Y(n1522) );
  AOI21XLM U1652 ( .A0(n1073), .A1(n1072), .B0(n1522), .Y(n662) );
  AOI221XLM U1653 ( .A0(n1074), .A1(n1218), .B0(n1073), .B1(n1218), .C0(n1213), 
        .Y(n1217) );
  NAND2XLM U1654 ( .A(UART_TX_RX_U0_UART_RX_U4_count[1]), .B(n1522), .Y(n1521)
         );
  AOI22XLM U1655 ( .A0(UART_TX_RX_U0_UART_RX_U4_count[2]), .A1(n1217), .B0(
        n1521), .B1(n1221), .Y(n660) );
  NOR3XLM U1656 ( .A(UART_TX_RX_U0_UART_RX_U7_c_state[1]), .B(
        UART_TX_RX_U0_UART_RX_U7_c_state[0]), .C(n1075), .Y(n1520) );
  AOI221XLM U1657 ( .A0(UART_TX_RX_U0_UART_RX_U7_c_state[1]), .A1(n1075), .B0(
        UART_TX_RX_U0_UART_RX_U7_c_state[0]), .B1(n1075), .C0(n1520), .Y(n1846) );
  AOI22XLM U1659 ( .A0(reg2[5]), .A1(n1105), .B0(
        UART_TX_RX_U0_UART_RX_edge_cnt[2]), .B1(n1117), .Y(n1120) );
  NOR2XLM U1660 ( .A(n1108), .B(n1078), .Y(n1077) );
  OAI22XLM U1663 ( .A0(n1078), .A1(n1685), .B0(
        UART_TX_RX_U0_UART_RX_edge_cnt[1]), .B1(reg2[4]), .Y(n1116) );
  OAI21XLM U1664 ( .A0(reg2[3]), .A1(n1686), .B0(n1116), .Y(n1110) );
  NAND2XLM U1665 ( .A(reg2[3]), .B(UART_TX_RX_U0_UART_RX_edge_cnt[0]), .Y(
        n1091) );
  OAI211XLM U1666 ( .A0(n1120), .A1(n1077), .B0(n1110), .C0(n1091), .Y(n1076)
         );
  AOI21XLM U1667 ( .A0(n1120), .A1(n1077), .B0(n1076), .Y(n1088) );
  AOI22XLM U1669 ( .A0(UART_TX_RX_U0_UART_RX_edge_cnt[4]), .A1(n1223), .B0(
        reg2[7]), .B1(n1126), .Y(n1107) );
  NOR3XLM U1670 ( .A(n1117), .B(n1108), .C(n1078), .Y(n1083) );
  NOR2XLM U1671 ( .A(n1114), .B(n1081), .Y(n1080) );
  OAI22XLM U1672 ( .A0(n1116), .A1(reg2[3]), .B0(n1107), .B1(n1080), .Y(n1079)
         );
  AOI21XLM U1673 ( .A0(n1107), .A1(n1080), .B0(n1079), .Y(n1087) );
  NAND2XLM U1674 ( .A(UART_TX_RX_U0_UART_RX_edge_cnt[3]), .B(n1114), .Y(n1084)
         );
  OAI211XLM U1676 ( .A0(UART_TX_RX_U0_UART_RX_edge_cnt[5]), .A1(n1223), .B0(
        reg2[6]), .C0(n1688), .Y(n1082) );
  AOI22XLM U1677 ( .A0(UART_TX_RX_U0_UART_RX_edge_cnt[3]), .A1(reg2[6]), .B0(
        n1114), .B1(n1688), .Y(n1122) );
  OR2X1M U1678 ( .A(n1122), .B(UART_TX_RX_U0_UART_RX_edge_cnt[5]), .Y(n1111)
         );
  AOI32XLM U1679 ( .A0(n1084), .A1(n1083), .A2(n1082), .B0(n1081), .B1(n1111), 
        .Y(n1086) );
  OAI21XLM U1680 ( .A0(n1114), .A1(n1223), .B0(
        UART_TX_RX_U0_UART_RX_edge_cnt[5]), .Y(n1085) );
  NAND4XLM U1681 ( .A(n1088), .B(n1087), .C(n1086), .D(n1085), .Y(n1848) );
  NOR2XLM U1682 ( .A(n1846), .B(n1848), .Y(UART_TX_RX_U0_UART_RX_U2_N39) );
  NOR2XLM U1683 ( .A(reg2[6]), .B(n1117), .Y(n1225) );
  NOR2XLM U1684 ( .A(reg2[5]), .B(n1114), .Y(n1222) );
  NOR2XLM U1685 ( .A(reg2[3]), .B(reg2[4]), .Y(n1119) );
  NOR2BXLM U1686 ( .AN(n1119), .B(reg2[2]), .Y(n1224) );
  NAND2XLM U1687 ( .A(UART_TX_RX_U0_UART_RX_edge_cnt[0]), .B(
        UART_TX_RX_U0_UART_RX_edge_cnt[1]), .Y(n1104) );
  NAND3XLM U1688 ( .A(UART_TX_RX_U0_UART_RX_edge_cnt[2]), .B(
        UART_TX_RX_U0_UART_RX_edge_cnt[0]), .C(
        UART_TX_RX_U0_UART_RX_edge_cnt[1]), .Y(n1687) );
  OA21XLM U1690 ( .A0(n1235), .A1(UART_TX_RX_U0_UART_RX_bit_cnt[0]), .B0(
        UART_TX_RX_U0_UART_RX_bit_cnt[1]), .Y(n1089) );
  AOI221XLM U1691 ( .A0(UART_TX_RX_U0_UART_RX_bit_cnt[2]), .A1(
        UART_TX_RX_U0_UART_RX_bit_cnt[3]), .B0(n1089), .B1(
        UART_TX_RX_U0_UART_RX_bit_cnt[3]), .C0(n1846), .Y(n1853) );
  NOR2XLM U1692 ( .A(n1097), .B(reg2[6]), .Y(n1096) );
  AOI221XLM U1695 ( .A0(reg2[2]), .A1(reg2[4]), .B0(reg2[3]), .B1(reg2[4]), 
        .C0(n1224), .Y(n1093) );
  NAND2XLM U1696 ( .A(n1108), .B(n1686), .Y(n1123) );
  AOI22XLM U1697 ( .A0(reg2[2]), .A1(n1108), .B0(
        UART_TX_RX_U0_UART_RX_edge_cnt[1]), .B1(n1123), .Y(n1090) );
  OAI21XLM U1698 ( .A0(reg2[2]), .A1(n1091), .B0(n1090), .Y(n1092) );
  OAI21XLM U1699 ( .A0(n1224), .A1(n1117), .B0(n1097), .Y(n1094) );
  AOI222XLM U1700 ( .A0(n1095), .A1(n1688), .B0(n1095), .B1(n1094), .C0(n1688), 
        .C1(n1094), .Y(n1099) );
  AOI21XLM U1701 ( .A0(reg2[6]), .A1(n1097), .B0(n1096), .Y(n1098) );
  AOI222XLM U1702 ( .A0(UART_TX_RX_U0_UART_RX_edge_cnt[4]), .A1(n1099), .B0(
        UART_TX_RX_U0_UART_RX_edge_cnt[4]), .B1(n1098), .C0(n1099), .C1(n1098), 
        .Y(n1100) );
  OAI211XLM U1703 ( .A0(n1692), .A1(n1100), .B0(reg2[7]), .C0(n1103), .Y(n1102) );
  NAND2XLM U1704 ( .A(n1692), .B(n1100), .Y(n1101) );
  OAI211XLM U1705 ( .A0(reg2[7]), .A1(n1103), .B0(n1102), .C0(n1101), .Y(n1851) );
  AOI211XLM U1706 ( .A0(n1105), .A1(n1104), .B0(n1689), .C0(n1690), .Y(
        UART_TX_RX_U0_UART_RX_U1_N113) );
  NAND2XLM U1707 ( .A(UART_TX_RX_U0_UART_RX_edge_cnt[3]), .B(n1689), .Y(n1106)
         );
  NAND3XLM U1708 ( .A(UART_TX_RX_U0_UART_RX_edge_cnt[4]), .B(
        UART_TX_RX_U0_UART_RX_edge_cnt[3]), .C(n1689), .Y(n1691) );
  AOI211XLM U1710 ( .A0(n1126), .A1(n1106), .B0(n1693), .C0(n1690), .Y(
        UART_TX_RX_U0_UART_RX_U1_N115) );
  OAI211XLM U1711 ( .A0(UART_TX_RX_U0_UART_RX_edge_cnt[0]), .A1(n1108), .B0(
        n1120), .C0(n1107), .Y(n1109) );
  NOR3XLM U1712 ( .A(n1111), .B(n1110), .C(n1109), .Y(n1113) );
  NOR2XLM U1714 ( .A(UART_TX_RX_U0_UART_RX_U2_s1), .B(n1113), .Y(n1112) );
  AOI211XLM U1715 ( .A0(n1113), .A1(n1132), .B0(n1846), .C0(n1112), .Y(n666)
         );
  NAND3XLM U1716 ( .A(n1119), .B(n1117), .C(n1114), .Y(n1130) );
  NOR2XLM U1717 ( .A(n1223), .B(UART_TX_RX_U0_UART_RX_edge_cnt[4]), .Y(n1129)
         );
  NAND2XLM U1720 ( .A(n1119), .B(n1117), .Y(n1121) );
  OAI22XLM U1721 ( .A0(n1119), .A1(n1120), .B0(n1121), .B1(n1122), .Y(n1118)
         );
  AOI221XLM U1722 ( .A0(n1122), .A1(n1121), .B0(n1120), .B1(n1119), .C0(n1118), 
        .Y(n1124) );
  OAI22XLM U1723 ( .A0(reg2[7]), .A1(n1126), .B0(n1130), .B1(n1129), .Y(n1127)
         );
  AOI211XLM U1724 ( .A0(n1130), .A1(n1129), .B0(n1128), .C0(n1127), .Y(n1133)
         );
  NOR2XLM U1725 ( .A(UART_TX_RX_U0_UART_RX_U2_s0), .B(n1133), .Y(n1131) );
  AOI211XLM U1726 ( .A0(n1133), .A1(n1132), .B0(n1846), .C0(n1131), .Y(n665)
         );
  AOI2BB2XLM U1727 ( .B0(n1742), .B1(n1740), .A0N(n1740), .A1N(n1742), .Y(
        FIFO_u_U4_WR_PTR_BIN_NEXT[1]) );
  NOR2XLM U1730 ( .A(n1736), .B(FIFO_u_U4_WR_PTR_BIN_3_), .Y(n1135) );
  AOI21XLM U1731 ( .A0(FIFO_u_U4_WR_PTR_BIN_3_), .A1(n1736), .B0(n1135), .Y(
        FIFO_u_U4_WR_PTR_GRAY_NEXT[3]) );
  OR2X2M U1732 ( .A(reg1[7]), .B(reg1[5]), .Y(n1136) );
  NOR2XLM U1733 ( .A(n1136), .B(reg1[6]), .Y(n1409) );
  OR2X1M U1736 ( .A(n1343), .B(n1269), .Y(n1138) );
  NAND2X1M U1738 ( .A(n1138), .B(reg1[1]), .Y(n1140) );
  AOI21XLM U1740 ( .A0(reg1[0]), .A1(n1375), .B0(n1147), .Y(n1139) );
  OA21X2M U1742 ( .A0(n1256), .A1(n1580), .B0(reg0[6]), .Y(n1186) );
  NAND2XLM U1744 ( .A(reg0[5]), .B(reg1[5]), .Y(n1552) );
  OR2X1M U1746 ( .A(n1463), .B(n1155), .Y(n1490) );
  AOI22XLM U1748 ( .A0(reg0[4]), .A1(n1417), .B0(n1665), .B1(reg0[6]), .Y(
        n1165) );
  NAND2XLM U1749 ( .A(reg0[1]), .B(reg1[2]), .Y(n1531) );
  NAND2XLM U1752 ( .A(reg0[0]), .B(reg1[1]), .Y(n1493) );
  NAND2XLM U1753 ( .A(reg0[1]), .B(reg1[3]), .Y(n1540) );
  NOR2XLM U1754 ( .A(n1538), .B(n1540), .Y(n1161) );
  NAND2XLM U1755 ( .A(reg0[2]), .B(reg1[0]), .Y(n1425) );
  NAND2XLM U1756 ( .A(reg0[3]), .B(reg1[1]), .Y(n1369) );
  AOI22XLM U1759 ( .A0(intadd_6_SUM_1_), .A1(n1362), .B0(intadd_7_n1), .B1(
        n1361), .Y(n1163) );
  OAI21XLM U1760 ( .A0(n1363), .A1(n1163), .B0(n1422), .Y(n1162) );
  AO21XLM U1761 ( .A0(n1363), .A1(n1163), .B0(n1162), .Y(n1164) );
  OAI211XLM U1762 ( .A0(n1337), .A1(n1670), .B0(n1165), .C0(n1164), .Y(n1170)
         );
  NAND2XLM U1765 ( .A(n1380), .B(n1627), .Y(n1175) );
  NOR2XLM U1768 ( .A(reg0[5]), .B(n1627), .Y(n1478) );
  NAND2BXLM U1770 ( .AN(reg1[5]), .B(reg0[5]), .Y(n1477) );
  AOI22XLM U1773 ( .A0(n1498), .A1(n1649), .B0(n1495), .B1(n1175), .Y(n1178)
         );
  OAI21X2M U1775 ( .A0(n1181), .A1(n1184), .B0(n1180), .Y(n1295) );
  XNOR2XLM U1776 ( .A(n1184), .B(reg1[1]), .Y(n1185) );
  NOR2XLM U1778 ( .A(n1189), .B(reg1[2]), .Y(n1190) );
  OAI22X1M U1780 ( .A0(n1299), .A1(n1190), .B0(n1302), .B1(n1587), .Y(n1193)
         );
  OR2X1M U1781 ( .A(n1191), .B(n1192), .Y(n1285) );
  AOI21XLM U1782 ( .A0(n1193), .A1(reg1[3]), .B0(n1285), .Y(n1196) );
  NOR2XLM U1783 ( .A(reg1[3]), .B(n1193), .Y(n1195) );
  OA21X2M U1785 ( .A0(n1196), .A1(n1195), .B0(n1306), .Y(n1301) );
  NAND2XLM U1787 ( .A(n1366), .B(n1625), .Y(n1197) );
  NOR2XLM U1788 ( .A(n1320), .B(n1197), .Y(n1200) );
  AOI211XLM U1791 ( .A0(reg0[5]), .A1(n1665), .B0(n1200), .C0(n1199), .Y(n1202) );
  NOR2XLM U1792 ( .A(reg0[4]), .B(n1625), .Y(n1457) );
  NAND2XLM U1794 ( .A(n1625), .B(reg0[4]), .Y(n1473) );
  NAND2XLM U1795 ( .A(n1475), .B(n1473), .Y(n1650) );
  AOI22XLM U1796 ( .A0(n1498), .A1(n1650), .B0(n1417), .B1(reg0[3]), .Y(n1201)
         );
  OAI211XLM U1797 ( .A0(n1679), .A1(n1348), .B0(n1202), .C0(n1201), .Y(n1203)
         );
  NAND2XLM U1800 ( .A(UART_TX_RX_U0_UART_TX_U1_loading), .B(
        UART_TX_RX_U0_UART_TX_U1_counter[0]), .Y(n1510) );
  OAI22XLM U1801 ( .A0(n1207), .A1(n1705), .B0(n1704), .B1(n1510), .Y(n862) );
  AOI22XLM U1802 ( .A0(UART_TX_RX_U0_UART_TX_U1_counter[1]), .A1(n1206), .B0(
        n1510), .B1(n1704), .Y(n859) );
  AOI32XLM U1803 ( .A0(UART_TX_RX_U0_UART_TX_U1_counter[0]), .A1(n1713), .A2(
        n1511), .B0(n1207), .B1(n1713), .Y(n861) );
  OR4X1M U1806 ( .A(UART_TX_RX_U0_UART_RX_U7_c_state[1]), .B(n1716), .C(n1208), 
        .D(UART_TX_RX_U0_UART_RX_U7_c_state[2]), .Y(n1718) );
  NOR2XLM U1807 ( .A(n1847), .B(n1718), .Y(UART_TX_RX_U0_UART_RX_U5_N4) );
  OAI2BB1XLM U1808 ( .A0N(reg2[0]), .A1N(parity_error), .B0(n1520), .Y(n1209)
         );
  NOR3XLM U1809 ( .A(framing_error), .B(n1211), .C(n1209), .Y(
        UART_TX_RX_U0_UART_RX_U7_data_valid_next) );
  NAND2XLM U1811 ( .A(n1716), .B(n1231), .Y(n1234) );
  NOR3XLM U1813 ( .A(UART_TX_RX_U0_UART_RX_bit_cnt[0]), .B(
        UART_TX_RX_U0_UART_RX_bit_cnt[2]), .C(UART_TX_RX_U0_UART_RX_bit_cnt[1]), .Y(n1210) );
  NAND3XLM U1814 ( .A(UART_TX_RX_U0_UART_RX_bit_cnt[3]), .B(
        UART_TX_RX_U0_UART_RX_samp_valid), .C(n1210), .Y(n1233) );
  NOR2XLM U1815 ( .A(reg2[0]), .B(n1233), .Y(n1715) );
  AOI22XLM U1816 ( .A0(n1520), .A1(n1211), .B0(n1214), .B1(n1715), .Y(n1212)
         );
  OAI31XLM U1817 ( .A0(n1714), .A1(n1716), .A2(n1230), .B0(n1212), .Y(n881) );
  NOR2XLM U1818 ( .A(n1213), .B(n1218), .Y(
        UART_TX_RX_U0_UART_RX_U4_par_done_next) );
  NAND2XLM U1819 ( .A(UART_TX_RX_U0_UART_RX_samp_valid), .B(n1214), .Y(n1215)
         );
  AOI22XLM U1822 ( .A0(n1216), .A1(n1847), .B0(n1239), .B1(n1215), .Y(n643) );
  AOI22XLM U1825 ( .A0(n1216), .A1(n1241), .B0(n1246), .B1(n1215), .Y(n639) );
  AOI22XLM U1828 ( .A0(n1216), .A1(n1243), .B0(n1237), .B1(n1215), .Y(n641) );
  AOI22XLM U1829 ( .A0(n1216), .A1(n1239), .B0(n1243), .B1(n1215), .Y(n642) );
  AOI22XLM U1832 ( .A0(n1216), .A1(n1248), .B0(n1245), .B1(n1215), .Y(n637) );
  AOI22XLM U1833 ( .A0(n1216), .A1(n1237), .B0(n1241), .B1(n1215), .Y(n640) );
  AOI22XLM U1834 ( .A0(n1216), .A1(n1245), .B0(n1244), .B1(n1215), .Y(n636) );
  AOI21BXLM U1835 ( .A0(n1221), .A1(n1218), .B0N(n1217), .Y(n1220) );
  OAI32XLM U1837 ( .A0(UART_TX_RX_U0_UART_RX_U4_count[3]), .A1(n1221), .A2(
        n1521), .B0(n1220), .B1(n1219), .Y(n659) );
  NAND2XLM U1838 ( .A(n1853), .B(n1690), .Y(n1857) );
  NAND2XLM U1839 ( .A(UART_TX_RX_U0_UART_RX_bit_cnt[0]), .B(
        UART_TX_RX_U0_UART_RX_bit_cnt[1]), .Y(n1227) );
  NAND3XLM U1840 ( .A(UART_TX_RX_U0_UART_RX_bit_cnt[0]), .B(
        UART_TX_RX_U0_UART_RX_bit_cnt[2]), .C(UART_TX_RX_U0_UART_RX_bit_cnt[1]), .Y(n1856) );
  OAI32XLM U1842 ( .A0(UART_TX_RX_U0_UART_RX_bit_cnt[2]), .A1(n1857), .A2(
        n1227), .B0(n1858), .B1(n1226), .Y(n656) );
  AOI22XLM U1844 ( .A0(UART_TX_RX_U0_UART_RX_bit_cnt[0]), .A1(n1690), .B0(
        n1857), .B1(n1852), .Y(n658) );
  OR2X1M U1845 ( .A(UART_TX_RX_U0_UART_RX_U7_c_state[1]), .B(
        UART_TX_RX_U0_UART_RX_U7_c_state[2]), .Y(n1228) );
  AOI221XLM U1846 ( .A0(UART_TX_RX_U0_UART_RX_samp_valid), .A1(
        UART_TX_RX_U0_UART_RX_U7_c_state[0]), .B0(UART_RX_IN), .B1(n1716), 
        .C0(n1228), .Y(n1229) );
  AOI31XLM U1847 ( .A0(UART_TX_RX_U0_UART_RX_U7_c_state[0]), .A1(n1231), .A2(
        n1230), .B0(n1229), .Y(n1232) );
  OAI31XLM U1848 ( .A0(n1235), .A1(n1234), .A2(n1233), .B0(n1232), .Y(
        UART_TX_RX_U0_UART_RX_U7_n_state_0_) );
  NAND2BXLM U1849 ( .AN(Rx2SysCtrl_pulse_out), .B(Rx2SysCtrl_SYNC[3]), .Y(
        n1247) );
  NAND2XLM U1850 ( .A(n1247), .B(synced_p_data[5]), .Y(n1236) );
  OAI21XLM U1851 ( .A0(n1247), .A1(n1237), .B0(n1236), .Y(n629) );
  NAND2XLM U1852 ( .A(n1247), .B(synced_p_data[7]), .Y(n1238) );
  OAI21XLM U1853 ( .A0(n1247), .A1(n1239), .B0(n1238), .Y(n634) );
  NAND2XLM U1854 ( .A(n1247), .B(synced_p_data[4]), .Y(n1240) );
  OAI21XLM U1855 ( .A0(n1247), .A1(n1241), .B0(n1240), .Y(n630) );
  NAND2XLM U1856 ( .A(n1247), .B(synced_p_data[6]), .Y(n1242) );
  OAI21XLM U1857 ( .A0(n1247), .A1(n1243), .B0(n1242), .Y(n628) );
  AOI22XLM U1859 ( .A0(n1899), .A1(n1244), .B0(n1866), .B1(n1247), .Y(n635) );
  AOI22XLM U1860 ( .A0(n1899), .A1(n1245), .B0(n1869), .B1(n1247), .Y(n633) );
  AOI22XLM U1862 ( .A0(n1899), .A1(n1246), .B0(n1867), .B1(n1247), .Y(n631) );
  AOI22XLM U1864 ( .A0(n1899), .A1(n1248), .B0(n1868), .B1(n1247), .Y(n632) );
  NAND2XLM U1865 ( .A(n1253), .B(synced_p_data[7]), .Y(n1249) );
  NAND2XLM U1866 ( .A(n1253), .B(synced_p_data[5]), .Y(n1250) );
  NAND2XLM U1867 ( .A(n1253), .B(synced_p_data[6]), .Y(n1251) );
  NAND2XLM U1868 ( .A(n1253), .B(synced_p_data[4]), .Y(n1252) );
  NAND2XLM U1869 ( .A(reg0[6]), .B(reg1[6]), .Y(n1549) );
  NOR2XLM U1870 ( .A(reg0[6]), .B(reg1[6]), .Y(n1259) );
  NOR2XLM U1871 ( .A(reg1[6]), .B(n1375), .Y(n1480) );
  NAND2BXLM U1873 ( .AN(reg0[6]), .B(reg1[6]), .Y(n1481) );
  OAI2BB2XLM U1875 ( .B0(n1259), .B1(n1667), .A0N(n1647), .A1N(n1498), .Y(
        n1258) );
  OAI22XLM U1877 ( .A0(n1508), .A1(n1256), .B0(n1670), .B1(n1255), .Y(n1257)
         );
  AOI22XLM U1878 ( .A0(reg0[5]), .A1(n1417), .B0(n1665), .B1(reg0[7]), .Y(
        n1260) );
  NAND2XLM U1880 ( .A(n1343), .B(n1642), .Y(n1267) );
  NAND2XLM U1882 ( .A(reg0[7]), .B(reg1[7]), .Y(n1326) );
  NAND2XLM U1883 ( .A(n1343), .B(reg1[7]), .Y(n1645) );
  NAND2BXLM U1884 ( .AN(reg1[7]), .B(reg0[7]), .Y(n1483) );
  NAND2XLM U1885 ( .A(n1645), .B(n1483), .Y(n1658) );
  AOI22XLM U1886 ( .A0(n1498), .A1(n1658), .B0(n1495), .B1(n1267), .Y(n1268)
         );
  OAI21XLM U1887 ( .A0(n1679), .A1(n1326), .B0(n1268), .Y(n1272) );
  AOI22XLM U1889 ( .A0(n1465), .A1(n1326), .B0(n1684), .B1(n1269), .Y(n1270)
         );
  OAI21XLM U1890 ( .A0(n1375), .A1(n1490), .B0(n1270), .Y(n1271) );
  NAND2XLM U1891 ( .A(reg0[3]), .B(reg1[3]), .Y(n1315) );
  NAND2X1M U1894 ( .A(n1301), .B(reg1[0]), .Y(n1288) );
  NAND2X1M U1895 ( .A(n1288), .B(reg0[4]), .Y(n1289) );
  OAI21X2M U1896 ( .A0(n1290), .A1(n1293), .B0(n1289), .Y(n1399) );
  XNOR2XLM U1897 ( .A(n1293), .B(reg1[1]), .Y(n1294) );
  NOR2XLM U1898 ( .A(n1304), .B(reg1[3]), .Y(n1305) );
  OAI22X1M U1900 ( .A0(n1384), .A1(n1305), .B0(n1386), .B1(n1589), .Y(n1308)
         );
  OAI2BB1X2M U1901 ( .A0N(n1407), .A1N(n1308), .B0(n1306), .Y(n1307) );
  OAI21X2M U1902 ( .A0(n1309), .A1(n1308), .B0(n1307), .Y(n1408) );
  NOR2XLM U1904 ( .A(reg0[3]), .B(reg1[3]), .Y(n1312) );
  OAI22XLM U1905 ( .A0(intadd_4_CI), .A1(n1670), .B0(n1667), .B1(n1312), .Y(
        n1311) );
  NOR2XLM U1906 ( .A(reg0[3]), .B(n1589), .Y(n1471) );
  NAND2BXLM U1908 ( .AN(reg1[3]), .B(reg0[3]), .Y(n1470) );
  AOI21XLM U1909 ( .A0(n1653), .A1(n1470), .B0(n1669), .Y(n1310) );
  AOI211XLM U1910 ( .A0(n1312), .A1(n1674), .B0(n1311), .C0(n1310), .Y(n1314)
         );
  AOI22XLM U1911 ( .A0(reg0[2]), .A1(n1417), .B0(n1665), .B1(reg0[4]), .Y(
        n1313) );
  NAND2XLM U1914 ( .A(reg0[7]), .B(reg1[5]), .Y(n1547) );
  NAND2XLM U1915 ( .A(n1547), .B(n1549), .Y(n1324) );
  AND2X1M U1916 ( .A(reg0[5]), .B(reg1[7]), .Y(n1548) );
  AOI2BB2XLM U1917 ( .B0(n1324), .B1(n1548), .A0N(n1549), .A1N(n1547), .Y(
        n1544) );
  NAND2XLM U1918 ( .A(reg0[6]), .B(reg1[7]), .Y(n1546) );
  NOR2XLM U1919 ( .A(n1343), .B(n1632), .Y(n1545) );
  NAND2XLM U1920 ( .A(reg0[6]), .B(reg1[5]), .Y(n1541) );
  NOR2XLM U1921 ( .A(n1343), .B(n1625), .Y(n1542) );
  NAND2XLM U1922 ( .A(reg0[4]), .B(reg1[7]), .Y(n1543) );
  NAND2XLM U1924 ( .A(reg0[7]), .B(reg1[2]), .Y(n1370) );
  NAND2XLM U1925 ( .A(reg0[2]), .B(reg1[7]), .Y(n1372) );
  NAND2XLM U1926 ( .A(reg0[6]), .B(reg1[1]), .Y(n1379) );
  NAND2XLM U1927 ( .A(reg0[3]), .B(reg1[5]), .Y(n1558) );
  AOI22XLM U1930 ( .A0(reg0[6]), .A1(reg1[2]), .B0(reg0[7]), .B1(reg1[1]), .Y(
        n1346) );
  NAND2XLM U1931 ( .A(reg0[4]), .B(reg1[5]), .Y(n1555) );
  AOI22XLM U1933 ( .A0(reg1[0]), .A1(reg0[5]), .B0(reg0[4]), .B1(reg1[1]), .Y(
        n1357) );
  NOR2XLM U1935 ( .A(n1367), .B(n1587), .Y(n1358) );
  NAND2XLM U1936 ( .A(reg0[0]), .B(reg1[5]), .Y(n1567) );
  AOI22XLM U1937 ( .A0(reg1[0]), .A1(reg0[3]), .B0(reg0[2]), .B1(reg1[1]), .Y(
        n1365) );
  NAND2XLM U1938 ( .A(reg0[4]), .B(reg1[0]), .Y(n1368) );
  AOI22XLM U1939 ( .A0(reg1[0]), .A1(reg0[6]), .B0(reg0[5]), .B1(reg1[1]), .Y(
        n1376) );
  NAND2XLM U1940 ( .A(reg0[7]), .B(reg1[0]), .Y(n1378) );
  NOR2XLM U1941 ( .A(n1380), .B(n1587), .Y(n1381) );
  NAND2XLM U1942 ( .A(reg0[0]), .B(reg1[7]), .Y(n1564) );
  NAND2XLM U1943 ( .A(reg0[2]), .B(reg1[2]), .Y(n1420) );
  XOR2XLM U1944 ( .A(n1384), .B(n1589), .Y(n1385) );
  XOR2XLM U1945 ( .A(n1392), .B(reg1[2]), .Y(n1389) );
  XOR2XLM U1946 ( .A(n1390), .B(n1389), .Y(n1391) );
  XNOR2XLM U1949 ( .A(n1397), .B(reg1[1]), .Y(n1398) );
  OAI2BB2X1M U1951 ( .B0(reg1[4]), .B1(n1445), .A0N(n1406), .A1N(n1443), .Y(
        n1410) );
  NOR2XLM U1953 ( .A(reg0[2]), .B(reg1[2]), .Y(n1416) );
  OAI22XLM U1954 ( .A0(intadd_6_A_0_), .A1(n1670), .B0(n1667), .B1(n1416), .Y(
        n1415) );
  NAND2BXLM U1955 ( .AN(reg0[2]), .B(reg1[2]), .Y(n1651) );
  NAND2BXLM U1956 ( .AN(reg1[2]), .B(reg0[2]), .Y(n1467) );
  AOI22XLM U1957 ( .A0(reg0[1]), .A1(n1417), .B0(n1665), .B1(reg0[3]), .Y(
        n1418) );
  NAND2XLM U1959 ( .A(reg0[1]), .B(reg1[1]), .Y(n1500) );
  NAND2XLM U1960 ( .A(reg0[0]), .B(reg1[2]), .Y(n1426) );
  AOI21XLM U1961 ( .A0(n1500), .A1(n1426), .B0(n1532), .Y(intadd_7_B_0_) );
  OAI21X1M U1962 ( .A0(n1449), .A1(n1429), .B0(n1427), .Y(n1572) );
  XNOR2XLM U1963 ( .A(n1429), .B(reg1[1]), .Y(n1430) );
  XOR2X2M U1964 ( .A(n1432), .B(n1431), .Y(n1577) );
  XOR2XLM U1965 ( .A(n1587), .B(n1433), .Y(n1434) );
  XOR2XLM U1966 ( .A(n1439), .B(n1589), .Y(n1440) );
  XOR2XLM U1967 ( .A(n1443), .B(n1625), .Y(n1444) );
  NAND2XLM U1969 ( .A(n1536), .B(reg1[1]), .Y(n1497) );
  NAND2BXLM U1970 ( .AN(reg1[1]), .B(reg0[1]), .Y(n1496) );
  NAND2BXLM U1971 ( .AN(n1655), .B(n1496), .Y(n1455) );
  NAND2XLM U1972 ( .A(n1470), .B(n1467), .Y(n1656) );
  AOI31XLM U1973 ( .A0(n1497), .A1(n1455), .A2(n1651), .B0(n1656), .Y(n1456)
         );
  OAI211XLM U1974 ( .A0(n1456), .A1(n1471), .B0(n1473), .C0(n1477), .Y(n1459)
         );
  AOI21XLM U1975 ( .A0(n1459), .A1(n1458), .B0(n1480), .Y(n1461) );
  OAI21XLM U1977 ( .A0(n1461), .A1(n1460), .B0(n1483), .Y(n1464) );
  NAND2BXLM U1978 ( .AN(reg1[0]), .B(reg0[0]), .Y(n1654) );
  OAI21XLM U1981 ( .A0(n1472), .A1(n1471), .B0(n1470), .Y(n1476) );
  OAI21XLM U1984 ( .A0(n1479), .A1(n1478), .B0(n1477), .Y(n1482) );
  AOI21XLM U1985 ( .A0(n1482), .A1(n1481), .B0(n1480), .Y(n1485) );
  OAI21XLM U1987 ( .A0(n1485), .A1(n1484), .B0(n1483), .Y(n1487) );
  NAND2XLM U1988 ( .A(n1536), .B(n1583), .Y(n1499) );
  NAND2XLM U1989 ( .A(reg0[1]), .B(reg1[0]), .Y(n1492) );
  NAND2XLM U1990 ( .A(n1497), .B(n1496), .Y(n1648) );
  AOI22XLM U1991 ( .A0(n1498), .A1(n1648), .B0(n1665), .B1(reg0[2]), .Y(n1503)
         );
  AOI2BB2XLM U1992 ( .B0(n1501), .B1(n1674), .A0N(n1679), .A1N(n1500), .Y(
        n1502) );
  XOR2XLM U1993 ( .A(DP_OP_196J1_124_5161_n43), .B(reg1[1]), .Y(
        DP_OP_196J1_124_5161_n28) );
  XOR2XLM U1994 ( .A(DP_OP_196J1_124_5161_n43), .B(reg1[5]), .Y(
        DP_OP_196J1_124_5161_n24) );
  XOR2XLM U1995 ( .A(DP_OP_196J1_124_5161_n43), .B(reg1[7]), .Y(
        DP_OP_196J1_124_5161_n22) );
  OAI21XLM U1996 ( .A0(UART_TX_RX_U0_UART_TX_U2_current_state[0]), .A1(n1901), 
        .B0(n1509), .Y(busy) );
  AO2B2XLM U1997 ( .B0(UART_TX_RX_U0_UART_TX_ser_done), .B1(n861), .A0(n1511), 
        .A1N(n1510), .Y(n860) );
  OAI22XLM U1999 ( .A0(n1514), .A1(FIFO_u_w_ptr_synch[0]), .B0(n1513), .B1(
        FIFO_u_w_ptr_synch[1]), .Y(n1512) );
  AOI221XLM U2000 ( .A0(n1514), .A1(FIFO_u_w_ptr_synch[0]), .B0(
        FIFO_u_w_ptr_synch[1]), .B1(n1513), .C0(n1512), .Y(n1519) );
  OAI22XLM U2002 ( .A0(n1517), .A1(FIFO_u_w_ptr_synch[3]), .B0(n1516), .B1(
        FIFO_u_w_ptr_synch[2]), .Y(n1515) );
  AOI221XLM U2003 ( .A0(n1517), .A1(FIFO_u_w_ptr_synch[3]), .B0(
        FIFO_u_w_ptr_synch[2]), .B1(n1516), .C0(n1515), .Y(n1518) );
  AND2X1M U2004 ( .A(n1519), .B(n1518), .Y(eq_x_40_n25) );
  AND2X1M U2005 ( .A(n1520), .B(UART_TX_RX_U0_UART_RX_samp_valid), .Y(
        UART_TX_RX_U0_UART_RX_stp_chk_en) );
  NOR2BXLM U2006 ( .AN(UART_TX_RX_U0_UART_RX_stp_chk_en), .B(
        UART_TX_RX_U0_UART_RX_samp_b), .Y(UART_TX_RX_U0_UART_RX_U6_N5) );
  OA21XLM U2007 ( .A0(UART_TX_RX_U0_UART_RX_U4_count[1]), .A1(n1522), .B0(
        n1521), .Y(n661) );
  NAND2XLM U2008 ( .A(n1537), .B(synced_p_data[4]), .Y(n1523) );
  OAI21XLM U2009 ( .A0(n1537), .A1(n1625), .B0(n1523), .Y(n717) );
  OAI2BB1XLM U2010 ( .A0N(rd_data_vld), .A1N(n1720), .B0(n1524), .Y(n878) );
  OR2X1M U2011 ( .A(sys_ctrl_u_reg3_cfg), .B(n1845), .Y(n649) );
  AOI221XLM U2012 ( .A0(n1526), .A1(FIFO_u_r_ptr_synch[1]), .B0(
        FIFO_u_r_ptr_synch[3]), .B1(FIFO_u_U4_WR_PTR_GRAY_NEXT[3]), .C0(n1525), 
        .Y(n1530) );
  AOI221XLM U2013 ( .A0(n1528), .A1(FIFO_u_r_ptr_synch[0]), .B0(
        FIFO_u_r_ptr_synch[2]), .B1(FIFO_u_U4_WR_PTR_GRAY_NEXT[2]), .C0(n1527), 
        .Y(n1529) );
  NOR2XLM U2014 ( .A(n1532), .B(n1531), .Y(n1534) );
  XOR2XLM U2015 ( .A(n1534), .B(n1533), .Y(intadd_7_B_1_) );
  AND2X1M U2016 ( .A(reg0[6]), .B(reg1[3]), .Y(n1876) );
  AND2X1M U2017 ( .A(reg0[7]), .B(reg1[3]), .Y(n1877) );
  AND2X1M U2018 ( .A(reg0[4]), .B(reg1[3]), .Y(n1878) );
  AND2X1M U2019 ( .A(reg0[1]), .B(reg1[4]), .Y(n1880) );
  AND2X1M U2020 ( .A(reg0[5]), .B(reg1[4]), .Y(n1881) );
  AND2X1M U2021 ( .A(reg0[2]), .B(reg1[5]), .Y(n1882) );
  AND2X1M U2022 ( .A(reg0[3]), .B(reg1[7]), .Y(n1883) );
  AND2X1M U2023 ( .A(reg0[0]), .B(reg1[4]), .Y(n1884) );
  AND2X1M U2024 ( .A(reg0[2]), .B(reg1[3]), .Y(n1886) );
  AND2X1M U2025 ( .A(reg0[1]), .B(reg1[5]), .Y(n1887) );
  AND2X1M U2026 ( .A(reg0[2]), .B(reg1[4]), .Y(n1889) );
  AND2X1M U2027 ( .A(reg0[3]), .B(reg1[4]), .Y(n1890) );
  AND2X1M U2028 ( .A(reg0[3]), .B(reg1[6]), .Y(n1891) );
  AND2X1M U2029 ( .A(reg0[6]), .B(reg1[4]), .Y(n1892) );
  AND2X1M U2030 ( .A(reg0[2]), .B(reg1[6]), .Y(n1893) );
  AND2X1M U2031 ( .A(reg0[5]), .B(reg1[6]), .Y(n1894) );
  XOR2XLM U2032 ( .A(DP_OP_196J1_124_5161_n43), .B(reg1[6]), .Y(
        DP_OP_196J1_124_5161_n23) );
  XOR2XLM U2033 ( .A(DP_OP_196J1_124_5161_n43), .B(reg1[4]), .Y(
        DP_OP_196J1_124_5161_n25) );
  XOR2XLM U2034 ( .A(DP_OP_196J1_124_5161_n43), .B(reg1[3]), .Y(
        DP_OP_196J1_124_5161_n26) );
  XOR2XLM U2035 ( .A(DP_OP_196J1_124_5161_n43), .B(reg1[2]), .Y(
        DP_OP_196J1_124_5161_n27) );
  XOR2XLM U2036 ( .A(DP_OP_196J1_124_5161_n43), .B(reg1[0]), .Y(
        DP_OP_196J1_124_5161_n29) );
  MXI2XLM U2037 ( .A(n1583), .B(n1810), .S0(n1537), .Y(n768) );
  MXI2XLM U2038 ( .A(n1589), .B(n1828), .S0(n1537), .Y(n734) );
  MXI2XLM U2039 ( .A(n1810), .B(n1536), .S0(n1535), .Y(n767) );
  MXI2XLM U2040 ( .A(n1587), .B(n1826), .S0(n1537), .Y(n751) );
  XOR3XLM U2041 ( .A(n1540), .B(n1539), .C(n1538), .Y(intadd_7_B_2_) );
  XOR3XLM U2042 ( .A(n1543), .B(n1542), .C(n1541), .Y(intadd_2_A_1_) );
  XOR3XLM U2043 ( .A(n1546), .B(n1545), .C(n1544), .Y(intadd_2_B_3_) );
  XOR3XLM U2044 ( .A(n1549), .B(n1548), .C(n1547), .Y(intadd_2_B_2_) );
  XOR3XLM U2045 ( .A(n1552), .B(n1551), .C(n1550), .Y(intadd_5_B_1_) );
  XOR3XLM U2046 ( .A(n1555), .B(n1554), .C(n1553), .Y(intadd_3_A_3_) );
  XOR3XLM U2047 ( .A(n1558), .B(n1557), .C(n1556), .Y(intadd_3_A_2_) );
  XOR3XLM U2048 ( .A(n1561), .B(n1560), .C(n1559), .Y(intadd_3_B_2_) );
  XOR3XLM U2049 ( .A(n1564), .B(n1563), .C(n1562), .Y(intadd_4_B_1_) );
  XOR3XLM U2050 ( .A(intadd_4_SUM_0_), .B(intadd_3_SUM_0_), .C(intadd_1_SUM_1_), .Y(intadd_6_B_2_) );
  XOR3XLM U2051 ( .A(n1567), .B(n1566), .C(n1565), .Y(intadd_6_B_1_) );
  NAND2XLM U2053 ( .A(n1570), .B(n1569), .Y(n1571) );
  NOR2XLM U2054 ( .A(n1588), .B(n1587), .Y(n1579) );
  NOR2XLM U2055 ( .A(n1590), .B(n1589), .Y(n1593) );
  NOR2XLM U2056 ( .A(n1579), .B(n1593), .Y(n1596) );
  NOR2XLM U2057 ( .A(n1655), .B(n1583), .Y(n1585) );
  NAND2XLM U2058 ( .A(n1655), .B(n1583), .Y(n1584) );
  AOI21XLM U2059 ( .A0(n1596), .A1(n1595), .B0(n1594), .Y(n1639) );
  NOR2XLM U2060 ( .A(n1626), .B(n1625), .Y(n1612) );
  NOR2XLM U2061 ( .A(n1612), .B(n1631), .Y(n1624) );
  AOI21XLM U2062 ( .A0(n1636), .A1(n1635), .B0(n1634), .Y(n1637) );
  AND2X1M U2063 ( .A(n1641), .B(n1640), .Y(n1643) );
  NAND2XLM U2064 ( .A(reg0[0]), .B(reg1[0]), .Y(n1678) );
  NOR4XLM U2065 ( .A(n1650), .B(n1649), .C(n1648), .D(n1647), .Y(n1661) );
  NAND3XLM U2066 ( .A(n1653), .B(n1652), .C(n1651), .Y(n1657) );
  NAND2XLM U2067 ( .A(n1655), .B(n1654), .Y(n1666) );
  NOR4XLM U2068 ( .A(n1658), .B(n1657), .C(n1656), .D(n1666), .Y(n1660) );
  AND4XLM U2069 ( .A(n1662), .B(n1661), .C(n1660), .D(n1659), .Y(n1663) );
  AOI211XLM U2070 ( .A0(n1665), .A1(reg0[1]), .B0(n1664), .C0(n1663), .Y(n1677) );
  NOR2XLM U2071 ( .A(reg0[0]), .B(reg1[0]), .Y(n1675) );
  OAI22XLM U2073 ( .A0(n1669), .A1(n1668), .B0(n1667), .B1(n1675), .Y(n1673)
         );
  MXI2XLM U2074 ( .A(n1671), .B(n1670), .S0(n1678), .Y(n1672) );
  NOR2XLM U2075 ( .A(UART_TX_RX_U0_UART_RX_edge_cnt[0]), .B(n1690), .Y(
        UART_TX_RX_U0_UART_RX_U1_N111) );
  AOI221XLM U2076 ( .A0(UART_TX_RX_U0_UART_RX_edge_cnt[0]), .A1(
        UART_TX_RX_U0_UART_RX_edge_cnt[1]), .B0(n1686), .B1(n1685), .C0(n1690), 
        .Y(UART_TX_RX_U0_UART_RX_U1_N112) );
  AOI221XLM U2077 ( .A0(UART_TX_RX_U0_UART_RX_edge_cnt[3]), .A1(n1689), .B0(
        n1688), .B1(n1687), .C0(n1690), .Y(UART_TX_RX_U0_UART_RX_U1_N114) );
  AOI221XLM U2078 ( .A0(UART_TX_RX_U0_UART_RX_edge_cnt[5]), .A1(n1693), .B0(
        n1692), .B1(n1691), .C0(n1690), .Y(UART_TX_RX_U0_UART_RX_U1_N116) );
  AOI221XLM U2079 ( .A0(reg2[0]), .A1(
        UART_TX_RX_U0_UART_TX_U2_current_state[0]), .B0(n1695), .B1(
        UART_TX_RX_U0_UART_TX_U2_current_state[0]), .C0(n1694), .Y(
        UART_TX_RX_U0_UART_TX_U2_next_state[2]) );
  NAND2XLM U2080 ( .A(FIFO_u_r_addr[1]), .B(FIFO_u_r_addr[0]), .Y(n1800) );
  NAND2XLM U2081 ( .A(n1696), .B(FIFO_u_r_addr[0]), .Y(n1804) );
  AOI21XLM U2083 ( .A0(n1796), .A1(FIFO_u_U1_mem[48]), .B0(FIFO_u_r_addr[2]), 
        .Y(n1698) );
  NOR2XLM U2084 ( .A(FIFO_u_r_addr[1]), .B(FIFO_u_r_addr[0]), .Y(n1807) );
  NOR2XLM U2085 ( .A(FIFO_u_r_addr[0]), .B(n1696), .Y(n1802) );
  AOI22XLM U2086 ( .A0(n1807), .A1(FIFO_u_U1_mem[56]), .B0(n1802), .B1(
        FIFO_u_U1_mem[40]), .Y(n1697) );
  OAI211XLM U2087 ( .A0(n1800), .A1(n1699), .B0(n1698), .C0(n1697), .Y(n1703)
         );
  AOI22XLM U2089 ( .A0(n1802), .A1(FIFO_u_U1_mem[8]), .B0(n1801), .B1(
        FIFO_u_U1_mem[0]), .Y(n1700) );
  OAI211XLM U2090 ( .A0(n1701), .A1(n1804), .B0(FIFO_u_r_addr[2]), .C0(n1700), 
        .Y(n1702) );
  AOI221XLM U2091 ( .A0(UART_TX_RX_U0_UART_TX_U1_mem[5]), .A1(
        UART_TX_RX_U0_UART_TX_U1_counter[2]), .B0(
        UART_TX_RX_U0_UART_TX_U1_mem[1]), .B1(n1705), .C0(
        UART_TX_RX_U0_UART_TX_U1_counter[1]), .Y(n1710) );
  AOI221XLM U2092 ( .A0(UART_TX_RX_U0_UART_TX_U1_counter[2]), .A1(
        UART_TX_RX_U0_UART_TX_U1_mem[7]), .B0(n1705), .B1(
        UART_TX_RX_U0_UART_TX_U1_mem[3]), .C0(n1704), .Y(n1709) );
  AOI221XLM U2093 ( .A0(UART_TX_RX_U0_UART_TX_U1_mem[4]), .A1(
        UART_TX_RX_U0_UART_TX_U1_counter[2]), .B0(
        UART_TX_RX_U0_UART_TX_U1_mem[0]), .B1(n1705), .C0(
        UART_TX_RX_U0_UART_TX_U1_counter[1]), .Y(n1707) );
  AOI221XLM U2094 ( .A0(UART_TX_RX_U0_UART_TX_U1_counter[2]), .A1(
        UART_TX_RX_U0_UART_TX_U1_mem[6]), .B0(n1705), .B1(
        UART_TX_RX_U0_UART_TX_U1_mem[2]), .C0(n1704), .Y(n1706) );
  OR2X1M U2095 ( .A(n1707), .B(n1706), .Y(n1708) );
  OAI32XLM U2096 ( .A0(n1711), .A1(n1710), .A2(n1709), .B0(
        UART_TX_RX_U0_UART_TX_U1_counter[0]), .B1(n1708), .Y(n1712) );
  OAI2BB2XLM U2097 ( .B0(n1811), .B1(n1713), .A0N(
        UART_TX_RX_U0_UART_TX_U1_loading), .A1N(n1712), .Y(n883) );
  AOI221XLM U2098 ( .A0(UART_TX_RX_U0_UART_RX_U7_c_state[0]), .A1(
        UART_TX_RX_U0_UART_RX_par_done), .B0(n1716), .B1(n1715), .C0(n1714), 
        .Y(n1717) );
  OAI21BXLM U2099 ( .A0(UART_TX_RX_U0_UART_RX_strt_glitch), .A1(n1718), .B0N(
        n1717), .Y(n882) );
  AOI2BB2XLM U2100 ( .B0(n1832), .B1(n1735), .A0N(Regfile_u_reg_file_15__0_), 
        .A1N(n1832), .Y(n877) );
  AOI2BB2XLM U2101 ( .B0(n1833), .B1(n1735), .A0N(Regfile_u_reg_file_14__0_), 
        .A1N(n1833), .Y(n876) );
  AOI2BB2XLM U2102 ( .B0(n1834), .B1(n1735), .A0N(Regfile_u_reg_file_13__0_), 
        .A1N(n1834), .Y(n875) );
  AOI2BB2XLM U2103 ( .B0(n1835), .B1(n1735), .A0N(Regfile_u_reg_file_12__0_), 
        .A1N(n1835), .Y(n874) );
  AOI2BB2XLM U2104 ( .B0(n1836), .B1(n1735), .A0N(Regfile_u_reg_file_11__0_), 
        .A1N(n1836), .Y(n873) );
  AOI2BB2XLM U2105 ( .B0(n1837), .B1(n1735), .A0N(Regfile_u_reg_file_10__0_), 
        .A1N(n1837), .Y(n872) );
  AOI2BB2XLM U2106 ( .B0(n1838), .B1(n1735), .A0N(Regfile_u_reg_file_9__0_), 
        .A1N(n1838), .Y(n871) );
  AOI2BB2XLM U2107 ( .B0(n1839), .B1(n1735), .A0N(Regfile_u_reg_file_8__0_), 
        .A1N(n1839), .Y(n870) );
  AOI2BB2XLM U2108 ( .B0(n1840), .B1(n1735), .A0N(Regfile_u_reg_file_7__0_), 
        .A1N(n1840), .Y(n869) );
  AOI2BB2XLM U2109 ( .B0(n1841), .B1(n1735), .A0N(Regfile_u_reg_file_6__0_), 
        .A1N(n1841), .Y(n868) );
  AOI2BB2XLM U2110 ( .B0(n1842), .B1(n1735), .A0N(Regfile_u_reg_file_5__0_), 
        .A1N(n1842), .Y(n867) );
  AOI2BB2XLM U2111 ( .B0(n1843), .B1(n1735), .A0N(Regfile_u_reg_file_4__0_), 
        .A1N(n1843), .Y(n866) );
  AOI2BB2XLM U2112 ( .B0(n1845), .B1(n1735), .A0N(reg3[0]), .A1N(n1845), .Y(
        n865) );
  AOI2BB2XLM U2113 ( .B0(n1736), .B1(n1745), .A0N(FIFO_u_U1_mem[0]), .A1N(
        n1736), .Y(n858) );
  AOI2BB2XLM U2114 ( .B0(n1736), .B1(n1746), .A0N(FIFO_u_U1_mem[7]), .A1N(
        n1736), .Y(n857) );
  AOI2BB2XLM U2115 ( .B0(n1736), .B1(n1754), .A0N(FIFO_u_U1_mem[6]), .A1N(
        n1736), .Y(n856) );
  AOI2BB2XLM U2116 ( .B0(n1736), .B1(n1762), .A0N(FIFO_u_U1_mem[5]), .A1N(
        n1736), .Y(n855) );
  AOI2BB2XLM U2117 ( .B0(n1736), .B1(n1770), .A0N(FIFO_u_U1_mem[4]), .A1N(
        n1736), .Y(n854) );
  AOI2BB2XLM U2118 ( .B0(n1736), .B1(n1778), .A0N(FIFO_u_U1_mem[3]), .A1N(
        n1736), .Y(n853) );
  AOI2BB2XLM U2119 ( .B0(n1736), .B1(n1786), .A0N(FIFO_u_U1_mem[2]), .A1N(
        n1736), .Y(n852) );
  AOI2BB2XLM U2120 ( .B0(n1736), .B1(n1794), .A0N(FIFO_u_U1_mem[1]), .A1N(
        n1736), .Y(n851) );
  AOI2BB2XLM U2122 ( .B0(n1737), .B1(n1745), .A0N(FIFO_u_U1_mem[8]), .A1N(
        n1737), .Y(n850) );
  AOI2BB2XLM U2123 ( .B0(n1737), .B1(n1746), .A0N(FIFO_u_U1_mem[15]), .A1N(
        n1737), .Y(n849) );
  AOI2BB2XLM U2124 ( .B0(n1737), .B1(n1754), .A0N(FIFO_u_U1_mem[14]), .A1N(
        n1737), .Y(n848) );
  AOI2BB2XLM U2125 ( .B0(n1737), .B1(n1762), .A0N(FIFO_u_U1_mem[13]), .A1N(
        n1737), .Y(n847) );
  AOI2BB2XLM U2126 ( .B0(n1737), .B1(n1770), .A0N(FIFO_u_U1_mem[12]), .A1N(
        n1737), .Y(n846) );
  AOI2BB2XLM U2127 ( .B0(n1737), .B1(n1778), .A0N(FIFO_u_U1_mem[11]), .A1N(
        n1737), .Y(n845) );
  AOI2BB2XLM U2128 ( .B0(n1737), .B1(n1786), .A0N(FIFO_u_U1_mem[10]), .A1N(
        n1737), .Y(n844) );
  AOI2BB2XLM U2129 ( .B0(n1737), .B1(n1794), .A0N(FIFO_u_U1_mem[9]), .A1N(
        n1737), .Y(n843) );
  AOI2BB2XLM U2130 ( .B0(n1739), .B1(n1745), .A0N(FIFO_u_U1_mem[24]), .A1N(
        n1739), .Y(n834) );
  AOI2BB2XLM U2131 ( .B0(n1739), .B1(n1746), .A0N(FIFO_u_U1_mem[31]), .A1N(
        n1739), .Y(n833) );
  AOI2BB2XLM U2132 ( .B0(n1739), .B1(n1754), .A0N(FIFO_u_U1_mem[30]), .A1N(
        n1739), .Y(n832) );
  AOI2BB2XLM U2133 ( .B0(n1739), .B1(n1762), .A0N(FIFO_u_U1_mem[29]), .A1N(
        n1739), .Y(n831) );
  AOI2BB2XLM U2134 ( .B0(n1739), .B1(n1770), .A0N(FIFO_u_U1_mem[28]), .A1N(
        n1739), .Y(n830) );
  AOI2BB2XLM U2135 ( .B0(n1739), .B1(n1778), .A0N(FIFO_u_U1_mem[27]), .A1N(
        n1739), .Y(n829) );
  AOI2BB2XLM U2136 ( .B0(n1739), .B1(n1786), .A0N(FIFO_u_U1_mem[26]), .A1N(
        n1739), .Y(n828) );
  AOI2BB2XLM U2137 ( .B0(n1739), .B1(n1794), .A0N(FIFO_u_U1_mem[25]), .A1N(
        n1739), .Y(n827) );
  AOI2BB2XLM U2138 ( .B0(n1741), .B1(n1745), .A0N(FIFO_u_U1_mem[40]), .A1N(
        n1741), .Y(n818) );
  AOI2BB2XLM U2139 ( .B0(n1741), .B1(n1746), .A0N(FIFO_u_U1_mem[47]), .A1N(
        n1741), .Y(n817) );
  AOI2BB2XLM U2140 ( .B0(n1741), .B1(n1754), .A0N(FIFO_u_U1_mem[46]), .A1N(
        n1741), .Y(n816) );
  AOI2BB2XLM U2141 ( .B0(n1741), .B1(n1762), .A0N(FIFO_u_U1_mem[45]), .A1N(
        n1741), .Y(n815) );
  AOI2BB2XLM U2142 ( .B0(n1741), .B1(n1770), .A0N(FIFO_u_U1_mem[44]), .A1N(
        n1741), .Y(n814) );
  AOI2BB2XLM U2143 ( .B0(n1741), .B1(n1778), .A0N(FIFO_u_U1_mem[43]), .A1N(
        n1741), .Y(n813) );
  AOI2BB2XLM U2144 ( .B0(n1741), .B1(n1786), .A0N(FIFO_u_U1_mem[42]), .A1N(
        n1741), .Y(n812) );
  AOI2BB2XLM U2145 ( .B0(n1741), .B1(n1794), .A0N(FIFO_u_U1_mem[41]), .A1N(
        n1741), .Y(n811) );
  AOI2BB2XLM U2146 ( .B0(n1743), .B1(n1745), .A0N(FIFO_u_U1_mem[48]), .A1N(
        n1743), .Y(n810) );
  AOI2BB2XLM U2147 ( .B0(n1743), .B1(n1746), .A0N(FIFO_u_U1_mem[55]), .A1N(
        n1743), .Y(n809) );
  AOI2BB2XLM U2148 ( .B0(n1743), .B1(n1754), .A0N(FIFO_u_U1_mem[54]), .A1N(
        n1743), .Y(n808) );
  AOI2BB2XLM U2149 ( .B0(n1743), .B1(n1762), .A0N(FIFO_u_U1_mem[53]), .A1N(
        n1743), .Y(n807) );
  AOI2BB2XLM U2150 ( .B0(n1743), .B1(n1770), .A0N(FIFO_u_U1_mem[52]), .A1N(
        n1743), .Y(n806) );
  AOI2BB2XLM U2151 ( .B0(n1743), .B1(n1778), .A0N(FIFO_u_U1_mem[51]), .A1N(
        n1743), .Y(n805) );
  AOI2BB2XLM U2152 ( .B0(n1743), .B1(n1786), .A0N(FIFO_u_U1_mem[50]), .A1N(
        n1743), .Y(n804) );
  AOI2BB2XLM U2153 ( .B0(n1743), .B1(n1794), .A0N(FIFO_u_U1_mem[49]), .A1N(
        n1743), .Y(n803) );
  AOI2BB2XLM U2154 ( .B0(n1795), .B1(n1745), .A0N(FIFO_u_U1_mem[56]), .A1N(
        n1795), .Y(n802) );
  AOI2BB2XLM U2155 ( .B0(n1809), .B1(n1811), .A0N(
        UART_TX_RX_U0_UART_TX_U1_mem[0]), .A1N(n1809), .Y(n801) );
  AOI2BB2XLM U2156 ( .B0(n1795), .B1(n1746), .A0N(FIFO_u_U1_mem[63]), .A1N(
        n1795), .Y(n800) );
  AOI21XLM U2157 ( .A0(n1796), .A1(FIFO_u_U1_mem[55]), .B0(FIFO_u_r_addr[2]), 
        .Y(n1748) );
  AOI22XLM U2158 ( .A0(n1807), .A1(FIFO_u_U1_mem[63]), .B0(n1802), .B1(
        FIFO_u_U1_mem[47]), .Y(n1747) );
  AOI22XLM U2159 ( .A0(n1802), .A1(FIFO_u_U1_mem[15]), .B0(n1801), .B1(
        FIFO_u_U1_mem[7]), .Y(n1750) );
  OAI211XLM U2160 ( .A0(n1751), .A1(n1804), .B0(FIFO_u_r_addr[2]), .C0(n1750), 
        .Y(n1752) );
  AOI32XLM U2161 ( .A0(FIFO_u_U1_mem[31]), .A1(n1753), .A2(n1807), .B0(n1752), 
        .B1(n1753), .Y(n1818) );
  AOI2BB2XLM U2162 ( .B0(n1809), .B1(n1818), .A0N(
        UART_TX_RX_U0_UART_TX_U1_mem[7]), .A1N(n1809), .Y(n799) );
  AOI2BB2XLM U2163 ( .B0(n1795), .B1(n1754), .A0N(FIFO_u_U1_mem[62]), .A1N(
        n1795), .Y(n798) );
  AOI21XLM U2164 ( .A0(n1796), .A1(FIFO_u_U1_mem[54]), .B0(FIFO_u_r_addr[2]), 
        .Y(n1756) );
  AOI22XLM U2165 ( .A0(n1807), .A1(FIFO_u_U1_mem[62]), .B0(n1802), .B1(
        FIFO_u_U1_mem[46]), .Y(n1755) );
  AOI22XLM U2166 ( .A0(n1802), .A1(FIFO_u_U1_mem[14]), .B0(n1801), .B1(
        FIFO_u_U1_mem[6]), .Y(n1758) );
  OAI211XLM U2167 ( .A0(n1759), .A1(n1804), .B0(FIFO_u_r_addr[2]), .C0(n1758), 
        .Y(n1760) );
  AOI32XLM U2168 ( .A0(FIFO_u_U1_mem[30]), .A1(n1761), .A2(n1807), .B0(n1760), 
        .B1(n1761), .Y(n1815) );
  AOI2BB2XLM U2169 ( .B0(n1809), .B1(n1815), .A0N(
        UART_TX_RX_U0_UART_TX_U1_mem[6]), .A1N(n1809), .Y(n797) );
  AOI2BB2XLM U2170 ( .B0(n1795), .B1(n1762), .A0N(FIFO_u_U1_mem[61]), .A1N(
        n1795), .Y(n796) );
  AOI21XLM U2171 ( .A0(n1796), .A1(FIFO_u_U1_mem[53]), .B0(FIFO_u_r_addr[2]), 
        .Y(n1764) );
  AOI22XLM U2172 ( .A0(n1807), .A1(FIFO_u_U1_mem[61]), .B0(n1802), .B1(
        FIFO_u_U1_mem[45]), .Y(n1763) );
  OAI211XLM U2173 ( .A0(n1800), .A1(n1765), .B0(n1764), .C0(n1763), .Y(n1769)
         );
  AOI22XLM U2174 ( .A0(n1802), .A1(FIFO_u_U1_mem[13]), .B0(n1801), .B1(
        FIFO_u_U1_mem[5]), .Y(n1766) );
  OAI211XLM U2175 ( .A0(n1767), .A1(n1804), .B0(FIFO_u_r_addr[2]), .C0(n1766), 
        .Y(n1768) );
  AOI32XLM U2176 ( .A0(FIFO_u_U1_mem[29]), .A1(n1769), .A2(n1807), .B0(n1768), 
        .B1(n1769), .Y(n1813) );
  AOI2BB2XLM U2177 ( .B0(n1809), .B1(n1813), .A0N(
        UART_TX_RX_U0_UART_TX_U1_mem[5]), .A1N(n1809), .Y(n795) );
  AOI2BB2XLM U2178 ( .B0(n1795), .B1(n1770), .A0N(FIFO_u_U1_mem[60]), .A1N(
        n1795), .Y(n794) );
  AOI21XLM U2179 ( .A0(n1796), .A1(FIFO_u_U1_mem[52]), .B0(FIFO_u_r_addr[2]), 
        .Y(n1772) );
  AOI22XLM U2180 ( .A0(n1807), .A1(FIFO_u_U1_mem[60]), .B0(n1802), .B1(
        FIFO_u_U1_mem[44]), .Y(n1771) );
  OAI211XLM U2181 ( .A0(n1800), .A1(n1773), .B0(n1772), .C0(n1771), .Y(n1777)
         );
  AOI22XLM U2182 ( .A0(n1802), .A1(FIFO_u_U1_mem[12]), .B0(n1801), .B1(
        FIFO_u_U1_mem[4]), .Y(n1774) );
  OAI211XLM U2183 ( .A0(n1775), .A1(n1804), .B0(FIFO_u_r_addr[2]), .C0(n1774), 
        .Y(n1776) );
  AOI32XLM U2184 ( .A0(FIFO_u_U1_mem[28]), .A1(n1777), .A2(n1807), .B0(n1776), 
        .B1(n1777), .Y(n1816) );
  AOI2BB2XLM U2185 ( .B0(n1809), .B1(n1816), .A0N(
        UART_TX_RX_U0_UART_TX_U1_mem[4]), .A1N(n1809), .Y(n793) );
  AOI2BB2XLM U2186 ( .B0(n1795), .B1(n1778), .A0N(FIFO_u_U1_mem[59]), .A1N(
        n1795), .Y(n792) );
  AOI21XLM U2187 ( .A0(n1796), .A1(FIFO_u_U1_mem[51]), .B0(FIFO_u_r_addr[2]), 
        .Y(n1780) );
  AOI22XLM U2188 ( .A0(n1807), .A1(FIFO_u_U1_mem[59]), .B0(n1802), .B1(
        FIFO_u_U1_mem[43]), .Y(n1779) );
  AOI22XLM U2189 ( .A0(n1802), .A1(FIFO_u_U1_mem[11]), .B0(n1801), .B1(
        FIFO_u_U1_mem[3]), .Y(n1782) );
  OAI211XLM U2190 ( .A0(n1783), .A1(n1804), .B0(FIFO_u_r_addr[2]), .C0(n1782), 
        .Y(n1784) );
  AOI32XLM U2191 ( .A0(FIFO_u_U1_mem[27]), .A1(n1785), .A2(n1807), .B0(n1784), 
        .B1(n1785), .Y(n1814) );
  AOI2BB2XLM U2192 ( .B0(n1809), .B1(n1814), .A0N(
        UART_TX_RX_U0_UART_TX_U1_mem[3]), .A1N(n1809), .Y(n791) );
  AOI2BB2XLM U2193 ( .B0(n1795), .B1(n1786), .A0N(FIFO_u_U1_mem[58]), .A1N(
        n1795), .Y(n790) );
  AOI21XLM U2194 ( .A0(n1796), .A1(FIFO_u_U1_mem[50]), .B0(FIFO_u_r_addr[2]), 
        .Y(n1788) );
  AOI22XLM U2195 ( .A0(n1807), .A1(FIFO_u_U1_mem[58]), .B0(n1802), .B1(
        FIFO_u_U1_mem[42]), .Y(n1787) );
  OAI211XLM U2196 ( .A0(n1800), .A1(n1789), .B0(n1788), .C0(n1787), .Y(n1793)
         );
  AOI22XLM U2197 ( .A0(n1802), .A1(FIFO_u_U1_mem[10]), .B0(n1801), .B1(
        FIFO_u_U1_mem[2]), .Y(n1790) );
  OAI211XLM U2198 ( .A0(n1791), .A1(n1804), .B0(FIFO_u_r_addr[2]), .C0(n1790), 
        .Y(n1792) );
  AOI32XLM U2199 ( .A0(FIFO_u_U1_mem[26]), .A1(n1793), .A2(n1807), .B0(n1792), 
        .B1(n1793), .Y(n1812) );
  AOI2BB2XLM U2200 ( .B0(n1809), .B1(n1812), .A0N(
        UART_TX_RX_U0_UART_TX_U1_mem[2]), .A1N(n1809), .Y(n789) );
  AOI2BB2XLM U2201 ( .B0(n1795), .B1(n1794), .A0N(FIFO_u_U1_mem[57]), .A1N(
        n1795), .Y(n788) );
  AOI21XLM U2202 ( .A0(n1796), .A1(FIFO_u_U1_mem[49]), .B0(FIFO_u_r_addr[2]), 
        .Y(n1798) );
  AOI22XLM U2203 ( .A0(n1807), .A1(FIFO_u_U1_mem[57]), .B0(n1802), .B1(
        FIFO_u_U1_mem[41]), .Y(n1797) );
  OAI211XLM U2204 ( .A0(n1800), .A1(n1799), .B0(n1798), .C0(n1797), .Y(n1808)
         );
  AOI22XLM U2205 ( .A0(n1802), .A1(FIFO_u_U1_mem[9]), .B0(n1801), .B1(
        FIFO_u_U1_mem[1]), .Y(n1803) );
  OAI211XLM U2206 ( .A0(n1805), .A1(n1804), .B0(FIFO_u_r_addr[2]), .C0(n1803), 
        .Y(n1806) );
  AOI32XLM U2207 ( .A0(FIFO_u_U1_mem[25]), .A1(n1808), .A2(n1807), .B0(n1806), 
        .B1(n1808), .Y(n1819) );
  AOI2BB2XLM U2208 ( .B0(n1809), .B1(n1819), .A0N(
        UART_TX_RX_U0_UART_TX_U1_mem[1]), .A1N(n1809), .Y(n787) );
  AOI2BB2XLM U2209 ( .B0(n1832), .B1(n1810), .A0N(Regfile_u_reg_file_15__1_), 
        .A1N(n1832), .Y(n783) );
  AOI2BB2XLM U2210 ( .B0(n1833), .B1(n1810), .A0N(Regfile_u_reg_file_14__1_), 
        .A1N(n1833), .Y(n782) );
  AOI2BB2XLM U2211 ( .B0(n1834), .B1(n1810), .A0N(Regfile_u_reg_file_13__1_), 
        .A1N(n1834), .Y(n781) );
  AOI2BB2XLM U2212 ( .B0(n1835), .B1(n1810), .A0N(Regfile_u_reg_file_12__1_), 
        .A1N(n1835), .Y(n780) );
  AOI2BB2XLM U2213 ( .B0(n1836), .B1(n1810), .A0N(Regfile_u_reg_file_11__1_), 
        .A1N(n1836), .Y(n779) );
  AOI2BB2XLM U2214 ( .B0(n1837), .B1(n1810), .A0N(Regfile_u_reg_file_10__1_), 
        .A1N(n1837), .Y(n778) );
  AOI2BB2XLM U2215 ( .B0(n1838), .B1(n1810), .A0N(Regfile_u_reg_file_9__1_), 
        .A1N(n1838), .Y(n777) );
  AOI2BB2XLM U2216 ( .B0(n1839), .B1(n1810), .A0N(Regfile_u_reg_file_8__1_), 
        .A1N(n1839), .Y(n776) );
  AOI2BB2XLM U2217 ( .B0(n1840), .B1(n1810), .A0N(Regfile_u_reg_file_7__1_), 
        .A1N(n1840), .Y(n775) );
  AOI2BB2XLM U2218 ( .B0(n1841), .B1(n1810), .A0N(Regfile_u_reg_file_6__1_), 
        .A1N(n1841), .Y(n774) );
  AOI2BB2XLM U2219 ( .B0(n1842), .B1(n1810), .A0N(Regfile_u_reg_file_5__1_), 
        .A1N(n1842), .Y(n773) );
  AOI2BB2XLM U2220 ( .B0(n1843), .B1(n1810), .A0N(Regfile_u_reg_file_4__1_), 
        .A1N(n1843), .Y(n772) );
  AOI2BB2XLM U2221 ( .B0(n1845), .B1(n1810), .A0N(reg3[1]), .A1N(n1845), .Y(
        n771) );
  AOI2BB2XLM U2222 ( .B0(n1827), .B1(n1810), .A0N(reg2[1]), .A1N(n1827), .Y(
        n770) );
  XOR2XLM U2223 ( .A(n1812), .B(n1811), .Y(n1823) );
  XOR3XLM U2224 ( .A(reg2[1]), .B(n1814), .C(n1813), .Y(n1817) );
  XOR3XLM U2225 ( .A(n1817), .B(n1816), .C(n1815), .Y(n1820) );
  XOR3XLM U2226 ( .A(n1820), .B(n1819), .C(n1818), .Y(n1822) );
  NOR2XLM U2227 ( .A(n1823), .B(n1822), .Y(n1821) );
  AOI211XLM U2228 ( .A0(n1823), .A1(n1822), .B0(n1825), .C0(n1821), .Y(n1824)
         );
  AO21XLM U2229 ( .A0(n1825), .A1(UART_TX_RX_U0_UART_TX_par_bit), .B0(n1824), 
        .Y(n769) );
  AOI2BB2XLM U2230 ( .B0(n1832), .B1(n1826), .A0N(Regfile_u_reg_file_15__2_), 
        .A1N(n1832), .Y(n765) );
  AOI2BB2XLM U2231 ( .B0(n1833), .B1(n1826), .A0N(Regfile_u_reg_file_14__2_), 
        .A1N(n1833), .Y(n764) );
  AOI2BB2XLM U2232 ( .B0(n1834), .B1(n1826), .A0N(Regfile_u_reg_file_13__2_), 
        .A1N(n1834), .Y(n763) );
  AOI2BB2XLM U2233 ( .B0(n1835), .B1(n1826), .A0N(Regfile_u_reg_file_12__2_), 
        .A1N(n1835), .Y(n762) );
  AOI2BB2XLM U2234 ( .B0(n1836), .B1(n1826), .A0N(Regfile_u_reg_file_11__2_), 
        .A1N(n1836), .Y(n761) );
  AOI2BB2XLM U2235 ( .B0(n1837), .B1(n1826), .A0N(Regfile_u_reg_file_10__2_), 
        .A1N(n1837), .Y(n760) );
  AOI2BB2XLM U2236 ( .B0(n1838), .B1(n1826), .A0N(Regfile_u_reg_file_9__2_), 
        .A1N(n1838), .Y(n759) );
  AOI2BB2XLM U2237 ( .B0(n1839), .B1(n1826), .A0N(Regfile_u_reg_file_8__2_), 
        .A1N(n1839), .Y(n758) );
  AOI2BB2XLM U2238 ( .B0(n1840), .B1(n1826), .A0N(Regfile_u_reg_file_7__2_), 
        .A1N(n1840), .Y(n757) );
  AOI2BB2XLM U2239 ( .B0(n1841), .B1(n1826), .A0N(Regfile_u_reg_file_6__2_), 
        .A1N(n1841), .Y(n756) );
  AOI2BB2XLM U2240 ( .B0(n1842), .B1(n1826), .A0N(Regfile_u_reg_file_5__2_), 
        .A1N(n1842), .Y(n755) );
  AOI2BB2XLM U2241 ( .B0(n1843), .B1(n1826), .A0N(Regfile_u_reg_file_4__2_), 
        .A1N(n1843), .Y(n754) );
  AOI2BB2XLM U2242 ( .B0(n1845), .B1(n1826), .A0N(reg3[2]), .A1N(n1845), .Y(
        n753) );
  AOI2BB2XLM U2243 ( .B0(n1827), .B1(n1826), .A0N(reg2[2]), .A1N(n1827), .Y(
        n752) );
  AOI2BB2XLM U2244 ( .B0(n1832), .B1(n1828), .A0N(Regfile_u_reg_file_15__3_), 
        .A1N(n1832), .Y(n748) );
  AOI2BB2XLM U2245 ( .B0(n1833), .B1(n1828), .A0N(Regfile_u_reg_file_14__3_), 
        .A1N(n1833), .Y(n747) );
  AOI2BB2XLM U2246 ( .B0(n1834), .B1(n1828), .A0N(Regfile_u_reg_file_13__3_), 
        .A1N(n1834), .Y(n746) );
  AOI2BB2XLM U2247 ( .B0(n1835), .B1(n1828), .A0N(Regfile_u_reg_file_12__3_), 
        .A1N(n1835), .Y(n745) );
  AOI2BB2XLM U2248 ( .B0(n1836), .B1(n1828), .A0N(Regfile_u_reg_file_11__3_), 
        .A1N(n1836), .Y(n744) );
  AOI2BB2XLM U2249 ( .B0(n1837), .B1(n1828), .A0N(Regfile_u_reg_file_10__3_), 
        .A1N(n1837), .Y(n743) );
  AOI2BB2XLM U2250 ( .B0(n1838), .B1(n1828), .A0N(Regfile_u_reg_file_9__3_), 
        .A1N(n1838), .Y(n742) );
  AOI2BB2XLM U2251 ( .B0(n1839), .B1(n1828), .A0N(Regfile_u_reg_file_8__3_), 
        .A1N(n1839), .Y(n741) );
  AOI2BB2XLM U2252 ( .B0(n1840), .B1(n1828), .A0N(Regfile_u_reg_file_7__3_), 
        .A1N(n1840), .Y(n740) );
  AOI2BB2XLM U2253 ( .B0(n1841), .B1(n1828), .A0N(Regfile_u_reg_file_6__3_), 
        .A1N(n1841), .Y(n739) );
  AOI2BB2XLM U2254 ( .B0(n1842), .B1(n1828), .A0N(Regfile_u_reg_file_5__3_), 
        .A1N(n1842), .Y(n738) );
  AOI2BB2XLM U2255 ( .B0(n1843), .B1(n1828), .A0N(Regfile_u_reg_file_4__3_), 
        .A1N(n1843), .Y(n737) );
  AOI2BB2XLM U2256 ( .B0(n1845), .B1(n1828), .A0N(reg3[3]), .A1N(n1845), .Y(
        n736) );
  AOI2BB2XLM U2257 ( .B0(n1832), .B1(n1829), .A0N(Regfile_u_reg_file_15__4_), 
        .A1N(n1832), .Y(n731) );
  AOI2BB2XLM U2258 ( .B0(n1833), .B1(n1829), .A0N(Regfile_u_reg_file_14__4_), 
        .A1N(n1833), .Y(n730) );
  AOI2BB2XLM U2259 ( .B0(n1834), .B1(n1829), .A0N(Regfile_u_reg_file_13__4_), 
        .A1N(n1834), .Y(n729) );
  AOI2BB2XLM U2260 ( .B0(n1835), .B1(n1829), .A0N(Regfile_u_reg_file_12__4_), 
        .A1N(n1835), .Y(n728) );
  AOI2BB2XLM U2261 ( .B0(n1836), .B1(n1829), .A0N(Regfile_u_reg_file_11__4_), 
        .A1N(n1836), .Y(n727) );
  AOI2BB2XLM U2262 ( .B0(n1837), .B1(n1829), .A0N(Regfile_u_reg_file_10__4_), 
        .A1N(n1837), .Y(n726) );
  AOI2BB2XLM U2263 ( .B0(n1838), .B1(n1829), .A0N(Regfile_u_reg_file_9__4_), 
        .A1N(n1838), .Y(n725) );
  AOI2BB2XLM U2264 ( .B0(n1839), .B1(n1829), .A0N(Regfile_u_reg_file_8__4_), 
        .A1N(n1839), .Y(n724) );
  AOI2BB2XLM U2265 ( .B0(n1840), .B1(n1829), .A0N(Regfile_u_reg_file_7__4_), 
        .A1N(n1840), .Y(n723) );
  AOI2BB2XLM U2266 ( .B0(n1841), .B1(n1829), .A0N(Regfile_u_reg_file_6__4_), 
        .A1N(n1841), .Y(n722) );
  AOI2BB2XLM U2267 ( .B0(n1842), .B1(n1829), .A0N(Regfile_u_reg_file_5__4_), 
        .A1N(n1842), .Y(n721) );
  AOI2BB2XLM U2268 ( .B0(n1843), .B1(n1829), .A0N(Regfile_u_reg_file_4__4_), 
        .A1N(n1843), .Y(n720) );
  AOI2BB2XLM U2269 ( .B0(n1845), .B1(n1829), .A0N(reg3[4]), .A1N(n1845), .Y(
        n719) );
  AOI2BB2XLM U2270 ( .B0(n1832), .B1(n1830), .A0N(Regfile_u_reg_file_15__5_), 
        .A1N(n1832), .Y(n714) );
  AOI2BB2XLM U2271 ( .B0(n1833), .B1(n1830), .A0N(Regfile_u_reg_file_14__5_), 
        .A1N(n1833), .Y(n713) );
  AOI2BB2XLM U2272 ( .B0(n1834), .B1(n1830), .A0N(Regfile_u_reg_file_13__5_), 
        .A1N(n1834), .Y(n712) );
  AOI2BB2XLM U2273 ( .B0(n1835), .B1(n1830), .A0N(Regfile_u_reg_file_12__5_), 
        .A1N(n1835), .Y(n711) );
  AOI2BB2XLM U2274 ( .B0(n1836), .B1(n1830), .A0N(Regfile_u_reg_file_11__5_), 
        .A1N(n1836), .Y(n710) );
  AOI2BB2XLM U2275 ( .B0(n1837), .B1(n1830), .A0N(Regfile_u_reg_file_10__5_), 
        .A1N(n1837), .Y(n709) );
  AOI2BB2XLM U2276 ( .B0(n1838), .B1(n1830), .A0N(Regfile_u_reg_file_9__5_), 
        .A1N(n1838), .Y(n708) );
  AOI2BB2XLM U2277 ( .B0(n1839), .B1(n1830), .A0N(Regfile_u_reg_file_8__5_), 
        .A1N(n1839), .Y(n707) );
  AOI2BB2XLM U2278 ( .B0(n1840), .B1(n1830), .A0N(Regfile_u_reg_file_7__5_), 
        .A1N(n1840), .Y(n706) );
  AOI2BB2XLM U2279 ( .B0(n1841), .B1(n1830), .A0N(Regfile_u_reg_file_6__5_), 
        .A1N(n1841), .Y(n705) );
  AOI2BB2XLM U2280 ( .B0(n1842), .B1(n1830), .A0N(Regfile_u_reg_file_5__5_), 
        .A1N(n1842), .Y(n704) );
  AOI2BB2XLM U2281 ( .B0(n1843), .B1(n1830), .A0N(n1843), .A1N(SO[1]), .Y(n703) );
  AOI2BB2XLM U2282 ( .B0(n1845), .B1(n1830), .A0N(reg3[5]), .A1N(n1845), .Y(
        n702) );
  AOI2BB2XLM U2283 ( .B0(n1832), .B1(n1831), .A0N(Regfile_u_reg_file_15__6_), 
        .A1N(n1832), .Y(n697) );
  AOI2BB2XLM U2284 ( .B0(n1833), .B1(n1831), .A0N(Regfile_u_reg_file_14__6_), 
        .A1N(n1833), .Y(n696) );
  AOI2BB2XLM U2285 ( .B0(n1834), .B1(n1831), .A0N(Regfile_u_reg_file_13__6_), 
        .A1N(n1834), .Y(n695) );
  AOI2BB2XLM U2286 ( .B0(n1835), .B1(n1831), .A0N(Regfile_u_reg_file_12__6_), 
        .A1N(n1835), .Y(n694) );
  AOI2BB2XLM U2287 ( .B0(n1836), .B1(n1831), .A0N(Regfile_u_reg_file_11__6_), 
        .A1N(n1836), .Y(n693) );
  AOI2BB2XLM U2288 ( .B0(n1837), .B1(n1831), .A0N(Regfile_u_reg_file_10__6_), 
        .A1N(n1837), .Y(n692) );
  AOI2BB2XLM U2289 ( .B0(n1838), .B1(n1831), .A0N(Regfile_u_reg_file_9__6_), 
        .A1N(n1838), .Y(n691) );
  AOI2BB2XLM U2290 ( .B0(n1839), .B1(n1831), .A0N(Regfile_u_reg_file_8__6_), 
        .A1N(n1839), .Y(n690) );
  AOI2BB2XLM U2291 ( .B0(n1840), .B1(n1831), .A0N(Regfile_u_reg_file_7__6_), 
        .A1N(n1840), .Y(n689) );
  AOI2BB2XLM U2292 ( .B0(n1841), .B1(n1831), .A0N(Regfile_u_reg_file_6__6_), 
        .A1N(n1841), .Y(n688) );
  AOI2BB2XLM U2293 ( .B0(n1842), .B1(n1831), .A0N(Regfile_u_reg_file_5__6_), 
        .A1N(n1842), .Y(n687) );
  AOI2BB2XLM U2294 ( .B0(n1843), .B1(n1831), .A0N(Regfile_u_reg_file_4__6_), 
        .A1N(n1843), .Y(n686) );
  AOI2BB2XLM U2295 ( .B0(n1845), .B1(n1831), .A0N(Regfile_u_n18), .A1N(n1845), 
        .Y(n685) );
  AOI2BB2XLM U2296 ( .B0(n1832), .B1(n1844), .A0N(Regfile_u_reg_file_15__7_), 
        .A1N(n1832), .Y(n680) );
  AOI2BB2XLM U2297 ( .B0(n1833), .B1(n1844), .A0N(Regfile_u_reg_file_14__7_), 
        .A1N(n1833), .Y(n679) );
  AOI2BB2XLM U2298 ( .B0(n1834), .B1(n1844), .A0N(Regfile_u_reg_file_13__7_), 
        .A1N(n1834), .Y(n678) );
  AOI2BB2XLM U2299 ( .B0(n1835), .B1(n1844), .A0N(Regfile_u_reg_file_12__7_), 
        .A1N(n1835), .Y(n677) );
  AOI2BB2XLM U2300 ( .B0(n1836), .B1(n1844), .A0N(Regfile_u_reg_file_11__7_), 
        .A1N(n1836), .Y(n676) );
  AOI2BB2XLM U2301 ( .B0(n1837), .B1(n1844), .A0N(Regfile_u_reg_file_10__7_), 
        .A1N(n1837), .Y(n675) );
  AOI2BB2XLM U2302 ( .B0(n1838), .B1(n1844), .A0N(Regfile_u_reg_file_9__7_), 
        .A1N(n1838), .Y(n674) );
  AOI2BB2XLM U2303 ( .B0(n1839), .B1(n1844), .A0N(Regfile_u_reg_file_8__7_), 
        .A1N(n1839), .Y(n673) );
  AOI2BB2XLM U2304 ( .B0(n1840), .B1(n1844), .A0N(Regfile_u_reg_file_7__7_), 
        .A1N(n1840), .Y(n672) );
  AOI2BB2XLM U2305 ( .B0(n1841), .B1(n1844), .A0N(Regfile_u_reg_file_6__7_), 
        .A1N(n1841), .Y(n671) );
  AOI2BB2XLM U2306 ( .B0(n1842), .B1(n1844), .A0N(Regfile_u_reg_file_5__7_), 
        .A1N(n1842), .Y(n670) );
  AOI2BB2XLM U2307 ( .B0(n1843), .B1(n1844), .A0N(Regfile_u_reg_file_4__7_), 
        .A1N(n1843), .Y(n669) );
  AOI2BB2XLM U2308 ( .B0(n1845), .B1(n1844), .A0N(Regfile_u_n17), .A1N(n1845), 
        .Y(n668) );
  AOI222XLM U2310 ( .A0(UART_TX_RX_U0_UART_RX_U2_s0), .A1(UART_RX_IN), .B0(
        UART_TX_RX_U0_UART_RX_U2_s0), .B1(UART_TX_RX_U0_UART_RX_U2_s1), .C0(
        UART_RX_IN), .C1(UART_TX_RX_U0_UART_RX_U2_s1), .Y(n1849) );
  AOI221XLM U2311 ( .A0(n1850), .A1(n1849), .B0(n1848), .B1(n1847), .C0(n1846), 
        .Y(n664) );
  NOR2XLM U2312 ( .A(n1852), .B(n1851), .Y(n1855) );
  OAI21XLM U2313 ( .A0(UART_TX_RX_U0_UART_RX_bit_cnt[1]), .A1(n1855), .B0(
        n1853), .Y(n1854) );
  AOI21XLM U2314 ( .A0(UART_TX_RX_U0_UART_RX_bit_cnt[1]), .A1(n1855), .B0(
        n1854), .Y(n657) );
  OAI2B2XLM U2315 ( .A1N(UART_TX_RX_U0_UART_RX_bit_cnt[3]), .A0(n1858), .B0(
        n1857), .B1(n1856), .Y(n655) );
  AOI2BB2XLM U2316 ( .B0(reg2[1]), .B1(n1859), .A0N(n1859), .A1N(reg2[1]), .Y(
        n1860) );
  AOI2BB2XLM U2317 ( .B0(UART_TX_RX_U0_UART_RX_U4_par_done_next), .B1(n1860), 
        .A0N(parity_error), .A1N(UART_TX_RX_U0_UART_RX_U4_par_done_next), .Y(
        n654) );
  AO21XLM U2318 ( .A0(n1862), .A1(n1861), .B0(sys_ctrl_u_reg2_cfg), .Y(n648)
         );
  NAND3XLM U2320 ( .A(SO[0]), .B(sys_ctrl_u_current_state[1]), .C(n1863), .Y(
        n1864) );
  AOI2BB2XLM U2321 ( .B0(n1870), .B1(n1866), .A0N(sys_ctrl_u_wr_addr[0]), 
        .A1N(n1870), .Y(n627) );
  AOI2BB2XLM U2322 ( .B0(n1870), .B1(n1867), .A0N(sys_ctrl_u_wr_addr[3]), 
        .A1N(n1870), .Y(n626) );
  AOI2BB2XLM U2323 ( .B0(n1870), .B1(n1868), .A0N(sys_ctrl_u_wr_addr[2]), 
        .A1N(n1870), .Y(n625) );
  AOI2BB2XLM U2324 ( .B0(n1870), .B1(n1869), .A0N(sys_ctrl_u_wr_addr[1]), 
        .A1N(n1870), .Y(n624) );
  AO22XLM U2325 ( .A0(n1872), .A1(alu_out[9]), .B0(n1871), .B1(
        sys_ctrl_u_frame2[1]), .Y(n623) );
  AO22XLM U2326 ( .A0(n1872), .A1(alu_out[10]), .B0(n1871), .B1(
        sys_ctrl_u_frame2[2]), .Y(n622) );
  AO22XLM U2327 ( .A0(n1872), .A1(alu_out[11]), .B0(n1871), .B1(
        sys_ctrl_u_frame2[3]), .Y(n621) );
  AO22XLM U2328 ( .A0(n1872), .A1(alu_out[12]), .B0(n1871), .B1(
        sys_ctrl_u_frame2[4]), .Y(n620) );
  AO22XLM U2329 ( .A0(n1872), .A1(alu_out[13]), .B0(n1871), .B1(
        sys_ctrl_u_frame2[5]), .Y(n619) );
  AO22XLM U2330 ( .A0(n1872), .A1(alu_out[14]), .B0(n1871), .B1(
        sys_ctrl_u_frame2[6]), .Y(n618) );
  AO22XLM U2331 ( .A0(n1872), .A1(alu_out[15]), .B0(n1871), .B1(
        sys_ctrl_u_frame2[7]), .Y(n617) );
  AO22XLM U2332 ( .A0(n1872), .A1(alu_out[8]), .B0(n1871), .B1(
        sys_ctrl_u_frame2[0]), .Y(n616) );
  INVXLM U2337 ( .A(SO[0]), .Y(n1913) );
  INVXLM U2341 ( .A(n1940), .Y(n1917) );
  INVXLM U2345 ( .A(n1940), .Y(n1921) );
  INVXLM U2346 ( .A(n1940), .Y(n1922) );
  INVXLM U2349 ( .A(n1940), .Y(n1925) );
  INVXLM U2351 ( .A(n1940), .Y(n1927) );
  INVXLM U2352 ( .A(n1940), .Y(n1928) );
  INVXLM U2355 ( .A(n1940), .Y(n1931) );
  INVXLM U2356 ( .A(n1940), .Y(n1932) );
  INVXLM U2357 ( .A(n1940), .Y(n1933) );
  INVXLM U2360 ( .A(n1940), .Y(n1936) );
  INVXLM U2362 ( .A(n1940), .Y(n1938) );
  INVXLM U2363 ( .A(n1940), .Y(n1939) );
  INVXLM U2364 ( .A(SE), .Y(n1940) );
  INVXLM U2365 ( .A(n1940), .Y(n1941) );
  INVXLM U2366 ( .A(n1940), .Y(n1942) );
  INVXLM U2367 ( .A(n1940), .Y(n1943) );
  clk_div_WIDTH6_test_1 TX_CLK ( .i_ref_clk(clk_m_UART), .i_rst_n(uart_rst), 
        .i_clk_en(1'b1), .i_div_ratio(reg3), .o_div_clk(n885), .test_si(
        synced_p_data[7]), .test_so(n1904), .test_se(SE) );
  clk_div_WIDTH6_test_0 RX_CLK ( .i_ref_clk(clk_m_UART), .i_rst_n(uart_rst), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, rx_ratio}), 
        .o_div_clk(n884), .test_si(RF1_n_synch[0]), .test_so(n1907), .test_se(
        SE) );
  CLK_GATE ALU_CG ( .CLK_EN(alu_clk_en_test), .CLK(clk_m_REF), .GATED_CLK(
        alu_cg) );
  SDFFSQX1M Regfile_u_reg_file_reg_2__7_ ( .D(n667), .SI(reg2[6]), .SE(n1917), 
        .CK(clk_m_REF), .SN(n886), .Q(reg2[7]) );
  SDFFSQX1M Regfile_u_reg_file_reg_2__0_ ( .D(n864), .SI(reg1[7]), .SE(n1921), 
        .CK(clk_m_REF), .SN(n1896), .Q(reg2[0]) );
  SDFFSQX1M FIFO_u_U5_empty_reg ( .D(eq_x_40_n25), .SI(FIFO_u_r_ptr[2]), .SE(
        n1927), .CK(tx_clk), .SN(tx_rst), .Q(fifo_empty) );
  SDFFSQX1M Regfile_u_reg_file_reg_3__5_ ( .D(n702), .SI(reg3[4]), .SE(n1931), 
        .CK(clk_m_REF), .SN(ref_rst), .Q(reg3[5]) );
  MX2X1M U949 ( .A(SO[2]), .B(scan_rst), .S0(test_mode), .Y(uart_rst) );
  ADDFXLM intadd_1_U2 ( .A(intadd_4_n1), .B(intadd_1_B_4_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_4_) );
  ADDFXLM intadd_0_U3 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_3_) );
  ADDFXLM intadd_3_U2 ( .A(intadd_3_A_3_), .B(intadd_0_SUM_2_), .CI(
        intadd_3_n2), .CO(intadd_3_n1), .S(intadd_1_B_4_) );
  ADDFXLM intadd_2_U3 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_2_) );
  ADDFXLM intadd_5_U2 ( .A(intadd_5_A_2_), .B(intadd_2_SUM_1_), .CI(
        intadd_5_n2), .CO(intadd_5_n1), .S(intadd_0_B_4_) );
  ADDFXLM DP_OP_196J1_124_5161_U20 ( .A(DP_OP_196J1_124_5161_n28), .B(reg0[1]), 
        .CI(DP_OP_196J1_124_5161_n16), .CO(DP_OP_196J1_124_5161_n15), .S(
        C118_DATA15_1) );
  ADDFXLM intadd_7_U4 ( .A(intadd_7_A_0_), .B(intadd_7_B_0_), .CI(intadd_7_CI), 
        .CO(intadd_7_n3), .S(intadd_7_SUM_0_) );
  ADDFXLM DP_OP_196J1_124_5161_U18 ( .A(DP_OP_196J1_124_5161_n26), .B(reg0[3]), 
        .CI(DP_OP_196J1_124_5161_n14), .CO(DP_OP_196J1_124_5161_n13), .S(
        C118_DATA15_3) );
  ADDFXLM intadd_7_U2 ( .A(intadd_6_SUM_0_), .B(intadd_7_B_2_), .CI(
        intadd_7_n2), .CO(intadd_7_n1), .S(intadd_7_SUM_2_) );
  ADDFXLM DP_OP_196J1_124_5161_U16 ( .A(DP_OP_196J1_124_5161_n24), .B(reg0[5]), 
        .CI(DP_OP_196J1_124_5161_n12), .CO(DP_OP_196J1_124_5161_n11), .S(
        C118_DATA15_5) );
  ADDFXLM DP_OP_196J1_124_5161_U14 ( .A(DP_OP_196J1_124_5161_n22), .B(reg0[7]), 
        .CI(DP_OP_196J1_124_5161_n10), .CO(DP_OP_196J1_124_5161_n9), .S(
        C118_DATA15_7) );
  ADDFXLM intadd_1_U3 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_3_) );
  ADDFXLM intadd_4_U2 ( .A(intadd_0_SUM_1_), .B(intadd_3_SUM_2_), .CI(
        intadd_4_n2), .CO(intadd_4_n1), .S(intadd_1_B_3_) );
  ADDFXLM intadd_5_U3 ( .A(intadd_2_SUM_0_), .B(intadd_5_B_1_), .CI(
        intadd_5_n3), .CO(intadd_5_n2), .S(intadd_0_B_3_) );
  ADDFXLM intadd_2_U4 ( .A(intadd_2_A_1_), .B(n1894), .CI(intadd_2_n4), .CO(
        intadd_2_n3), .S(intadd_2_SUM_1_) );
  ADDFXLM intadd_6_U4 ( .A(intadd_6_A_0_), .B(intadd_6_B_0_), .CI(n1884), .CO(
        intadd_6_n3), .S(intadd_6_SUM_0_) );
  ADDFXLM intadd_1_U5 ( .A(intadd_1_A_1_), .B(n1889), .CI(intadd_1_n5), .CO(
        intadd_1_n4), .S(intadd_1_SUM_1_) );
  ADDFXLM intadd_4_U4 ( .A(intadd_4_A_0_), .B(n1887), .CI(intadd_4_CI), .CO(
        intadd_4_n3), .S(intadd_4_SUM_0_) );
  ADDFXLM intadd_3_U5 ( .A(n1885), .B(intadd_3_B_0_), .CI(n1879), .CO(
        intadd_3_n4), .S(intadd_3_SUM_0_) );
  ADDFXLM intadd_0_U5 ( .A(intadd_0_A_1_), .B(n1893), .CI(intadd_0_n5), .CO(
        intadd_0_n4), .S(intadd_0_SUM_1_) );
  ADDFXLM intadd_5_U4 ( .A(n1876), .B(n1881), .CI(n1891), .CO(intadd_5_n3), 
        .S(intadd_0_A_2_) );
  ADDFXLM intadd_2_U5 ( .A(n1877), .B(n1892), .CI(n1883), .CO(intadd_2_n4), 
        .S(intadd_2_SUM_0_) );
  ADDFXLM intadd_0_U2 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_4_) );
  ADDFXLM DP_OP_196J1_124_5161_U19 ( .A(DP_OP_196J1_124_5161_n27), .B(reg0[2]), 
        .CI(DP_OP_196J1_124_5161_n15), .CO(DP_OP_196J1_124_5161_n14), .S(
        C118_DATA15_2) );
  ADDFXLM intadd_7_U3 ( .A(intadd_7_A_1_), .B(intadd_7_B_1_), .CI(intadd_7_n3), 
        .CO(intadd_7_n2), .S(intadd_7_SUM_1_) );
  ADDFXLM DP_OP_196J1_124_5161_U17 ( .A(DP_OP_196J1_124_5161_n25), .B(reg0[4]), 
        .CI(DP_OP_196J1_124_5161_n13), .CO(DP_OP_196J1_124_5161_n12), .S(
        C118_DATA15_4) );
  ADDFXLM DP_OP_196J1_124_5161_U15 ( .A(DP_OP_196J1_124_5161_n23), .B(reg0[6]), 
        .CI(DP_OP_196J1_124_5161_n11), .CO(DP_OP_196J1_124_5161_n10), .S(
        C118_DATA15_6) );
  ADDFXLM intadd_6_U2 ( .A(intadd_6_A_2_), .B(intadd_6_B_2_), .CI(intadd_6_n2), 
        .CO(intadd_6_n1), .S(intadd_6_SUM_2_) );
  ADDFXLM DP_OP_196J1_124_5161_U21 ( .A(reg0[0]), .B(DP_OP_196J1_124_5161_n43), 
        .CI(DP_OP_196J1_124_5161_n29), .CO(DP_OP_196J1_124_5161_n16), .S(
        C118_DATA15_0) );
  ADDFXLM intadd_0_U4 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_2_) );
  ADDFXLM intadd_3_U3 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_2_) );
  ADDFXLM intadd_1_U4 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_2_) );
  ADDFXLM intadd_4_U3 ( .A(intadd_0_SUM_0_), .B(intadd_4_B_1_), .CI(
        intadd_4_n3), .CO(intadd_4_n2), .S(intadd_1_A_2_) );
  ADDFXLM intadd_1_U6 ( .A(intadd_1_A_0_), .B(n1880), .CI(n1886), .CO(
        intadd_1_n5), .S(intadd_1_SUM_0_) );
  ADDFXLM intadd_0_U6 ( .A(intadd_0_A_0_), .B(n1888), .CI(n1878), .CO(
        intadd_0_n5), .S(intadd_0_SUM_0_) );
  ADDFXLM intadd_2_U2 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_3_) );
  ADDFXLM intadd_6_U3 ( .A(intadd_1_SUM_0_), .B(intadd_6_B_1_), .CI(
        intadd_6_n3), .CO(intadd_6_n2), .S(intadd_6_SUM_1_) );
  ADDFXLM intadd_3_U4 ( .A(n1882), .B(n1890), .CI(intadd_3_n4), .CO(
        intadd_3_n3), .S(intadd_1_B_2_) );
  DFFRQX2M uart_rst_sync_n_synch_reg_2_ ( .D(uart_rst_sync_n_synch[1]), .CK(
        clk_m_UART), .RN(rst_m), .Q(SO[2]) );
  SDFFRQX2M UART_TX_RX_U0_UART_RX_U4_par_err_reg ( .D(n654), .SI(
        UART_TX_RX_U0_UART_RX_par_done), .SE(n1943), .CK(rx_clk), .RN(rx_rst), 
        .Q(parity_error) );
  SDFFRQX2M Regfile_u_reg_file_reg_4__5_ ( .D(n703), .SI(
        Regfile_u_reg_file_4__4_), .SE(n1929), .CK(clk_m_REF), .RN(n1897), .Q(
        SO[1]) );
  SDFFRQX2M UART_TX_RX_U0_UART_RX_U6_stp_err_reg ( .D(
        UART_TX_RX_U0_UART_RX_U6_N5), .SI(uart_rst_sync_n_synch[0]), .SE(n1929), .CK(rx_clk), .RN(rx_rst), .Q(framing_error) );
  SDFFRQX2M Rx2SysCtrl_en_pulse_reg ( .D(n1899), .SI(Regfile_u_reg_file_15__7_), .SE(n1933), .CK(clk_m_REF), .RN(n886), .Q(SO[0]) );
  OAI21X1M U958 ( .A0(n1151), .A1(n1150), .B0(n1149), .Y(n1191) );
  OAI2BB1X2M U961 ( .A0N(n1192), .A1N(n1150), .B0(n1148), .Y(n1149) );
  INVXLM U967 ( .A(n1435), .Y(n1402) );
  INVXLM U973 ( .A(n1395), .Y(n1432) );
  INVXLM U975 ( .A(n1191), .Y(n1181) );
  INVXLM U976 ( .A(n1381), .Y(n1563) );
  INVXLM U977 ( .A(reg1[0]), .Y(n1580) );
  INVXLM U978 ( .A(n1377), .Y(n1556) );
  INVXLM U981 ( .A(intadd_6_n1), .Y(n1356) );
  INVXLM U982 ( .A(intadd_7_n1), .Y(n1362) );
  INVXLM U983 ( .A(n1608), .Y(n1615) );
  INVXLM U992 ( .A(n1613), .Y(n1614) );
  INVXLM U993 ( .A(n1617), .Y(n1619) );
  INVXLM U999 ( .A(n1607), .Y(n1616) );
  INVXLM U1002 ( .A(n1574), .Y(n1599) );
  INVXLM U1003 ( .A(n1186), .Y(n1187) );
  INVXLM U1006 ( .A(n1295), .Y(n1296) );
  XOR2XLM U1008 ( .A(n1446), .B(n1445), .Y(n1622) );
  XOR2XLM U1011 ( .A(n1442), .B(n1441), .Y(n1610) );
  XOR2XLM U1018 ( .A(n1436), .B(n1435), .Y(n1605) );
  INVXLM U1025 ( .A(n1358), .Y(n1566) );
  INVXLM U1031 ( .A(n1285), .Y(n1286) );
  INVXLM U1036 ( .A(intadd_1_SUM_2_), .Y(n1355) );
  INVXLM U1043 ( .A(n1184), .Y(n1144) );
  INVXLM U1044 ( .A(n1138), .Y(n1141) );
  INVXLM U1045 ( .A(n1147), .Y(n1148) );
  INVXLM U1048 ( .A(n1192), .Y(n1143) );
  INVXLM U1049 ( .A(reg1[4]), .Y(n1625) );
  INVXLM U1061 ( .A(reg0[6]), .Y(n1375) );
  INVXLM U1065 ( .A(reg1[1]), .Y(n1583) );
  INVXLM U1066 ( .A(reg0[7]), .Y(n1343) );
  INVXLM U1067 ( .A(n1388), .Y(n1392) );
  INVXLM U1071 ( .A(n1404), .Y(n1441) );
  INVXLM U1079 ( .A(n1399), .Y(n1400) );
  INVXLM U1080 ( .A(n1600), .Y(n1602) );
  INVXLM U1089 ( .A(reg0[3]), .Y(n1367) );
  INVXLM U1100 ( .A(n956), .Y(n953) );
  INVXLM U1105 ( .A(n955), .Y(n951) );
  INVXLM U1106 ( .A(n1598), .Y(n1575) );
  INVXLM U1107 ( .A(n1568), .Y(n1570) );
  XOR2XLM U1110 ( .A(n1621), .B(n1620), .Y(n1623) );
  INVXLM U1115 ( .A(n1189), .Y(n1302) );
  OAI21X1M U1116 ( .A0(reg1[1]), .A1(n1183), .B0(n1182), .Y(n1299) );
  INVXLM U1118 ( .A(n1293), .Y(n1183) );
  OAI21XLM U1121 ( .A0(reg1[2]), .A1(n1390), .B0(n1298), .Y(n1384) );
  INVXLM U1125 ( .A(n1304), .Y(n1386) );
  INVXLM U1128 ( .A(n1194), .Y(n1306) );
  INVXLM U1134 ( .A(n1407), .Y(n1287) );
  INVXLM U1148 ( .A(n1804), .Y(n1796) );
  NOR2XLM U1159 ( .A(n1605), .B(n1589), .Y(n1600) );
  OAI21X1M U1160 ( .A0(n1428), .A1(n1568), .B0(n1569), .Y(n1574) );
  INVXLM U1161 ( .A(n1572), .Y(n1428) );
  NOR2XLM U1162 ( .A(n1577), .B(n1587), .Y(n1598) );
  INVXLM U1164 ( .A(n1659), .Y(n1157) );
  INVXLM U1171 ( .A(n1057), .Y(n1167) );
  AOI21BXLM U1177 ( .A0(n1469), .A1(n1651), .B0N(n1467), .Y(n1472) );
  OAI2B1XLM U1186 ( .A1N(n1497), .A0(n1654), .B0(n1496), .Y(n1469) );
  INVXLM U1187 ( .A(n1457), .Y(n1475) );
  INVXLM U1188 ( .A(n1826), .Y(n1058) );
  INVXLM U1196 ( .A(n1055), .Y(n1156) );
  INVXLM U1200 ( .A(n959), .Y(n957) );
  INVXLM U1218 ( .A(n1562), .Y(n1382) );
  INVXLM U1219 ( .A(n1828), .Y(n1059) );
  INVXLM U1220 ( .A(sys_ctrl_u_wr_addr[3]), .Y(n929) );
  INVXLM U1232 ( .A(n1083), .Y(n1081) );
  INVXLM U1236 ( .A(n1666), .Y(n1668) );
  INVXLM U1237 ( .A(n1463), .Y(n1662) );
  AND2X1M U1238 ( .A(n1633), .B(n1632), .Y(n1634) );
  INVXLM U1239 ( .A(intadd_6_SUM_1_), .Y(n1361) );
  INVXLM U1242 ( .A(n1565), .Y(n1359) );
  NAND2BXLM U1243 ( .AN(n1480), .B(n1481), .Y(n1647) );
  INVXLM U1244 ( .A(n1540), .Y(n1160) );
  INVXLM U1246 ( .A(n1538), .Y(n1159) );
  INVXLM U1330 ( .A(n1348), .Y(n1560) );
  INVXLM U1331 ( .A(n1471), .Y(n1653) );
  INVXLM U1332 ( .A(n1315), .Y(intadd_4_CI) );
  INVXLM U1333 ( .A(n1409), .Y(n1412) );
  INVXLM U1335 ( .A(n1420), .Y(intadd_6_A_0_) );
  INVXLM U1336 ( .A(n1800), .Y(n1801) );
  INVXLM U1337 ( .A(n1481), .Y(n1460) );
  INVXLM U1338 ( .A(n1670), .Y(n1465) );
  INVXLM U1339 ( .A(n1158), .Y(n1486) );
  AOI21BXLM U1340 ( .A0(n1476), .A1(n1475), .B0N(n1473), .Y(n1479) );
  INVXLM U1355 ( .A(n1721), .Y(n969) );
  INVXLM U1357 ( .A(n1719), .Y(n1722) );
  INVXLM U1366 ( .A(n1725), .Y(n1726) );
  INVXLM U1372 ( .A(n1723), .Y(n1724) );
  INVXLM U1375 ( .A(n1727), .Y(n1728) );
  INVXLM U1383 ( .A(n1729), .Y(n1730) );
  INVXLM U1386 ( .A(n1731), .Y(n1734) );
  INVXLM U1388 ( .A(sys_ctrl_u_current_state[2]), .Y(n1865) );
  INVXLM U1389 ( .A(n1096), .Y(n1103) );
  INVXLM U1390 ( .A(UART_TX_RX_U0_UART_RX_U4_count[1]), .Y(n1074) );
  INVXLM U1391 ( .A(n1338), .Y(n1550) );
  INVXLM U1392 ( .A(n1552), .Y(n1337) );
  INVXLM U1393 ( .A(n1542), .Y(n1335) );
  INVXLM U1394 ( .A(n1557), .Y(n1344) );
  INVXLM U1399 ( .A(n1561), .Y(n1349) );
  INVXLM U1402 ( .A(n1350), .Y(n1553) );
  INVXLM U1413 ( .A(n1154), .Y(n1173) );
  INVXLM U1414 ( .A(fifo_full), .Y(n906) );
  INVXLM U1416 ( .A(UART_TX_RX_U0_UART_RX_U7_c_state[2]), .Y(n1075) );
  INVXLM U1418 ( .A(n1898), .Y(n1323) );
  INVXLM U1419 ( .A(reg1[7]), .Y(n1642) );
  INVXLM U1420 ( .A(reg1[6]), .Y(n1632) );
  INVXLM U1421 ( .A(reg1[2]), .Y(n1587) );
  INVXLM U1423 ( .A(UART_TX_RX_U0_UART_TX_ser_done), .Y(n1695) );
  INVXLM U1425 ( .A(reg0[5]), .Y(n1380) );
  INVXLM U1428 ( .A(reg0[4]), .Y(n1366) );
  INVXLM U1430 ( .A(n1535), .Y(n1253) );
  INVXLM U1435 ( .A(reg0[1]), .Y(n1536) );
  NAND2BXLM U1438 ( .AN(n1733), .B(n1043), .Y(n1535) );
  INVXLM U1440 ( .A(reg1[5]), .Y(n1627) );
  INVXLM U1443 ( .A(reg1[3]), .Y(n1589) );
  INVXLM U1444 ( .A(n938), .Y(n1537) );
  INVXLM U1452 ( .A(FIFO_u_U1_mem[39]), .Y(n1749) );
  INVXLM U1460 ( .A(FIFO_u_U1_mem[23]), .Y(n1751) );
  INVXLM U1463 ( .A(FIFO_u_U1_mem[32]), .Y(n1699) );
  INVXLM U1465 ( .A(FIFO_u_U1_mem[16]), .Y(n1701) );
  INVXLM U1468 ( .A(FIFO_u_U1_mem[38]), .Y(n1757) );
  INVXLM U1470 ( .A(FIFO_u_U1_mem[22]), .Y(n1759) );
  INVXLM U1472 ( .A(FIFO_u_U1_mem[37]), .Y(n1765) );
  INVXLM U1474 ( .A(FIFO_u_U1_mem[21]), .Y(n1767) );
  INVXLM U1476 ( .A(FIFO_u_U1_mem[36]), .Y(n1773) );
  INVXLM U1478 ( .A(FIFO_u_U1_mem[20]), .Y(n1775) );
  INVXLM U1494 ( .A(FIFO_u_U1_mem[35]), .Y(n1781) );
  INVXLM U1496 ( .A(FIFO_u_U1_mem[19]), .Y(n1783) );
  INVXLM U1497 ( .A(FIFO_u_U1_mem[34]), .Y(n1789) );
  INVXLM U1500 ( .A(FIFO_u_U1_mem[18]), .Y(n1791) );
  NOR3X1M U1503 ( .A(FIFO_u_w_addr[2]), .B(FIFO_u_w_addr[1]), .C(n1744), .Y(
        n1795) );
  NOR3X1M U1506 ( .A(FIFO_u_w_addr[2]), .B(FIFO_u_w_addr[1]), .C(n1742), .Y(
        n1743) );
  NOR3X1M U1510 ( .A(FIFO_u_w_addr[2]), .B(n1740), .C(n1744), .Y(n1741) );
  INVXLM U1512 ( .A(FIFO_u_U1_mem[33]), .Y(n1799) );
  INVXLM U1514 ( .A(n949), .Y(n950) );
  NOR3X1M U1516 ( .A(FIFO_u_w_addr[1]), .B(n1738), .C(n1744), .Y(n1739) );
  INVXLM U1517 ( .A(FIFO_u_U1_mem[17]), .Y(n1805) );
  INVXLM U1518 ( .A(n912), .Y(n911) );
  NOR3X1M U1520 ( .A(n1738), .B(n1740), .C(n1744), .Y(n1737) );
  INVXLM U1521 ( .A(FIFO_u_U5_RD_PTR_GRAY_NEXT[1]), .Y(n1513) );
  INVXLM U1531 ( .A(FIFO_u_U5_RD_PTR_GRAY_NEXT[2]), .Y(n1516) );
  INVXLM U1547 ( .A(reg2[7]), .Y(n1223) );
  INVXLM U1555 ( .A(n1871), .Y(n1872) );
  INVXLM U1564 ( .A(synced_p_data[3]), .Y(n1867) );
  INVXLM U1581 ( .A(synced_p_data[2]), .Y(n1868) );
  INVXLM U1589 ( .A(synced_p_data[1]), .Y(n1869) );
  INVXLM U1590 ( .A(synced_p_data[0]), .Y(n1866) );
  INVXLM U1592 ( .A(rx_p_out[0]), .Y(n1244) );
  INVXLM U1594 ( .A(rx_p_out[1]), .Y(n1245) );
  INVXLM U1596 ( .A(rx_p_out[2]), .Y(n1248) );
  INVXLM U1597 ( .A(rx_p_out[3]), .Y(n1246) );
  INVXLM U1599 ( .A(rx_p_out[4]), .Y(n1241) );
  INVXLM U1601 ( .A(rx_p_out[5]), .Y(n1237) );
  INVXLM U1602 ( .A(rx_p_out[6]), .Y(n1243) );
  INVXLM U1609 ( .A(n1215), .Y(n1216) );
  INVXLM U1612 ( .A(rx_p_out[7]), .Y(n1239) );
  INVXLM U1618 ( .A(n1071), .Y(n1825) );
  INVXLM U1620 ( .A(UART_TX_RX_U0_UART_TX_U1_counter[0]), .Y(n1711) );
  INVXLM U1622 ( .A(DP_OP_196J1_124_5161_n43), .Y(n1279) );
  INVXLM U1624 ( .A(n1267), .Y(n1273) );
  INVXLM U1625 ( .A(n1490), .Y(n1417) );
  INVXLM U1626 ( .A(n1549), .Y(n1255) );
  OAI21XLM U1628 ( .A0(n1186), .A1(n1583), .B0(n1146), .Y(n1150) );
  INVXLM U1633 ( .A(n1667), .Y(n1495) );
  INVXLM U1636 ( .A(n1669), .Y(n1498) );
  NAND2BXLM U1637 ( .AN(n1478), .B(n1477), .Y(n1649) );
  INVXLM U1639 ( .A(n1301), .Y(n1290) );
  OAI2B2XLM U1641 ( .A1N(n1197), .A0(n1667), .B0(n1560), .B1(n1670), .Y(n1199)
         );
  INVXLM U1643 ( .A(n1408), .Y(n1394) );
  INVXLM U1644 ( .A(n1447), .Y(n1449) );
  INVXLM U1645 ( .A(n1425), .Y(intadd_7_CI) );
  NOR2BXLM U1648 ( .AN(n1166), .B(n1174), .Y(n1679) );
  INVXLM U1658 ( .A(n1684), .Y(n1508) );
  INVXLM U1661 ( .A(n1499), .Y(n1501) );
  INVXLM U1662 ( .A(reg0[0]), .Y(n1491) );
  INVXLM U1668 ( .A(n1645), .Y(n1484) );
  INVXLM U1675 ( .A(synced_p_data[7]), .Y(n1844) );
  INVXLM U1689 ( .A(synced_p_data[6]), .Y(n1831) );
  INVXLM U1693 ( .A(reg2[6]), .Y(n1114) );
  INVXLM U1694 ( .A(reg2[5]), .Y(n1117) );
  INVXLM U1709 ( .A(synced_p_data[5]), .Y(n1830) );
  INVXLM U1713 ( .A(synced_p_data[4]), .Y(n1829) );
  INVXLM U1718 ( .A(reg2[4]), .Y(n1078) );
  INVXLM U1719 ( .A(n1827), .Y(n1054) );
  NAND2XLM U1728 ( .A(synced_p_data[2]), .B(SO[0]), .Y(n1826) );
  INVXLM U1729 ( .A(n1652), .Y(n1810) );
  NOR2BXLM U1734 ( .AN(n1044), .B(n1733), .Y(n1827) );
  INVXLM U1735 ( .A(n1714), .Y(n1231) );
  INVXLM U1737 ( .A(reg2[0]), .Y(n1235) );
  INVXLM U1739 ( .A(UART_TX_RX_U0_UART_RX_bit_cnt[0]), .Y(n1852) );
  INVXLM U1741 ( .A(UART_TX_RX_U0_UART_RX_edge_cnt[5]), .Y(n1692) );
  INVXLM U1743 ( .A(n1691), .Y(n1693) );
  INVXLM U1745 ( .A(UART_TX_RX_U0_UART_RX_edge_cnt[3]), .Y(n1688) );
  INVXLM U1747 ( .A(UART_TX_RX_U0_UART_RX_edge_cnt[2]), .Y(n1105) );
  INVXLM U1750 ( .A(n1687), .Y(n1689) );
  INVXLM U1751 ( .A(UART_TX_RX_U0_UART_RX_edge_cnt[0]), .Y(n1686) );
  INVXLM U1757 ( .A(UART_TX_RX_U0_UART_RX_edge_cnt[1]), .Y(n1685) );
  INVXLM U1758 ( .A(UART_TX_RX_U0_UART_RX_edge_cnt[4]), .Y(n1126) );
  OAI2B2XLM U1763 ( .A1N(n1116), .A0(UART_TX_RX_U0_UART_RX_edge_cnt[0]), .B0(
        reg2[3]), .B1(n1116), .Y(n1125) );
  INVXLM U1764 ( .A(reg2[3]), .Y(n1108) );
  INVXLM U1766 ( .A(UART_RX_IN), .Y(n1132) );
  INVXLM U1767 ( .A(UART_TX_RX_U0_UART_RX_samp_valid), .Y(n1208) );
  INVXLM U1769 ( .A(UART_TX_RX_U0_UART_RX_par_done), .Y(n1230) );
  INVXLM U1771 ( .A(UART_TX_RX_U0_UART_RX_U7_c_state[0]), .Y(n1716) );
  INVXLM U1772 ( .A(n1234), .Y(n1214) );
  INVXLM U1774 ( .A(UART_TX_RX_U0_UART_RX_U4_count[2]), .Y(n1221) );
  INVXLM U1777 ( .A(UART_TX_RX_U0_UART_RX_U4_count[0]), .Y(n1073) );
  NOR2BXLM U1779 ( .AN(n1134), .B(n1738), .Y(n1736) );
  INVXLM U1784 ( .A(FIFO_u_w_addr[2]), .Y(n1738) );
  INVXLM U1786 ( .A(FIFO_u_w_addr[1]), .Y(n1740) );
  INVXLM U1789 ( .A(FIFO_u_w_addr[0]), .Y(n913) );
  NAND2XLM U1790 ( .A(n913), .B(n914), .Y(n1744) );
  INVXLM U1793 ( .A(FIFO_u_r_addr[1]), .Y(n1696) );
  INVXLM U1798 ( .A(n1061), .Y(n1509) );
  INVXLM U1799 ( .A(UART_TX_RX_U0_UART_TX_U1_counter[2]), .Y(n1705) );
  INVXLM U1804 ( .A(UART_TX_RX_U0_UART_TX_U1_counter[1]), .Y(n1704) );
  INVXLM U1805 ( .A(n1809), .Y(n1713) );
  INVXLM U1810 ( .A(UART_TX_RX_U0_UART_TX_U1_loading), .Y(n1207) );
  INVXLM U1812 ( .A(intadd_0_n1), .Y(n1334) );
  INVXLM U1820 ( .A(intadd_2_SUM_2_), .Y(n1333) );
  INVXLM U1821 ( .A(n1554), .Y(n1351) );
  INVXLM U1823 ( .A(intadd_1_n1), .Y(n1342) );
  INVXLM U1824 ( .A(intadd_0_SUM_3_), .Y(n1341) );
  INVXLM U1826 ( .A(n1422), .Y(n1671) );
  INVXLM U1827 ( .A(n1674), .Y(n1320) );
  INVXLM U1830 ( .A(n1153), .Y(n1060) );
  INVXLM U1831 ( .A(n1321), .Y(n1278) );
  INVXLM U1836 ( .A(n903), .Y(n918) );
  INVXLM U1841 ( .A(sys_ctrl_u_current_state[0]), .Y(n922) );
  INVXLM U1843 ( .A(n964), .Y(n931) );
  INVXLM U1858 ( .A(sys_ctrl_u_current_state[3]), .Y(n892) );
  INVXLM U1861 ( .A(n930), .Y(n1861) );
  INVXLM U1863 ( .A(n946), .Y(n921) );
  INVXLM U1872 ( .A(UART_TX_RX_U0_UART_RX_samp_b), .Y(n1847) );
  INVXLM U1874 ( .A(n972), .Y(n645) );
  INVXLM U1876 ( .A(n1681), .Y(n1276) );
  INVXLM U1879 ( .A(n1027), .Y(n681) );
  INVXLM U1881 ( .A(n994), .Y(n698) );
  INVXLM U1888 ( .A(n1016), .Y(n715) );
  INVXLM U1892 ( .A(n1038), .Y(n732) );
  INVXLM U1893 ( .A(n1005), .Y(n749) );
  INVXLM U1899 ( .A(n983), .Y(n766) );
  INVXLM U1903 ( .A(n1053), .Y(n784) );
  INVXLM U1907 ( .A(UART_TX_RX_U0_UART_RX_bit_cnt[2]), .Y(n1226) );
  INVXLM U1912 ( .A(UART_TX_RX_U0_UART_RX_U4_count[3]), .Y(n1219) );
  INVXLM U1913 ( .A(n1528), .Y(FIFO_u_U4_WR_PTR_GRAY_NEXT[0]) );
  INVXLM U1923 ( .A(n1526), .Y(FIFO_u_U4_WR_PTR_GRAY_NEXT[1]) );
  INVXLM U1928 ( .A(n1517), .Y(FIFO_u_U5_RD_PTR_GRAY_NEXT[3]) );
  OAI2B2XLM U1929 ( .A1N(FIFO_u_U5_RD_PTR_BIN_NEXT[1]), .A0(FIFO_u_r_addr[2]), 
        .B0(FIFO_u_U5_RD_PTR_BIN_NEXT[1]), .B1(n1069), .Y(
        FIFO_u_U5_RD_PTR_GRAY_NEXT[1]) );
  INVXLM U1932 ( .A(n1069), .Y(FIFO_u_U5_RD_PTR_BIN_NEXT[2]) );
  INVXLM U1934 ( .A(n1514), .Y(FIFO_u_U5_RD_PTR_GRAY_NEXT[0]) );
  INVXLM U1947 ( .A(n1065), .Y(FIFO_u_U5_RD_PTR_BIN_NEXT[0]) );
  CLKBUFX6M U1948 ( .A(ref_rst), .Y(n886) );
  INVXLM U1950 ( .A(n1247), .Y(n1899) );
  INVXLM U1952 ( .A(n1848), .Y(n1850) );
  CLKBUFX1M U1958 ( .A(SE), .Y(n1929) );
  INVXLM U1968 ( .A(test_mode), .Y(n613) );
endmodule

