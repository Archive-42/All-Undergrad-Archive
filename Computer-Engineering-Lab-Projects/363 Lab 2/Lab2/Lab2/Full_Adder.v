`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:17 09/15/2016 
// Design Name: 
// Module Name:    Full_Adder 
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
module Full_Adder(
    input A,
    input B,
    input CARRY_IN,
    output SUM,
    output CARRY_OUT
    );
assign {CARRY_OUT, SUM}= A+B+CARRY_IN; //adds inputs together and outputs them
													//in two bits called SUM and CARRY_OUT


endmodule
