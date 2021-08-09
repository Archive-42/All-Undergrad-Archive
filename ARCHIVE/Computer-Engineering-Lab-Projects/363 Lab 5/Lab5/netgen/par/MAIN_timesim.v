////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: MAIN_timesim.v
// /___/   /\     Timestamp: Sun Dec 04 15:27:43 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf MAIN.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim MAIN.ncd MAIN_timesim.v 
// Device	: 6vlx75tff484-3 (PRODUCTION 1.17 2012-07-09)
// Input file	: MAIN.ncd
// Output file	: \\lions.tcnj.edu\public\homest\quintor2\363 Lab 5\Lab5\netgen\par\MAIN_timesim.v
// # of Modules	: 1
// Design Name	: MAIN
// Xilinx        : C:\Xilinx\14.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module MAIN (
  clk, reset, gtz, eMD, eIR, eC, eAC, eMA, ePC, eWD, eRD, m1c, m2c, m3c, ALU, MD, IR, AC, mux1out, mux2out, mux3out, PC, MA, ALUcont, RD1out, RD2out
);
  input clk;
  input reset;
  input gtz;
  output eMD;
  output eIR;
  output eC;
  output eAC;
  output eMA;
  output ePC;
  output eWD;
  output eRD;
  output m1c;
  output m2c;
  output m3c;
  output [15 : 0] ALU;
  output [15 : 0] MD;
  output [15 : 0] IR;
  output [15 : 0] AC;
  output [11 : 0] mux1out;
  output [11 : 0] mux2out;
  output [11 : 0] mux3out;
  output [11 : 0] PC;
  output [11 : 0] MA;
  output [2 : 0] ALUcont;
  output [15 : 0] RD1out;
  output [15 : 0] RD2out;
  wire AC_1_OBUF_2733;
  wire AC_2_OBUF_2735;
  wire AC_3_OBUF_2737;
  wire AC_4_OBUF_2738;
  wire AC_10_OBUF_2739;
  wire STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_ML_CFGMCLK_SIG;
  wire AC_0_OBUF_2741;
  wire \alu/Mmux__n00983_rs_cy[3] ;
  wire AC_5_OBUF_2743;
  wire AC_6_OBUF_2744;
  wire \alu/Mmux__n00983_rs_cy[7] ;
  wire AC_7_OBUF_2746;
  wire AC_8_OBUF_2747;
  wire AC_9_OBUF_2748;
  wire \alu/Mmux__n00983_rs_cy[11] ;
  wire AC_11_OBUF_2750;
  wire AC_12_OBUF_2751;
  wire AC_13_OBUF_2752;
  wire AC_14_OBUF_2753;
  wire AC_15_OBUF_2754;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/EOS ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/DINSPI ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/PREQ ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/TCKSPI ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/CFGCLK ;
  wire AC_3_OBUF_pack_1;
  wire AC_2_OBUF_pack_2;
  wire AC_1_OBUF_pack_3;
  wire AC_0_OBUF_pack_4;
  wire \alu/Mmux__n00983_A17 ;
  wire AC_7_OBUF_pack_1;
  wire AC_6_OBUF_pack_2;
  wire AC_5_OBUF_pack_3;
  wire AC_4_OBUF_pack_4;
  wire AC_11_OBUF_pack_1;
  wire AC_10_OBUF_pack_2;
  wire AC_9_OBUF_pack_3;
  wire AC_8_OBUF_pack_4;
  wire AC_14_OBUF_pack_2;
  wire AC_15_OBUF_pack_1;
  wire AC_12_OBUF_pack_4;
  wire AC_13_OBUF_pack_3;
  wire \NlwBufferSignal_RD1out_1_OBUF/I ;
  wire \NlwBufferSignal_RD1out_2_OBUF/I ;
  wire \NlwBufferSignal_RD1out_3_OBUF/I ;
  wire \NlwBufferSignal_RD1out_4_OBUF/I ;
  wire \NlwBufferSignal_ALU_10_OBUF/I ;
  wire \NlwBufferSignal_RD1out_5_OBUF/I ;
  wire \NlwBufferSignal_ALU_11_OBUF/I ;
  wire \NlwBufferSignal_RD1out_6_OBUF/I ;
  wire \NlwBufferSignal_ALU_12_OBUF/I ;
  wire \NlwBufferSignal_RD1out_7_OBUF/I ;
  wire \NlwBufferSignal_ALU_13_OBUF/I ;
  wire \NlwBufferSignal_RD1out_8_OBUF/I ;
  wire \NlwBufferSignal_ALU_14_OBUF/I ;
  wire \NlwBufferSignal_RD1out_9_OBUF/I ;
  wire \NlwBufferSignal_ALU_15_OBUF/I ;
  wire \NlwBufferSignal_RD1out_10_OBUF/I ;
  wire \NlwBufferSignal_RD1out_11_OBUF/I ;
  wire \NlwBufferSignal_RD1out_12_OBUF/I ;
  wire \NlwBufferSignal_RD1out_13_OBUF/I ;
  wire \NlwBufferSignal_RD1out_14_OBUF/I ;
  wire \NlwBufferSignal_RD1out_15_OBUF/I ;
  wire \NlwBufferSignal_ALU_0_OBUF/I ;
  wire \NlwBufferSignal_ALU_1_OBUF/I ;
  wire \NlwBufferSignal_ALU_2_OBUF/I ;
  wire \NlwBufferSignal_ALU_3_OBUF/I ;
  wire \NlwBufferSignal_ALU_4_OBUF/I ;
  wire \NlwBufferSignal_ALU_5_OBUF/I ;
  wire \NlwBufferSignal_MD_10_OBUF/I ;
  wire \NlwBufferSignal_ALU_6_OBUF/I ;
  wire \NlwBufferSignal_MD_11_OBUF/I ;
  wire \NlwBufferSignal_ALU_7_OBUF/I ;
  wire \NlwBufferSignal_AC_10_OBUF/I ;
  wire \NlwBufferSignal_MD_12_OBUF/I ;
  wire \NlwBufferSignal_ALU_8_OBUF/I ;
  wire \NlwBufferSignal_AC_11_OBUF/I ;
  wire \NlwBufferSignal_MD_13_OBUF/I ;
  wire \NlwBufferSignal_ALU_9_OBUF/I ;
  wire \NlwBufferSignal_AC_12_OBUF/I ;
  wire \NlwBufferSignal_MD_14_OBUF/I ;
  wire \NlwBufferSignal_AC_13_OBUF/I ;
  wire \NlwBufferSignal_MD_0_OBUF/I ;
  wire \NlwBufferSignal_MD_15_OBUF/I ;
  wire \NlwBufferSignal_AC_0_OBUF/I ;
  wire \NlwBufferSignal_AC_14_OBUF/I ;
  wire \NlwBufferSignal_MD_1_OBUF/I ;
  wire \NlwBufferSignal_AC_1_OBUF/I ;
  wire \NlwBufferSignal_AC_15_OBUF/I ;
  wire \NlwBufferSignal_MD_2_OBUF/I ;
  wire \NlwBufferSignal_AC_2_OBUF/I ;
  wire \NlwBufferSignal_MD_3_OBUF/I ;
  wire \NlwBufferSignal_AC_3_OBUF/I ;
  wire \NlwBufferSignal_MD_4_OBUF/I ;
  wire \NlwBufferSignal_AC_4_OBUF/I ;
  wire \NlwBufferSignal_MD_5_OBUF/I ;
  wire \NlwBufferSignal_AC_5_OBUF/I ;
  wire \NlwBufferSignal_MD_6_OBUF/I ;
  wire \NlwBufferSignal_AC_6_OBUF/I ;
  wire \NlwBufferSignal_MD_7_OBUF/I ;
  wire \NlwBufferSignal_AC_7_OBUF/I ;
  wire \NlwBufferSignal_MD_8_OBUF/I ;
  wire \NlwBufferSignal_AC_8_OBUF/I ;
  wire \NlwBufferSignal_MD_9_OBUF/I ;
  wire \NlwBufferSignal_AC_9_OBUF/I ;
  wire \NlwBufferSignal_RD1out_0_OBUF/I ;
  wire GND;
  wire VCC;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_12.D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp3.CYINITGND_O_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_13.C5LUT_O_UNCONNECTED ;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_14.B5LUT_O_UNCONNECTED ;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_8.D5LUT_O_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_9.C5LUT_O_UNCONNECTED ;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_10.B5LUT_O_UNCONNECTED ;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_11.A5LUT_O_UNCONNECTED ;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_4.D5LUT_O_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_5.C5LUT_O_UNCONNECTED ;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_6.B5LUT_O_UNCONNECTED ;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_7.A5LUT_O_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_xor<15>_CO[0]_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_xor<15>_CO[1]_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_xor<15>_CO[2]_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_xor<15>_CO[3]_UNCONNECTED ;
  wire \NLW_alu/Mmux__n00983_rs_xor<15>_DI[3]_UNCONNECTED ;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1.C5LUT_O_UNCONNECTED ;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_2.B5LUT_O_UNCONNECTED ;
  wire \NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_3.A5LUT_O_UNCONNECTED ;
  wire [15 : 1] \alu/Mmux__n00983_rs_A ;
  wire [0 : 0] \alu/Mmux__n00983_rs_lut ;
  initial $sdf_annotate("netgen/par/main_timesim.sdf");
  X_OPAD #(
    .LOC ( "IOB_X1Y29" ))
  \RD1out<1>  (
    .PAD(RD1out[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y29" ))
  RD1out_1_OBUF (
    .I(\NlwBufferSignal_RD1out_1_OBUF/I ),
    .O(RD1out[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y11" ))
  \PC<0>  (
    .PAD(PC[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y11" ))
  PC_0_OBUF (
    .I(1'b0),
    .O(PC[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y24" ))
  \RD1out<2>  (
    .PAD(RD1out[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y24" ))
  RD1out_2_OBUF (
    .I(\NlwBufferSignal_RD1out_2_OBUF/I ),
    .O(RD1out[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y5" ))
  \PC<1>  (
    .PAD(PC[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y5" ))
  PC_1_OBUF (
    .I(1'b0),
    .O(PC[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y73" ))
  eAC_15 (
    .PAD(eAC)
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y73" ))
  eAC_OBUF (
    .I(1'b1),
    .O(eAC)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y37" ))
  \MA<10>  (
    .PAD(MA[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y37" ))
  MA_10_OBUF (
    .I(1'b0),
    .O(MA[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y18" ))
  \RD1out<3>  (
    .PAD(RD1out[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y18" ))
  RD1out_3_OBUF (
    .I(\NlwBufferSignal_RD1out_3_OBUF/I ),
    .O(RD1out[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y9" ))
  \PC<2>  (
    .PAD(PC[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y9" ))
  PC_2_OBUF (
    .I(1'b0),
    .O(PC[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y36" ))
  \MA<11>  (
    .PAD(MA[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y36" ))
  MA_11_OBUF (
    .I(1'b0),
    .O(MA[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y22" ))
  \RD1out<4>  (
    .PAD(RD1out[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y22" ))
  RD1out_4_OBUF (
    .I(\NlwBufferSignal_RD1out_4_OBUF/I ),
    .O(RD1out[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y4" ))
  \PC<3>  (
    .PAD(PC[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y4" ))
  PC_3_OBUF (
    .I(1'b0),
    .O(PC[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y25" ))
  \ALU<10>  (
    .PAD(ALU[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y25" ))
  ALU_10_OBUF (
    .I(\NlwBufferSignal_ALU_10_OBUF/I ),
    .O(ALU[10])
  );
  X_BUF   \alu/Mmux__n00983_rs_cy<3>/alu/Mmux__n00983_rs_cy<3>_DMUX_Delay  (
    .I(AC_3_OBUF_pack_1),
    .O(AC_3_OBUF_2737)
  );
  X_BUF   \alu/Mmux__n00983_rs_cy<3>/alu/Mmux__n00983_rs_cy<3>_CMUX_Delay  (
    .I(AC_2_OBUF_pack_2),
    .O(AC_2_OBUF_2735)
  );
  X_BUF   \alu/Mmux__n00983_rs_cy<3>/alu/Mmux__n00983_rs_cy<3>_BMUX_Delay  (
    .I(AC_1_OBUF_pack_3),
    .O(AC_1_OBUF_2733)
  );
  X_BUF   \alu/Mmux__n00983_rs_cy<3>/alu/Mmux__n00983_rs_cy<3>_AMUX_Delay  (
    .I(AC_0_OBUF_pack_4),
    .O(AC_0_OBUF_2741)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y29" ),
    .INIT ( 64'h3333333333333333 ))
  \alu/Mmux__n00983_A101_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(AC_3_OBUF_2737),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y29" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1_12.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_12.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X34Y29" ))
  \ProtoComp3.CYINITGND  (
    .O(\NLW_ProtoComp3.CYINITGND_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X34Y29" ))
  \alu/Mmux__n00983_rs_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b0),
    .CO({\alu/Mmux__n00983_rs_cy[3] , \NLW_alu/Mmux__n00983_rs_cy<3>_CO[2]_UNCONNECTED , \NLW_alu/Mmux__n00983_rs_cy<3>_CO[1]_UNCONNECTED , 
\NLW_alu/Mmux__n00983_rs_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, \alu/Mmux__n00983_rs_lut [0]}),
    .O({AC_3_OBUF_pack_1, AC_2_OBUF_pack_2, AC_1_OBUF_pack_3, AC_0_OBUF_pack_4}),
    .S({\alu/Mmux__n00983_rs_A [3], \alu/Mmux__n00983_rs_A [2], \alu/Mmux__n00983_rs_A [1], \alu/Mmux__n00983_A17 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y29" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \alu/Mmux__n00983_A91_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(AC_2_OBUF_2735),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y29" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1_13.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_13.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y29" ),
    .INIT ( 64'h3333333333333333 ))
  \alu/Mmux__n00983_A81_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(AC_1_OBUF_2733),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y29" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1_14.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_14.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y29" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \alu/Mmux__n00983_A171_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(AC_0_OBUF_2741),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_A17 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y29" ),
    .INIT ( 32'h0F0F0F0F ))
  \alu/Mmux__n00983_A17_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(AC_0_OBUF_2741),
    .O(\alu/Mmux__n00983_rs_lut [0])
  );
  X_BUF   \alu/Mmux__n00983_rs_cy<7>/alu/Mmux__n00983_rs_cy<7>_DMUX_Delay  (
    .I(AC_7_OBUF_pack_1),
    .O(AC_7_OBUF_2746)
  );
  X_BUF   \alu/Mmux__n00983_rs_cy<7>/alu/Mmux__n00983_rs_cy<7>_CMUX_Delay  (
    .I(AC_6_OBUF_pack_2),
    .O(AC_6_OBUF_2744)
  );
  X_BUF   \alu/Mmux__n00983_rs_cy<7>/alu/Mmux__n00983_rs_cy<7>_BMUX_Delay  (
    .I(AC_5_OBUF_pack_3),
    .O(AC_5_OBUF_2743)
  );
  X_BUF   \alu/Mmux__n00983_rs_cy<7>/alu/Mmux__n00983_rs_cy<7>_AMUX_Delay  (
    .I(AC_4_OBUF_pack_4),
    .O(AC_4_OBUF_2738)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y30" ),
    .INIT ( 64'h3333333333333333 ))
  \alu/Mmux__n00983_A141_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(AC_7_OBUF_2746),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y30" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1_8.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_8.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X34Y30" ))
  \alu/Mmux__n00983_rs_cy<7>  (
    .CI(\alu/Mmux__n00983_rs_cy[3] ),
    .CYINIT(1'b0),
    .CO({\alu/Mmux__n00983_rs_cy[7] , \NLW_alu/Mmux__n00983_rs_cy<7>_CO[2]_UNCONNECTED , \NLW_alu/Mmux__n00983_rs_cy<7>_CO[1]_UNCONNECTED , 
\NLW_alu/Mmux__n00983_rs_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({AC_7_OBUF_pack_1, AC_6_OBUF_pack_2, AC_5_OBUF_pack_3, AC_4_OBUF_pack_4}),
    .S({\alu/Mmux__n00983_rs_A [7], \alu/Mmux__n00983_rs_A [6], \alu/Mmux__n00983_rs_A [5], \alu/Mmux__n00983_rs_A [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y30" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \alu/Mmux__n00983_A131_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(AC_6_OBUF_2744),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y30" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1_9.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_9.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y30" ),
    .INIT ( 64'h3333333333333333 ))
  \alu/Mmux__n00983_A121_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(AC_5_OBUF_2743),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y30" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1_10.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_10.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y30" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \alu/Mmux__n00983_A111_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(AC_4_OBUF_2738),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y30" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1_11.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_11.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \alu/Mmux__n00983_rs_cy<11>/alu/Mmux__n00983_rs_cy<11>_DMUX_Delay  (
    .I(AC_11_OBUF_pack_1),
    .O(AC_11_OBUF_2750)
  );
  X_BUF   \alu/Mmux__n00983_rs_cy<11>/alu/Mmux__n00983_rs_cy<11>_CMUX_Delay  (
    .I(AC_10_OBUF_pack_2),
    .O(AC_10_OBUF_2739)
  );
  X_BUF   \alu/Mmux__n00983_rs_cy<11>/alu/Mmux__n00983_rs_cy<11>_BMUX_Delay  (
    .I(AC_9_OBUF_pack_3),
    .O(AC_9_OBUF_2748)
  );
  X_BUF   \alu/Mmux__n00983_rs_cy<11>/alu/Mmux__n00983_rs_cy<11>_AMUX_Delay  (
    .I(AC_8_OBUF_pack_4),
    .O(AC_8_OBUF_2747)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y31" ),
    .INIT ( 64'h3333333333333333 ))
  \alu/Mmux__n00983_A31_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(AC_11_OBUF_2750),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y31" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1_4.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_4.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X34Y31" ))
  \alu/Mmux__n00983_rs_cy<11>  (
    .CI(\alu/Mmux__n00983_rs_cy[7] ),
    .CYINIT(1'b0),
    .CO({\alu/Mmux__n00983_rs_cy[11] , \NLW_alu/Mmux__n00983_rs_cy<11>_CO[2]_UNCONNECTED , \NLW_alu/Mmux__n00983_rs_cy<11>_CO[1]_UNCONNECTED , 
\NLW_alu/Mmux__n00983_rs_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({AC_11_OBUF_pack_1, AC_10_OBUF_pack_2, AC_9_OBUF_pack_3, AC_8_OBUF_pack_4}),
    .S({\alu/Mmux__n00983_rs_A [11], \alu/Mmux__n00983_rs_A [10], \alu/Mmux__n00983_rs_A [9], \alu/Mmux__n00983_rs_A [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y31" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \alu/Mmux__n00983_A21_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(AC_10_OBUF_2739),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y31" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1_5.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_5.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y31" ),
    .INIT ( 64'h3333333333333333 ))
  \alu/Mmux__n00983_A161_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(AC_9_OBUF_2748),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y31" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1_6.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_6.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y31" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \alu/Mmux__n00983_A151_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(AC_8_OBUF_2747),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y31" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1_7.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_7.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \AC_15_OBUF/AC_15_OBUF_DMUX_Delay  (
    .I(AC_15_OBUF_pack_1),
    .O(AC_15_OBUF_2754)
  );
  X_BUF   \AC_15_OBUF/AC_15_OBUF_CMUX_Delay  (
    .I(AC_14_OBUF_pack_2),
    .O(AC_14_OBUF_2753)
  );
  X_BUF   \AC_15_OBUF/AC_15_OBUF_BMUX_Delay  (
    .I(AC_13_OBUF_pack_3),
    .O(AC_13_OBUF_2752)
  );
  X_BUF   \AC_15_OBUF/AC_15_OBUF_AMUX_Delay  (
    .I(AC_12_OBUF_pack_4),
    .O(AC_12_OBUF_2751)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y32" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \alu/Mmux__n00983_A71_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(AC_15_OBUF_2754),
    .O(\alu/Mmux__n00983_rs_A [15])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X34Y32" ))
  \alu/Mmux__n00983_rs_xor<15>  (
    .CI(\alu/Mmux__n00983_rs_cy[11] ),
    .CYINIT(1'b0),
    .CO({\NLW_alu/Mmux__n00983_rs_xor<15>_CO[3]_UNCONNECTED , \NLW_alu/Mmux__n00983_rs_xor<15>_CO[2]_UNCONNECTED , 
\NLW_alu/Mmux__n00983_rs_xor<15>_CO[1]_UNCONNECTED , \NLW_alu/Mmux__n00983_rs_xor<15>_CO[0]_UNCONNECTED }),
    .DI({\NLW_alu/Mmux__n00983_rs_xor<15>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({AC_15_OBUF_pack_1, AC_14_OBUF_pack_2, AC_13_OBUF_pack_3, AC_12_OBUF_pack_4}),
    .S({\alu/Mmux__n00983_rs_A [15], \alu/Mmux__n00983_rs_A [14], \alu/Mmux__n00983_rs_A [13], \alu/Mmux__n00983_rs_A [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y32" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \alu/Mmux__n00983_A61_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(AC_14_OBUF_2753),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y32" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y32" ),
    .INIT ( 64'h3333333333333333 ))
  \alu/Mmux__n00983_A51_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(AC_13_OBUF_2752),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y32" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1_2.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_2.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y32" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \alu/Mmux__n00983_A41_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(AC_12_OBUF_2751),
    .ADR5(1'b1),
    .O(\alu/Mmux__n00983_rs_A [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y32" ),
    .INIT ( 32'h00000000 ))
  \Mem/GND_119_o_mux3out[3]_AND_143_o1_3.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_Mem/GND_119_o_mux3out[3]_AND_143_o1_3.A5LUT_O_UNCONNECTED )
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y16" ))
  \RD1out<5>  (
    .PAD(RD1out[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y16" ))
  RD1out_5_OBUF (
    .I(\NlwBufferSignal_RD1out_5_OBUF/I ),
    .O(RD1out[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y8" ))
  \PC<4>  (
    .PAD(PC[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y8" ))
  PC_4_OBUF (
    .I(1'b0),
    .O(PC[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y63" ))
  \IR<0>  (
    .PAD(IR[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y63" ))
  IR_0_OBUF (
    .I(1'b0),
    .O(IR[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y21" ))
  \ALU<11>  (
    .PAD(ALU[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y21" ))
  ALU_11_OBUF (
    .I(\NlwBufferSignal_ALU_11_OBUF/I ),
    .O(ALU[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y20" ))
  \RD1out<6>  (
    .PAD(RD1out[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y20" ))
  RD1out_6_OBUF (
    .I(\NlwBufferSignal_RD1out_6_OBUF/I ),
    .O(RD1out[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y6" ))
  \PC<5>  (
    .PAD(PC[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y6" ))
  PC_5_OBUF (
    .I(1'b0),
    .O(PC[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y62" ))
  \IR<1>  (
    .PAD(IR[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y62" ))
  IR_1_OBUF (
    .I(1'b0),
    .O(IR[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y23" ))
  \ALU<12>  (
    .PAD(ALU[12])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y23" ))
  ALU_12_OBUF (
    .I(\NlwBufferSignal_ALU_12_OBUF/I ),
    .O(ALU[12])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y14" ))
  \RD1out<7>  (
    .PAD(RD1out[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y14" ))
  RD1out_7_OBUF (
    .I(\NlwBufferSignal_RD1out_7_OBUF/I ),
    .O(RD1out[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y5" ))
  \PC<6>  (
    .PAD(PC[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y5" ))
  PC_6_OBUF (
    .I(1'b0),
    .O(PC[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y61" ))
  \IR<2>  (
    .PAD(IR[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y61" ))
  IR_2_OBUF (
    .I(1'b0),
    .O(IR[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y26" ))
  \mux3out<10>  (
    .PAD(mux3out[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y26" ))
  mux3out_10_OBUF (
    .I(1'b0),
    .O(mux3out[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y20" ))
  \ALU<13>  (
    .PAD(ALU[13])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y20" ))
  ALU_13_OBUF (
    .I(\NlwBufferSignal_ALU_13_OBUF/I ),
    .O(ALU[13])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y16" ))
  \RD1out<8>  (
    .PAD(RD1out[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y16" ))
  RD1out_8_OBUF (
    .I(\NlwBufferSignal_RD1out_8_OBUF/I ),
    .O(RD1out[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y4" ))
  \PC<7>  (
    .PAD(PC[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y4" ))
  PC_7_OBUF (
    .I(1'b0),
    .O(PC[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y60" ))
  \IR<3>  (
    .PAD(IR[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y60" ))
  IR_3_OBUF (
    .I(1'b0),
    .O(IR[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y18" ))
  \mux3out<11>  (
    .PAD(mux3out[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y18" ))
  mux3out_11_OBUF (
    .I(1'b0),
    .O(mux3out[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y23" ))
  \mux1out<0>  (
    .PAD(mux1out[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y23" ))
  mux1out_0_OBUF (
    .I(1'b0),
    .O(mux1out[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y24" ))
  \ALU<14>  (
    .PAD(ALU[14])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y24" ))
  ALU_14_OBUF (
    .I(\NlwBufferSignal_ALU_14_OBUF/I ),
    .O(ALU[14])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y6" ))
  \RD1out<9>  (
    .PAD(RD1out[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y6" ))
  RD1out_9_OBUF (
    .I(\NlwBufferSignal_RD1out_9_OBUF/I ),
    .O(RD1out[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y3" ))
  \PC<8>  (
    .PAD(PC[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y3" ))
  PC_8_OBUF (
    .I(1'b0),
    .O(PC[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y59" ))
  \IR<4>  (
    .PAD(IR[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y59" ))
  IR_4_OBUF (
    .I(1'b0),
    .O(IR[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y22" ))
  \mux1out<1>  (
    .PAD(mux1out[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y22" ))
  mux1out_1_OBUF (
    .I(1'b0),
    .O(mux1out[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y12" ))
  \ALU<15>  (
    .PAD(ALU[15])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y12" ))
  ALU_15_OBUF (
    .I(\NlwBufferSignal_ALU_15_OBUF/I ),
    .O(ALU[15])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y2" ))
  \PC<9>  (
    .PAD(PC[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y2" ))
  PC_9_OBUF (
    .I(1'b0),
    .O(PC[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y58" ))
  \IR<5>  (
    .PAD(IR[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y58" ))
  IR_5_OBUF (
    .I(1'b0),
    .O(IR[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y21" ))
  \mux1out<2>  (
    .PAD(mux1out[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y21" ))
  mux1out_2_OBUF (
    .I(1'b0),
    .O(mux1out[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y57" ))
  \IR<6>  (
    .PAD(IR[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y57" ))
  IR_6_OBUF (
    .I(1'b0),
    .O(IR[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y20" ))
  \mux1out<3>  (
    .PAD(mux1out[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y20" ))
  mux1out_3_OBUF (
    .I(1'b0),
    .O(mux1out[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y56" ))
  \IR<7>  (
    .PAD(IR[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y56" ))
  IR_7_OBUF (
    .I(1'b0),
    .O(IR[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y19" ))
  \mux1out<4>  (
    .PAD(mux1out[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y19" ))
  mux1out_4_OBUF (
    .I(1'b0),
    .O(mux1out[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y55" ))
  \IR<8>  (
    .PAD(IR[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y55" ))
  IR_8_OBUF (
    .I(1'b0),
    .O(IR[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y71" ))
  eMA_193 (
    .PAD(eMA)
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y71" ))
  eMA_OBUF (
    .I(1'b1),
    .O(eMA)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y18" ))
  \mux1out<5>  (
    .PAD(mux1out[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y18" ))
  mux1out_5_OBUF (
    .I(1'b0),
    .O(mux1out[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y14" ))
  \RD1out<10>  (
    .PAD(RD1out[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y14" ))
  RD1out_10_OBUF (
    .I(\NlwBufferSignal_RD1out_10_OBUF/I ),
    .O(RD1out[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y54" ))
  \IR<9>  (
    .PAD(IR[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y54" ))
  IR_9_OBUF (
    .I(1'b0),
    .O(IR[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y17" ))
  \mux1out<6>  (
    .PAD(mux1out[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y17" ))
  mux1out_6_OBUF (
    .I(1'b0),
    .O(mux1out[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y3" ))
  eMD_208 (
    .PAD(eMD)
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y3" ))
  eMD_OBUF (
    .I(1'b1),
    .O(eMD)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y10" ))
  \RD1out<11>  (
    .PAD(RD1out[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y10" ))
  RD1out_11_OBUF (
    .I(\NlwBufferSignal_RD1out_11_OBUF/I ),
    .O(RD1out[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y16" ))
  \mux1out<7>  (
    .PAD(mux1out[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y16" ))
  mux1out_7_OBUF (
    .I(1'b0),
    .O(mux1out[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y12" ))
  \RD1out<12>  (
    .PAD(RD1out[12])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y12" ))
  RD1out_12_OBUF (
    .I(\NlwBufferSignal_RD1out_12_OBUF/I ),
    .O(RD1out[12])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y1" ))
  \PC<10>  (
    .PAD(PC[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y1" ))
  PC_10_OBUF (
    .I(1'b0),
    .O(PC[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y15" ))
  \mux1out<8>  (
    .PAD(mux1out[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y15" ))
  mux1out_8_OBUF (
    .I(1'b0),
    .O(mux1out[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y8" ))
  \RD1out<13>  (
    .PAD(RD1out[13])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y8" ))
  RD1out_13_OBUF (
    .I(\NlwBufferSignal_RD1out_13_OBUF/I ),
    .O(RD1out[13])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y0" ))
  \PC<11>  (
    .PAD(PC[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y0" ))
  PC_11_OBUF (
    .I(1'b0),
    .O(PC[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y79" ))
  ePC_232 (
    .PAD(ePC)
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y79" ))
  ePC_OBUF (
    .I(1'b1),
    .O(ePC)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y14" ))
  \mux1out<9>  (
    .PAD(mux1out[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y14" ))
  mux1out_9_OBUF (
    .I(1'b0),
    .O(mux1out[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y78" ))
  eIR_238 (
    .PAD(eIR)
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y78" ))
  eIR_OBUF (
    .I(1'b0),
    .O(eIR)
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y10" ))
  \RD1out<14>  (
    .PAD(RD1out[14])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y10" ))
  RD1out_14_OBUF (
    .I(\NlwBufferSignal_RD1out_14_OBUF/I ),
    .O(RD1out[14])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y74" ))
  m1c_244 (
    .PAD(m1c)
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y74" ))
  m1c_OBUF (
    .I(1'b0),
    .O(m1c)
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y7" ))
  \RD1out<15>  (
    .PAD(RD1out[15])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y7" ))
  RD1out_15_OBUF (
    .I(\NlwBufferSignal_RD1out_15_OBUF/I ),
    .O(RD1out[15])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y2" ))
  m2c_250 (
    .PAD(m2c)
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y2" ))
  m2c_OBUF (
    .I(1'b0),
    .O(m2c)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y47" ))
  \MA<0>  (
    .PAD(MA[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y47" ))
  MA_0_OBUF (
    .I(1'b0),
    .O(MA[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y1" ))
  eRD_256 (
    .PAD(eRD)
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y1" ))
  eRD_OBUF (
    .I(1'b1),
    .O(eRD)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y0" ))
  m3c_259 (
    .PAD(m3c)
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y0" ))
  m3c_OBUF (
    .I(1'b0),
    .O(m3c)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y46" ))
  \MA<1>  (
    .PAD(MA[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y46" ))
  MA_1_OBUF (
    .I(1'b0),
    .O(MA[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y38" ))
  \ALU<0>  (
    .PAD(ALU[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y38" ))
  ALU_0_OBUF (
    .I(\NlwBufferSignal_ALU_0_OBUF/I ),
    .O(ALU[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y77" ))
  \ALUcont<0>  (
    .PAD(ALUcont[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y77" ))
  ALUcont_0_OBUF (
    .I(1'b0),
    .O(ALUcont[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y45" ))
  \MA<2>  (
    .PAD(MA[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y45" ))
  MA_2_OBUF (
    .I(1'b0),
    .O(MA[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y37" ))
  \ALU<1>  (
    .PAD(ALU[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y37" ))
  ALU_1_OBUF (
    .I(\NlwBufferSignal_ALU_1_OBUF/I ),
    .O(ALU[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y76" ))
  \ALUcont<1>  (
    .PAD(ALUcont[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y76" ))
  ALUcont_1_OBUF (
    .I(1'b0),
    .O(ALUcont[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y39" ))
  \mux3out<0>  (
    .PAD(mux3out[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y39" ))
  mux3out_0_OBUF (
    .I(1'b0),
    .O(mux3out[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y44" ))
  \MA<3>  (
    .PAD(MA[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y44" ))
  MA_3_OBUF (
    .I(1'b0),
    .O(MA[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y28" ))
  \ALU<2>  (
    .PAD(ALU[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y28" ))
  ALU_2_OBUF (
    .I(\NlwBufferSignal_ALU_2_OBUF/I ),
    .O(ALU[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y75" ))
  \ALUcont<2>  (
    .PAD(ALUcont[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y75" ))
  ALUcont_2_OBUF (
    .I(1'b0),
    .O(ALUcont[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y38" ))
  \mux3out<1>  (
    .PAD(mux3out[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y38" ))
  mux3out_1_OBUF (
    .I(1'b0),
    .O(mux3out[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y43" ))
  \MA<4>  (
    .PAD(MA[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y43" ))
  MA_4_OBUF (
    .I(1'b0),
    .O(MA[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y34" ))
  \ALU<3>  (
    .PAD(ALU[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y34" ))
  ALU_3_OBUF (
    .I(\NlwBufferSignal_ALU_3_OBUF/I ),
    .O(ALU[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y37" ))
  \mux3out<2>  (
    .PAD(mux3out[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y37" ))
  mux3out_2_OBUF (
    .I(1'b0),
    .O(mux3out[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y53" ))
  \IR<10>  (
    .PAD(IR[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y53" ))
  IR_10_OBUF (
    .I(1'b0),
    .O(IR[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y42" ))
  \MA<5>  (
    .PAD(MA[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y42" ))
  MA_5_OBUF (
    .I(1'b0),
    .O(MA[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y31" ))
  \ALU<4>  (
    .PAD(ALU[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y31" ))
  ALU_4_OBUF (
    .I(\NlwBufferSignal_ALU_4_OBUF/I ),
    .O(ALU[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y72" ))
  eWD_313 (
    .PAD(eWD)
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y72" ))
  eWD_OBUF (
    .I(1'b1),
    .O(eWD)
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y36" ))
  \mux3out<3>  (
    .PAD(mux3out[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y36" ))
  mux3out_3_OBUF (
    .I(1'b0),
    .O(mux3out[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y52" ))
  \IR<11>  (
    .PAD(IR[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y52" ))
  IR_11_OBUF (
    .I(1'b0),
    .O(IR[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y41" ))
  \MA<6>  (
    .PAD(MA[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y41" ))
  MA_6_OBUF (
    .I(1'b0),
    .O(MA[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y35" ))
  \ALU<5>  (
    .PAD(ALU[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y35" ))
  ALU_5_OBUF (
    .I(\NlwBufferSignal_ALU_5_OBUF/I ),
    .O(ALU[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y35" ))
  \mux3out<4>  (
    .PAD(mux3out[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y35" ))
  mux3out_4_OBUF (
    .I(1'b0),
    .O(mux3out[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y51" ))
  \IR<12>  (
    .PAD(IR[12])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y51" ))
  IR_12_OBUF (
    .I(1'b0),
    .O(IR[12])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y40" ))
  \MA<7>  (
    .PAD(MA[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y40" ))
  MA_7_OBUF (
    .I(1'b0),
    .O(MA[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y17" ))
  \MD<10>  (
    .PAD(MD[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y17" ))
  MD_10_OBUF (
    .I(\NlwBufferSignal_MD_10_OBUF/I ),
    .O(MD[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y26" ))
  \ALU<6>  (
    .PAD(ALU[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y26" ))
  ALU_6_OBUF (
    .I(\NlwBufferSignal_ALU_6_OBUF/I ),
    .O(ALU[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y34" ))
  \mux3out<5>  (
    .PAD(mux3out[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y34" ))
  mux3out_5_OBUF (
    .I(1'b0),
    .O(mux3out[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y50" ))
  \IR<13>  (
    .PAD(IR[13])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y50" ))
  IR_13_OBUF (
    .I(1'b0),
    .O(IR[13])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y69" ))
  \RD2out<10>  (
    .PAD(RD2out[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y69" ))
  RD2out_10_OBUF (
    .I(1'b0),
    .O(RD2out[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y39" ))
  \MA<8>  (
    .PAD(MA[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y39" ))
  MA_8_OBUF (
    .I(1'b0),
    .O(MA[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y11" ))
  \MD<11>  (
    .PAD(MD[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y11" ))
  MD_11_OBUF (
    .I(\NlwBufferSignal_MD_11_OBUF/I ),
    .O(MD[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y31" ))
  \ALU<7>  (
    .PAD(ALU[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y31" ))
  ALU_7_OBUF (
    .I(\NlwBufferSignal_ALU_7_OBUF/I ),
    .O(ALU[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y33" ))
  \mux3out<6>  (
    .PAD(mux3out[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y33" ))
  mux3out_6_OBUF (
    .I(1'b0),
    .O(mux3out[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y49" ))
  \IR<14>  (
    .PAD(IR[14])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y49" ))
  IR_14_OBUF (
    .I(1'b0),
    .O(IR[14])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y68" ))
  \RD2out<11>  (
    .PAD(RD2out[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y68" ))
  RD2out_11_OBUF (
    .I(1'b0),
    .O(RD2out[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y38" ))
  \MA<9>  (
    .PAD(MA[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y38" ))
  MA_9_OBUF (
    .I(1'b0),
    .O(MA[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y24" ))
  \AC<10>  (
    .PAD(AC[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y24" ))
  AC_10_OBUF (
    .I(\NlwBufferSignal_AC_10_OBUF/I ),
    .O(AC[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y15" ))
  \MD<12>  (
    .PAD(MD[12])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y15" ))
  MD_12_OBUF (
    .I(\NlwBufferSignal_MD_12_OBUF/I ),
    .O(MD[12])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y27" ))
  \ALU<8>  (
    .PAD(ALU[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y27" ))
  ALU_8_OBUF (
    .I(\NlwBufferSignal_ALU_8_OBUF/I ),
    .O(ALU[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y32" ))
  \mux3out<7>  (
    .PAD(mux3out[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y32" ))
  mux3out_7_OBUF (
    .I(1'b0),
    .O(mux3out[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y48" ))
  \IR<15>  (
    .PAD(IR[15])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y48" ))
  IR_15_OBUF (
    .I(1'b0),
    .O(IR[15])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y67" ))
  \RD2out<12>  (
    .PAD(RD2out[12])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y67" ))
  RD2out_12_OBUF (
    .I(1'b1),
    .O(RD2out[12])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y33" ))
  \AC<11>  (
    .PAD(AC[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y33" ))
  AC_11_OBUF (
    .I(\NlwBufferSignal_AC_11_OBUF/I ),
    .O(AC[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y9" ))
  \MD<13>  (
    .PAD(MD[13])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y9" ))
  MD_13_OBUF (
    .I(\NlwBufferSignal_MD_13_OBUF/I ),
    .O(MD[13])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y22" ))
  \ALU<9>  (
    .PAD(ALU[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y22" ))
  ALU_9_OBUF (
    .I(\NlwBufferSignal_ALU_9_OBUF/I ),
    .O(ALU[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y31" ))
  \mux3out<8>  (
    .PAD(mux3out[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y31" ))
  mux3out_8_OBUF (
    .I(1'b0),
    .O(mux3out[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y66" ))
  \RD2out<13>  (
    .PAD(RD2out[13])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y66" ))
  RD2out_13_OBUF (
    .I(1'b1),
    .O(RD2out[13])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y32" ))
  \AC<12>  (
    .PAD(AC[12])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y32" ))
  AC_12_OBUF (
    .I(\NlwBufferSignal_AC_12_OBUF/I ),
    .O(AC[12])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y13" ))
  \MD<14>  (
    .PAD(MD[14])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y13" ))
  MD_14_OBUF (
    .I(\NlwBufferSignal_MD_14_OBUF/I ),
    .O(MD[14])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y30" ))
  \mux3out<9>  (
    .PAD(mux3out[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y30" ))
  mux3out_9_OBUF (
    .I(1'b0),
    .O(mux3out[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y13" ))
  \mux1out<10>  (
    .PAD(mux1out[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y13" ))
  mux1out_10_OBUF (
    .I(1'b0),
    .O(mux1out[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y65" ))
  \RD2out<14>  (
    .PAD(RD2out[14])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y65" ))
  RD2out_14_OBUF (
    .I(1'b0),
    .O(RD2out[14])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y33" ))
  \AC<13>  (
    .PAD(AC[13])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y33" ))
  AC_13_OBUF (
    .I(\NlwBufferSignal_AC_13_OBUF/I ),
    .O(AC[13])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y28" ))
  \MD<0>  (
    .PAD(MD[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y28" ))
  MD_0_OBUF (
    .I(\NlwBufferSignal_MD_0_OBUF/I ),
    .O(MD[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y7" ))
  \MD<15>  (
    .PAD(MD[15])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y7" ))
  MD_15_OBUF (
    .I(\NlwBufferSignal_MD_15_OBUF/I ),
    .O(MD[15])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y79" ))
  \RD2out<0>  (
    .PAD(RD2out[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y79" ))
  RD2out_0_OBUF (
    .I(1'b0),
    .O(RD2out[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y12" ))
  \mux1out<11>  (
    .PAD(mux1out[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y12" ))
  mux1out_11_OBUF (
    .I(1'b0),
    .O(mux1out[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y64" ))
  \RD2out<15>  (
    .PAD(RD2out[15])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y64" ))
  RD2out_15_OBUF (
    .I(1'b1),
    .O(RD2out[15])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y39" ))
  \AC<0>  (
    .PAD(AC[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y39" ))
  AC_0_OBUF (
    .I(\NlwBufferSignal_AC_0_OBUF/I ),
    .O(AC[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y25" ))
  \AC<14>  (
    .PAD(AC[14])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y25" ))
  AC_14_OBUF (
    .I(\NlwBufferSignal_AC_14_OBUF/I ),
    .O(AC[14])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y29" ))
  \MD<1>  (
    .PAD(MD[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y29" ))
  MD_1_OBUF (
    .I(\NlwBufferSignal_MD_1_OBUF/I ),
    .O(MD[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y78" ))
  \RD2out<1>  (
    .PAD(RD2out[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y78" ))
  RD2out_1_OBUF (
    .I(1'b1),
    .O(RD2out[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y36" ))
  \AC<1>  (
    .PAD(AC[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y36" ))
  AC_1_OBUF (
    .I(\NlwBufferSignal_AC_1_OBUF/I ),
    .O(AC[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y26" ))
  \AC<15>  (
    .PAD(AC[15])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y26" ))
  AC_15_OBUF (
    .I(\NlwBufferSignal_AC_15_OBUF/I ),
    .O(AC[15])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y25" ))
  \MD<2>  (
    .PAD(MD[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y25" ))
  MD_2_OBUF (
    .I(\NlwBufferSignal_MD_2_OBUF/I ),
    .O(MD[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y77" ))
  \RD2out<2>  (
    .PAD(RD2out[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y77" ))
  RD2out_2_OBUF (
    .I(1'b0),
    .O(RD2out[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y29" ))
  \AC<2>  (
    .PAD(AC[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y29" ))
  AC_2_OBUF (
    .I(\NlwBufferSignal_AC_2_OBUF/I ),
    .O(AC[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y19" ))
  \MD<3>  (
    .PAD(MD[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y19" ))
  MD_3_OBUF (
    .I(\NlwBufferSignal_MD_3_OBUF/I ),
    .O(MD[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y76" ))
  \RD2out<3>  (
    .PAD(RD2out[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y76" ))
  RD2out_3_OBUF (
    .I(1'b1),
    .O(RD2out[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y35" ))
  \AC<3>  (
    .PAD(AC[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y35" ))
  AC_3_OBUF (
    .I(\NlwBufferSignal_AC_3_OBUF/I ),
    .O(AC[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y23" ))
  \MD<4>  (
    .PAD(MD[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y23" ))
  MD_4_OBUF (
    .I(\NlwBufferSignal_MD_4_OBUF/I ),
    .O(MD[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y75" ))
  \RD2out<4>  (
    .PAD(RD2out[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y75" ))
  RD2out_4_OBUF (
    .I(1'b0),
    .O(RD2out[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y30" ))
  \AC<4>  (
    .PAD(AC[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y30" ))
  AC_4_OBUF (
    .I(\NlwBufferSignal_AC_4_OBUF/I ),
    .O(AC[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y17" ))
  \MD<5>  (
    .PAD(MD[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y17" ))
  MD_5_OBUF (
    .I(\NlwBufferSignal_MD_5_OBUF/I ),
    .O(MD[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y74" ))
  \RD2out<5>  (
    .PAD(RD2out[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y74" ))
  RD2out_5_OBUF (
    .I(1'b0),
    .O(RD2out[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y34" ))
  \AC<5>  (
    .PAD(AC[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y34" ))
  AC_5_OBUF (
    .I(\NlwBufferSignal_AC_5_OBUF/I ),
    .O(AC[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y21" ))
  \MD<6>  (
    .PAD(MD[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y21" ))
  MD_6_OBUF (
    .I(\NlwBufferSignal_MD_6_OBUF/I ),
    .O(MD[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y73" ))
  \RD2out<6>  (
    .PAD(RD2out[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y73" ))
  RD2out_6_OBUF (
    .I(1'b0),
    .O(RD2out[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y70" ))
  eC_499 (
    .PAD(eC)
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y70" ))
  eC_OBUF (
    .I(1'b1),
    .O(eC)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y27" ))
  \AC<6>  (
    .PAD(AC[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y27" ))
  AC_6_OBUF (
    .I(\NlwBufferSignal_AC_6_OBUF/I ),
    .O(AC[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y15" ))
  \MD<7>  (
    .PAD(MD[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y15" ))
  MD_7_OBUF (
    .I(\NlwBufferSignal_MD_7_OBUF/I ),
    .O(MD[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y72" ))
  \RD2out<7>  (
    .PAD(RD2out[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y72" ))
  RD2out_7_OBUF (
    .I(1'b0),
    .O(RD2out[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y30" ))
  \AC<7>  (
    .PAD(AC[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y30" ))
  AC_7_OBUF (
    .I(\NlwBufferSignal_AC_7_OBUF/I ),
    .O(AC[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y19" ))
  \MD<8>  (
    .PAD(MD[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y19" ))
  MD_8_OBUF (
    .I(\NlwBufferSignal_MD_8_OBUF/I ),
    .O(MD[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y71" ))
  \RD2out<8>  (
    .PAD(RD2out[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y71" ))
  RD2out_8_OBUF (
    .I(1'b0),
    .O(RD2out[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y11" ))
  \mux2out<0>  (
    .PAD(mux2out[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y11" ))
  mux2out_0_OBUF (
    .I(1'b0),
    .O(mux2out[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y27" ))
  \AC<8>  (
    .PAD(AC[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y27" ))
  AC_8_OBUF (
    .I(\NlwBufferSignal_AC_8_OBUF/I ),
    .O(AC[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y13" ))
  \MD<9>  (
    .PAD(MD[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y13" ))
  MD_9_OBUF (
    .I(\NlwBufferSignal_MD_9_OBUF/I ),
    .O(MD[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y70" ))
  \RD2out<9>  (
    .PAD(RD2out[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y70" ))
  RD2out_9_OBUF (
    .I(1'b0),
    .O(RD2out[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y10" ))
  \mux2out<1>  (
    .PAD(mux2out[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y10" ))
  mux2out_1_OBUF (
    .I(1'b0),
    .O(mux2out[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y32" ))
  \AC<9>  (
    .PAD(AC[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y32" ))
  AC_9_OBUF (
    .I(\NlwBufferSignal_AC_9_OBUF/I ),
    .O(AC[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y9" ))
  \mux2out<2>  (
    .PAD(mux2out[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y9" ))
  mux2out_2_OBUF (
    .I(1'b0),
    .O(mux2out[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y8" ))
  \mux2out<3>  (
    .PAD(mux2out[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y8" ))
  mux2out_3_OBUF (
    .I(1'b0),
    .O(mux2out[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y7" ))
  \mux2out<4>  (
    .PAD(mux2out[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y7" ))
  mux2out_4_OBUF (
    .I(1'b0),
    .O(mux2out[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y1" ))
  \mux2out<10>  (
    .PAD(mux2out[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y1" ))
  mux2out_10_OBUF (
    .I(1'b0),
    .O(mux2out[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y6" ))
  \mux2out<5>  (
    .PAD(mux2out[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y6" ))
  mux2out_5_OBUF (
    .I(1'b0),
    .O(mux2out[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y0" ))
  \mux2out<11>  (
    .PAD(mux2out[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y0" ))
  mux2out_11_OBUF (
    .I(1'b0),
    .O(mux2out[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y5" ))
  \mux2out<6>  (
    .PAD(mux2out[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y5" ))
  mux2out_6_OBUF (
    .I(1'b0),
    .O(mux2out[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y4" ))
  \mux2out<7>  (
    .PAD(mux2out[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y4" ))
  mux2out_7_OBUF (
    .I(1'b0),
    .O(mux2out[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y3" ))
  \mux2out<8>  (
    .PAD(mux2out[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y3" ))
  mux2out_8_OBUF (
    .I(1'b0),
    .O(mux2out[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y2" ))
  \mux2out<9>  (
    .PAD(mux2out[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y2" ))
  mux2out_9_OBUF (
    .I(1'b0),
    .O(mux2out[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X2Y28" ))
  \RD1out<0>  (
    .PAD(RD1out[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X2Y28" ))
  RD1out_0_OBUF (
    .I(\NlwBufferSignal_RD1out_0_OBUF/I ),
    .O(RD1out[0])
  );
  X_BUF   \NlwBufferBlock_RD1out_1_OBUF/I  (
    .I(AC_1_OBUF_2733),
    .O(\NlwBufferSignal_RD1out_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_2_OBUF/I  (
    .I(AC_2_OBUF_2735),
    .O(\NlwBufferSignal_RD1out_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_3_OBUF/I  (
    .I(AC_3_OBUF_2737),
    .O(\NlwBufferSignal_RD1out_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_4_OBUF/I  (
    .I(AC_4_OBUF_2738),
    .O(\NlwBufferSignal_RD1out_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_10_OBUF/I  (
    .I(AC_10_OBUF_2739),
    .O(\NlwBufferSignal_ALU_10_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_5_OBUF/I  (
    .I(AC_5_OBUF_2743),
    .O(\NlwBufferSignal_RD1out_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_11_OBUF/I  (
    .I(AC_11_OBUF_2750),
    .O(\NlwBufferSignal_ALU_11_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_6_OBUF/I  (
    .I(AC_6_OBUF_2744),
    .O(\NlwBufferSignal_RD1out_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_12_OBUF/I  (
    .I(AC_12_OBUF_2751),
    .O(\NlwBufferSignal_ALU_12_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_7_OBUF/I  (
    .I(AC_7_OBUF_2746),
    .O(\NlwBufferSignal_RD1out_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_13_OBUF/I  (
    .I(AC_13_OBUF_2752),
    .O(\NlwBufferSignal_ALU_13_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_8_OBUF/I  (
    .I(AC_8_OBUF_2747),
    .O(\NlwBufferSignal_RD1out_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_14_OBUF/I  (
    .I(AC_14_OBUF_2753),
    .O(\NlwBufferSignal_ALU_14_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_9_OBUF/I  (
    .I(AC_9_OBUF_2748),
    .O(\NlwBufferSignal_RD1out_9_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_15_OBUF/I  (
    .I(AC_15_OBUF_2754),
    .O(\NlwBufferSignal_ALU_15_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_10_OBUF/I  (
    .I(AC_10_OBUF_2739),
    .O(\NlwBufferSignal_RD1out_10_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_11_OBUF/I  (
    .I(AC_11_OBUF_2750),
    .O(\NlwBufferSignal_RD1out_11_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_12_OBUF/I  (
    .I(AC_12_OBUF_2751),
    .O(\NlwBufferSignal_RD1out_12_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_13_OBUF/I  (
    .I(AC_13_OBUF_2752),
    .O(\NlwBufferSignal_RD1out_13_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_14_OBUF/I  (
    .I(AC_14_OBUF_2753),
    .O(\NlwBufferSignal_RD1out_14_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_15_OBUF/I  (
    .I(AC_15_OBUF_2754),
    .O(\NlwBufferSignal_RD1out_15_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_0_OBUF/I  (
    .I(AC_0_OBUF_2741),
    .O(\NlwBufferSignal_ALU_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_1_OBUF/I  (
    .I(AC_1_OBUF_2733),
    .O(\NlwBufferSignal_ALU_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_2_OBUF/I  (
    .I(AC_2_OBUF_2735),
    .O(\NlwBufferSignal_ALU_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_3_OBUF/I  (
    .I(AC_3_OBUF_2737),
    .O(\NlwBufferSignal_ALU_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_4_OBUF/I  (
    .I(AC_4_OBUF_2738),
    .O(\NlwBufferSignal_ALU_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_5_OBUF/I  (
    .I(AC_5_OBUF_2743),
    .O(\NlwBufferSignal_ALU_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_10_OBUF/I  (
    .I(AC_10_OBUF_2739),
    .O(\NlwBufferSignal_MD_10_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_6_OBUF/I  (
    .I(AC_6_OBUF_2744),
    .O(\NlwBufferSignal_ALU_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_11_OBUF/I  (
    .I(AC_11_OBUF_2750),
    .O(\NlwBufferSignal_MD_11_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_7_OBUF/I  (
    .I(AC_7_OBUF_2746),
    .O(\NlwBufferSignal_ALU_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_10_OBUF/I  (
    .I(AC_10_OBUF_2739),
    .O(\NlwBufferSignal_AC_10_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_12_OBUF/I  (
    .I(AC_12_OBUF_2751),
    .O(\NlwBufferSignal_MD_12_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_8_OBUF/I  (
    .I(AC_8_OBUF_2747),
    .O(\NlwBufferSignal_ALU_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_11_OBUF/I  (
    .I(AC_11_OBUF_2750),
    .O(\NlwBufferSignal_AC_11_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_13_OBUF/I  (
    .I(AC_13_OBUF_2752),
    .O(\NlwBufferSignal_MD_13_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALU_9_OBUF/I  (
    .I(AC_9_OBUF_2748),
    .O(\NlwBufferSignal_ALU_9_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_12_OBUF/I  (
    .I(AC_12_OBUF_2751),
    .O(\NlwBufferSignal_AC_12_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_14_OBUF/I  (
    .I(AC_14_OBUF_2753),
    .O(\NlwBufferSignal_MD_14_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_13_OBUF/I  (
    .I(AC_13_OBUF_2752),
    .O(\NlwBufferSignal_AC_13_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_0_OBUF/I  (
    .I(AC_0_OBUF_2741),
    .O(\NlwBufferSignal_MD_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_15_OBUF/I  (
    .I(AC_15_OBUF_2754),
    .O(\NlwBufferSignal_MD_15_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_0_OBUF/I  (
    .I(AC_0_OBUF_2741),
    .O(\NlwBufferSignal_AC_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_14_OBUF/I  (
    .I(AC_14_OBUF_2753),
    .O(\NlwBufferSignal_AC_14_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_1_OBUF/I  (
    .I(AC_1_OBUF_2733),
    .O(\NlwBufferSignal_MD_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_1_OBUF/I  (
    .I(AC_1_OBUF_2733),
    .O(\NlwBufferSignal_AC_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_15_OBUF/I  (
    .I(AC_15_OBUF_2754),
    .O(\NlwBufferSignal_AC_15_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_2_OBUF/I  (
    .I(AC_2_OBUF_2735),
    .O(\NlwBufferSignal_MD_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_2_OBUF/I  (
    .I(AC_2_OBUF_2735),
    .O(\NlwBufferSignal_AC_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_3_OBUF/I  (
    .I(AC_3_OBUF_2737),
    .O(\NlwBufferSignal_MD_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_3_OBUF/I  (
    .I(AC_3_OBUF_2737),
    .O(\NlwBufferSignal_AC_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_4_OBUF/I  (
    .I(AC_4_OBUF_2738),
    .O(\NlwBufferSignal_MD_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_4_OBUF/I  (
    .I(AC_4_OBUF_2738),
    .O(\NlwBufferSignal_AC_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_5_OBUF/I  (
    .I(AC_5_OBUF_2743),
    .O(\NlwBufferSignal_MD_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_5_OBUF/I  (
    .I(AC_5_OBUF_2743),
    .O(\NlwBufferSignal_AC_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_6_OBUF/I  (
    .I(AC_6_OBUF_2744),
    .O(\NlwBufferSignal_MD_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_6_OBUF/I  (
    .I(AC_6_OBUF_2744),
    .O(\NlwBufferSignal_AC_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_7_OBUF/I  (
    .I(AC_7_OBUF_2746),
    .O(\NlwBufferSignal_MD_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_7_OBUF/I  (
    .I(AC_7_OBUF_2746),
    .O(\NlwBufferSignal_AC_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_8_OBUF/I  (
    .I(AC_8_OBUF_2747),
    .O(\NlwBufferSignal_MD_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_8_OBUF/I  (
    .I(AC_8_OBUF_2747),
    .O(\NlwBufferSignal_AC_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_MD_9_OBUF/I  (
    .I(AC_9_OBUF_2748),
    .O(\NlwBufferSignal_MD_9_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_AC_9_OBUF/I  (
    .I(AC_9_OBUF_2748),
    .O(\NlwBufferSignal_AC_9_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RD1out_0_OBUF/I  (
    .I(AC_0_OBUF_2741),
    .O(\NlwBufferSignal_RD1out_0_OBUF/I )
  );
  X_ZERO   NlwBlock_MAIN_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_MAIN_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

