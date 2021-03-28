`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:50 09/15/2016 
// Design Name: 
// Module Name:    S4ADDER 
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
module full_adder(                           //our full adder to use for our four bit adder
    input A,
    input B,
    input CARRY_IN,
    output SUM,
    output CARRY_OUT
    );
	 assign {CARRY_OUT,SUM}= A + B + CARRY_IN;

endmodule

module Sixty_Four_Bit_Adder(
    input [63:0] A,
    input [63:0] B,
    output [64:0] SUM,
	 
	 output CARRY,
	 wire CIN;
    );

        
        
        assign CIN = 1'b0; 
        full_adder s0( .A( A[0] ), .B( B[0]), .CARRY_IN( CIN ), .SUM( SUM[0]), .CARRY_OUT( ripple0 ) ); //assign sum0, carry 0 as a function of a0 and b0
        full_adder s1( .A( A[1] ), .B( B[1]), .CARRY_IN( ripple0 ), .SUM( SUM[1]), .CARRY_OUT( ripple1 ) ); 
        full_adder s2( .A( A[2] ), .B( B[2]), .CARRY_IN( ripple1 ), .SUM( SUM[2]), .CARRY_OUT( ripple2 ) ); 
        full_adder s3( .A( A[3] ), .B( B[3]), .CARRY_IN( ripple2 ), .SUM( SUM[3]), .CARRY_OUT( ripple3 ) );
full_adder s4( .A( A[4] ), .B( B[4]), .CARRY_IN( ripple3 ), .SUM( SUM[4]), .CARRY_OUT( ripple4 ) ); 
full_adder s5( .A( A[5] ), .B( B[5]), .CARRY_IN( ripple4 ), .SUM( SUM[5]), .CARRY_OUT( ripple5 ) ); 
full_adder s6( .A( A[6] ), .B( B[6]), .CARRY_IN( ripple5 ), .SUM( SUM[6]), .CARRY_OUT( ripple6 ) ); 
full_adder s7( .A( A[7] ), .B( B[7]), .CARRY_IN( ripple6 ), .SUM( SUM[7]), .CARRY_OUT( ripple7 ) ); 
full_adder s8( .A( A[8] ), .B( B[8]), .CARRY_IN( ripple7 ), .SUM( SUM[8]), .CARRY_OUT( ripple8 ) ); 
full_adder s9( .A( A[9] ), .B( B[9]), .CARRY_IN( ripple8 ), .SUM( SUM[9]), .CARRY_OUT( ripple9 ) ); 
full_adder s10( .A( A[10] ), .B( B[10]), .CARRY_IN( ripple9 ), .SUM( SUM[10]), .CARRY_OUT( ripple10 ) ); 
full_adder s11( .A( A[11] ), .B( B[11]), .CARRY_IN( ripple10 ), .SUM( SUM[11]), .CARRY_OUT( ripple11 ) ); 
full_adder s12( .A( A[12] ), .B( B[12]), .CARRY_IN( ripple11 ), .SUM( SUM[12]), .CARRY_OUT( ripple12 ) ); 
full_adder s13( .A( A[13] ), .B( B[13]), .CARRY_IN( ripple12 ), .SUM( SUM[13]), .CARRY_OUT( ripple13 ) ); 
full_adder s14( .A( A[14] ), .B( B[14]), .CARRY_IN( ripple13 ), .SUM( SUM[14]), .CARRY_OUT( ripple14 ) ); 
full_adder s15( .A( A[15] ), .B( B[15]), .CARRY_IN( ripple14 ), .SUM( SUM[15]), .CARRY_OUT( ripple15 ) ); 
full_adder s16( .A( A[16] ), .B( B[16]), .CARRY_IN( ripple15 ), .SUM( SUM[16]), .CARRY_OUT( ripple16 ) ); 
full_adder s17( .A( A[17] ), .B( B[17]), .CARRY_IN( ripple16 ), .SUM( SUM[17]), .CARRY_OUT( ripple17 ) ); 
full_adder s18( .A( A[18] ), .B( B[18]), .CARRY_IN( ripple17 ), .SUM( SUM[18]), .CARRY_OUT( ripple18 ) ); 
full_adder s19( .A( A[19] ), .B( B[19]), .CARRY_IN( ripple18 ), .SUM( SUM[19]), .CARRY_OUT( ripple19 ) ); 
full_adder s20( .A( A[20] ), .B( B[20]), .CARRY_IN( ripple19 ), .SUM( SUM[20]), .CARRY_OUT( ripple20 ) ); 
full_adder s21( .A( A[21] ), .B( B[21]), .CARRY_IN( ripple20 ), .SUM( SUM[21]), .CARRY_OUT( ripple21 ) ); 
full_adder s22( .A( A[22] ), .B( B[22]), .CARRY_IN( ripple21 ), .SUM( SUM[22]), .CARRY_OUT( ripple22 ) ); 
full_adder s23( .A( A[23] ), .B( B[23]), .CARRY_IN( ripple22 ), .SUM( SUM[23]), .CARRY_OUT( ripple23 ) ); 
full_adder s24( .A( A[24] ), .B( B[24]), .CARRY_IN( ripple23 ), .SUM( SUM[24]), .CARRY_OUT( ripple24 ) ); 
full_adder s25( .A( A[25] ), .B( B[25]), .CARRY_IN( ripple24 ), .SUM( SUM[25]), .CARRY_OUT( ripple25 ) ); 
full_adder s26( .A( A[26] ), .B( B[26]), .CARRY_IN( ripple25 ), .SUM( SUM[26]), .CARRY_OUT( ripple26 ) ); 
full_adder s27( .A( A[27] ), .B( B[27]), .CARRY_IN( ripple26 ), .SUM( SUM[27]), .CARRY_OUT( ripple27 ) ); 
full_adder s28( .A( A[28] ), .B( B[28]), .CARRY_IN( ripple27 ), .SUM( SUM[28]), .CARRY_OUT( ripple28 ) ); 
full_adder s29( .A( A[29] ), .B( B[29]), .CARRY_IN( ripple28 ), .SUM( SUM[29]), .CARRY_OUT( ripple29 ) ); 
full_adder s30( .A( A[30] ), .B( B[30]), .CARRY_IN( ripple29 ), .SUM( SUM[30]), .CARRY_OUT( ripple30 ) ); 
full_adder s31( .A( A[31] ), .B( B[31]), .CARRY_IN( ripple30 ), .SUM( SUM[31]), .CARRY_OUT( ripple31 ) ); 
full_adder s32( .A( A[32] ), .B( B[32]), .CARRY_IN( ripple31 ), .SUM( SUM[32]), .CARRY_OUT( ripple32 ) ); 
full_adder s33( .A( A[33] ), .B( B[33]), .CARRY_IN( ripple32 ), .SUM( SUM[33]), .CARRY_OUT( ripple33 ) ); 
full_adder s34( .A( A[34] ), .B( B[34]), .CARRY_IN( ripple33 ), .SUM( SUM[34]), .CARRY_OUT( ripple34 ) ); 
full_adder s35( .A( A[35] ), .B( B[35]), .CARRY_IN( ripple34 ), .SUM( SUM[35]), .CARRY_OUT( ripple35 ) ); 
full_adder s36( .A( A[36] ), .B( B[36]), .CARRY_IN( ripple35 ), .SUM( SUM[36]), .CARRY_OUT( ripple36 ) ); 
full_adder s37( .A( A[37] ), .B( B[37]), .CARRY_IN( ripple36 ), .SUM( SUM[37]), .CARRY_OUT( ripple37 ) ); 
full_adder s38( .A( A[38] ), .B( B[38]), .CARRY_IN( ripple37 ), .SUM( SUM[38]), .CARRY_OUT( ripple38 ) ); 
full_adder s39( .A( A[39] ), .B( B[39]), .CARRY_IN( ripple38 ), .SUM( SUM[39]), .CARRY_OUT( ripple39 ) ); 
full_adder s40( .A( A[40] ), .B( B[40]), .CARRY_IN( ripple39 ), .SUM( SUM[40]), .CARRY_OUT( ripple40 ) ); 
full_adder s41( .A( A[41] ), .B( B[41]), .CARRY_IN( ripple40 ), .SUM( SUM[42]), .CARRY_OUT( ripple41 ) ); 
full_adder s42( .A( A[42] ), .B( B[42]), .CARRY_IN( ripple41 ), .SUM( SUM[43]), .CARRY_OUT( ripple42 ) ); 
full_adder s43( .A( A[43] ), .B( B[43]), .CARRY_IN( ripple42 ), .SUM( SUM[44]), .CARRY_OUT( ripple43 ) ); 
full_adder s44( .A( A[44] ), .B( B[44]), .CARRY_IN( ripple43 ), .SUM( SUM[45]), .CARRY_OUT( ripple44 ) ); 
full_adder s45( .A( A[45] ), .B( B[45]), .CARRY_IN( ripple44 ), .SUM( SUM[46]), .CARRY_OUT( ripple45 ) ); 
full_adder s46( .A( A[46] ), .B( B[46]), .CARRY_IN( ripple45 ), .SUM( SUM[47]), .CARRY_OUT( ripple46 ) ); 
full_adder s47( .A( A[47] ), .B( B[47]), .CARRY_IN( ripple46 ), .SUM( SUM[47]), .CARRY_OUT( ripple47 ) ); 
full_adder s48( .A( A[48] ), .B( B[48]), .CARRY_IN( ripple47 ), .SUM( SUM[48]), .CARRY_OUT( ripple48 ) ); 
full_adder s49( .A( A[49] ), .B( B[49]), .CARRY_IN( ripple48 ), .SUM( SUM[49]), .CARRY_OUT( ripple49 ) ); 
full_adder s50( .A( A[50] ), .B( B[50]), .CARRY_IN( ripple49 ), .SUM( SUM[50]), .CARRY_OUT( ripple50 ) ); 
full_adder s51( .A( A[51] ), .B( B[51]), .CARRY_IN( ripple50 ), .SUM( SUM[51]), .CARRY_OUT( ripple51 ) ); 
full_adder s52( .A( A[52] ), .B( B[52]), .CARRY_IN( ripple51 ), .SUM( SUM[52]), .CARRY_OUT( ripple52 ) ); 
full_adder s53( .A( A[53] ), .B( B[53]), .CARRY_IN( ripple52 ), .SUM( SUM[53]), .CARRY_OUT( ripple53 ) ); 
full_adder s54( .A( A[54] ), .B( B[54]), .CARRY_IN( ripple53 ), .SUM( SUM[54]), .CARRY_OUT( ripple54 ) ); 
full_adder s55( .A( A[55] ), .B( B[55]), .CARRY_IN( ripple54 ), .SUM( SUM[55]), .CARRY_OUT( ripple55 ) ); 
full_adder s56( .A( A[56] ), .B( B[56]), .CARRY_IN( ripple55 ), .SUM( SUM[56]), .CARRY_OUT( ripple56 ) ); 
full_adder s57( .A( A[57] ), .B( B[57]), .CARRY_IN( ripple56 ), .SUM( SUM[57]), .CARRY_OUT( ripple57 ) ); 
full_adder s58( .A( A[58] ), .B( B[58]), .CARRY_IN( ripple57 ), .SUM( SUM[58]), .CARRY_OUT( ripple58 ) ); 
full_adder s59( .A( A[59] ), .B( B[59]), .CARRY_IN( ripple58 ), .SUM( SUM[59]), .CARRY_OUT( ripple59 ) ); 
full_adder s60( .A( A[60] ), .B( B[60]), .CARRY_IN( ripple59 ), .SUM( SUM[60]), .CARRY_OUT( ripple60 ) ); 
full_adder s61( .A( A[61] ), .B( B[61]), .CARRY_IN( ripple60 ), .SUM( SUM[61]), .CARRY_OUT( ripple61 ) ); 
full_adder s62( .A( A[62] ), .B( B[62]), .CARRY_IN( ripple61 ), .SUM( SUM[62]), .CARRY_OUT( ripple62 ) ); 
full_adder s63( .A( A[63] ), .B( B[63]), .CARRY_IN( ripple62 ), .SUM( SUM[63]), .CARRY_OUT( SUM[64]) ); 


																																				
		  
endmodule 
