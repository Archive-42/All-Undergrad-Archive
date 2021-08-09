`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:05:54 09/27/2016 
// Design Name: 
// Module Name:    S4_CLA 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module S4_CLA(
input [63:0] A,
input [63:0] B,
output [63:0] SUM
    );
assign CIN = 1'b0;
CLA s1 (A[1:0], B[1:0], CIN0, SUM[1:0], CIN1);
CLA s2 (A[3:2], B[3:2], CIN1, SUM[3:2], CIN2);
CLA s3 (A[5:4], B[5:4], CIN2, SUM[5:4], CIN3);
CLA s4 (A[7:6], B[7:6], CIN3, SUM[7:6], CIN4);
CLA s5 (A[9:8], B[9:8], CIN4, SUM[9:8], CIN5);
CLA s6 (A[11:10], B[11:10], CIN5, SUM[11:10], CIN6);
CLA s7 (A[13:12], B[13:12], CIN6, SUM[13:12], CIN7);
CLA s8 (A[15:14], B[15:14], CIN7, SUM[15:14], CIN8);
CLA s9 (A[17:16], B[17:16], CIN8, SUM[17:16], CIN9);
CLA s10 (A[19:18], B[19:18], CIN9, SUM[19:18], CIN10);
CLA s11 (A[21:20], B[21:20], CIN10, SUM[21:20], CIN11);
CLA s12 (A[23:22], B[23:22], CIN11, SUM[23:22], CIN12);
CLA s13 (A[25:24], B[25:24], CIN12, SUM[25:24], CIN13);
CLA s14 (A[27:26], B[27:26], CIN13, SUM[27:26], CIN14);
CLA s15 (A[29:28], B[29:28], CIN14, SUM[29:28], CIN15);
CLA s16 (A[31:30], B[31:30], CIN15, SUM[31:30], CIN16);
CLA s17 (A[33:32], B[33:32], CIN16, SUM[33:32], CIN17);
CLA s18 (A[35:34], B[35:34], CIN17, SUM[35:34], CIN18);
CLA s19 (A[37:36], B[37:36], CIN18, SUM[37:36], CIN19);
CLA s20 (A[39:38], B[39:38], CIN19, SUM[39:38], CIN20);
CLA s21 (A[41:40], B[41:40], CIN20, SUM[41:40], CIN21);
CLA s22 (A[43:42], B[43:42], CIN21, SUM[43:42], CIN22);
CLA s23 (A[45:44], B[45:44], CIN22, SUM[45:44], CIN23);
CLA s24 (A[47:46], B[47:46], CIN23, SUM[47:46], CIN24);
CLA s25 (A[49:48], B[49:48], CIN24, SUM[49:48], CIN25);
CLA s26 (A[51:50], B[51:50], CIN25, SUM[51:50], CIN26);
CLA s27 (A[53:52], B[53:52], CIN26, SUM[53:52], CIN27);
CLA s28 (A[55:54], B[55:54], CIN27, SUM[55:54], CIN28);
CLA s29 (A[57:56], B[57:56], CIN28, SUM[57:56], CIN29);
CLA s30 (A[59:58], B[59:58], CIN29, SUM[59:58], CIN30);
CLA s31 (A[61:60], B[61:60], CIN30, SUM[61:60], CIN31);
CLA s32 (A[63:62], B[63:62], CIN31, SUM[63:62], CIN32);

endmodule
