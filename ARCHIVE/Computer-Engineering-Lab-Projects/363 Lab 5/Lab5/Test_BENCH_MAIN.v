`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:03:14 12/04/2016
// Design Name:   MAIN
// Module Name:   H:/363 Lab 5/Lab5/Test_BENCH_MAIN.v
// Project Name:  Lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MAIN
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_BENCH_MAIN;

	// Inputs
	reg clk;
	reg reset;
	reg gtz;

	// Outputs
	wire [15:0] ALU;
	wire [15:0] MD;
	wire [15:0] IR;
	wire [15:0] AC;
	wire [11:0] mux1out;
	wire [11:0] mux2out;
	wire [11:0] mux3out;
	wire [11:0] PC;
	wire [11:0] MA;
	wire eMD;
	wire eIR;
	wire eC;
	wire eAC;
	wire eMA;
	wire ePC;
	wire eWD;
	wire eRD;
	wire m1c;
	wire m2c;
	wire m3c;
	wire [2:0] ALUcont;
	wire [15:0] RD1out;
	wire [15:0] RD2out;
	wire cout;
	wire cin;
	wire [11:0] INC;

	// Instantiate the Unit Under Test (UUT)
	MAIN uut (
		.clk(clk), 
		.reset(reset), 
		.gtz(gtz), 
		.ALU(ALU), 
		.MD(MD), 
		.IR(IR), 
		.AC(AC), 
		.mux1out(mux1out), 
		.mux2out(mux2out), 
		.mux3out(mux3out), 
		.PC(PC), 
		.MA(MA), 
		.eMD(eMD), 
		.eIR(eIR), 
		.eC(eC), 
		.eAC(eAC), 
		.eMA(eMA), 
		.ePC(ePC), 
		.eWD(eWD), 
		.eRD(eRD), 
		.m1c(m1c), 
		.m2c(m2c), 
		.m3c(m3c), 
		.ALUcont(ALUcont),
		.RD1out(RD1out),
		.RD2out(RD2out),
		.cout(cout),
		.cin(cin),
		.INC(INC)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		gtz = 1;
		// Wait 100 ns for global reset to finish
		#100;
		end	

        
		// Add stimulus here
		always begin
		clk=1;
		#100;
		clk=0;
		#100;
		end

      
endmodule

