`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:16:08 11/02/2016
// Design Name:   Main
// Module Name:   H:/LAB 4/LAB4/TestBench.v
// Project Name:  LAB4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestBench;
   //Inputs
	reg [63:0] in;
	reg clk;
	reg rst;

	// Outputs
	output [63:0] out,
	 output Reg2Loc,
    output Uncondbranch,
    output Branch,
    output MemRead,
    output MemtoReg,
    output [1:0] ALUOp,
    output MemWrite,
    output ALUSrc,
    output RegWrite,
	 output [63:0] ReadData1,
    output [63:0] ReadData2,
	 output mux1out,
	 output [63:0] mux2out,
	 output mux3out,
	 output [63:0] mux4out,
	 output [63:0] SUM,
    output Zero,
	 output [63:0] add2out,
	 output [3:0] ALUcontrolOut,
	 output [63:0] outputMem,

	// Instantiate the Unit Under Test (UUT)
	Main uut (
		.in(in),
		.clk(clk),
		.rst(rst),

	);

	initial begin
		// Initialize Inputs
		in=32'h000000000000;
		clk=0;
		rst=1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	
	end
		always begin
			clk=!clk;
         #100;
	end
endmodule

