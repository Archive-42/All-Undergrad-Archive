`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:57:53 11/02/2016
// Design Name:   Main
// Module Name:   H:/LAB 4/LAB4/TB3.v
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

module TB3;

	// Inputs
	reg [63:0] in;
	reg clk;
	reg rst;
	

	// Outputs
	wire [63:0] out;
	wire Reg2Loc;
	wire Uncondbranch;
	wire Branch;
	wire MemRead;
	wire MemtoReg;
	wire [1:0] ALUOp;
	wire MemWrite;
	wire ALUSrc;
	wire RegWrite;
	wire [63:0] ReadData1;
	wire [63:0] ReadData2;
	wire [4:0]mux1out;
	wire [63:0] mux2out;
	wire [63:0] mux3out;
	wire [63:0] mux4out;
	wire [63:0] SUM;
	wire Zero;
	wire [63:0] add2out;
	wire [3:0] ALUcontrolOut;
	wire [63:0] outputMem;
	wire [31:0] instructionOut;
	
	// Instantiate the Unit Under Test (UUT)
	Main uut (
		.in(in), 
		.clk(clk), 
		.rst(rst), 
		.out(out), 
		.Reg2Loc(Reg2Loc), 
		.Uncondbranch(Uncondbranch), 
		.Branch(Branch), 
		.MemRead(MemRead), 
		.MemtoReg(MemtoReg), 
		.ALUOp(ALUOp), 
		.MemWrite(MemWrite), 
		.ALUSrc(ALUSrc), 
		.RegWrite(RegWrite), 
		.ReadData1(ReadData1), 
		.ReadData2(ReadData2), 
		.mux1out(mux1out), 
		.mux2out(mux2out), 
		.mux3out(mux3out), 
		.mux4out(mux4out), 
		.SUM(SUM), 
		.Zero(Zero), 
		.add2out(add2out), 
		.ALUcontrolOut(ALUcontrolOut), 
		.outputMem(outputMem),
		.instructionOut(instructionOut)
	);
	
	initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
		end
        
		// Add stimulus here
	always begin
	clk=!clk;
   #100;
	end
      
endmodule

