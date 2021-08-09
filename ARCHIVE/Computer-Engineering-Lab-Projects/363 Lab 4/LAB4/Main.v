`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:41:52 11/02/2016 
// Design Name: 
// Module Name:    Main 
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
module Main(
	 input [63:0] in,
	 input clk,
    input rst,
    output reg [63:0] out,
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
	 output [4:0] mux1out,
	 output [63:0] mux2out,
	 output reg[63:0] mux3out,
	 output [63:0] mux4out,
	 output [63:0] SUM,
    output Zero,
	 output [63:0] add2out,
	 output [3:0] ALUcontrolOut,
	 output [63:0] outputMem,
	 output [31:0] instructionOut
    );
//wire [63:0] rando;
//PC pc1(.in(mux3out), .out(rando));

initial begin
assign mux3out = 0;
assign out =0;
end
//assign out = mux3out;
wire [63:0] bob;
//
//assign out = bob;
//Program counter + 4
reg [63:0] four;
always  @ (posedge clk ) begin
$monitor ("%d - %d", mux3out, out);
four = 4;
end
Adder PC4(.in1(0), .in2(four), .sum(bob)); 

//instruction Memory
//wire [31:0] instructionOut;
Instruction_mem instruction1(.PC(out), .ints(instructionOut));

//control
//wire Reg2Loc;
//wire Uncondbranch;
//wire Branch;
//wire MemRead;
//wire MemtoReg;
//wire [1:0] ALUOp;
//wire MemWrite;
//wire ALUSrc;
//wire RegWrite;

ControlUnit control(.Opcode(instructionOut[31:21]), .Reg2Loc(Reg2Loc), .Uncondbranch(Uncondbranch), .Branch(Branch), .MemRead(MemRead), .MemtoReg(MemtoReg), .ALUOp(ALUOp), .MemWrite(MemWrite), .ALUSrc(ALUSrc), .RegWrite(RegWrite));

//RegFile



//wire [63:0] ReadData1;
//wire [63:0] ReadData2;
RegFile register(.RegWrite(RegWrite), .ReadReg1(instructionOut [9:5]), .ReadReg2(mux1out), .WriteReg(instructionOut [4:0]), .WriteData(mux4out), .clk(clk), .rst(rst), .ReadData1(ReadData1), .ReadData2(ReadData2)); //unsure

//MUX1

//wire mux1out;
MUX1 mux1(.ins20to16(instructionOut [20:16]), .ins4to0(instructionOut [4:0]), .Reg2loc(Reg2Loc), .mux1out(mux1out));

//sign extend 32 to 64
wire [63:0] extend64;
signextend signextend1(.inputbit(instructionOut), .outputbit(extend64));


//shift left 2

wire [63:0] outputbit;
ShiftLeft2 sl2(.inputbit(extend64), .outputbit(outputbit));

//Adder2
//wire [63:0] add2out;
Adder adder2(.in1(out), .in2(outputbit), .sum(add2out));

//MUX2

//wire [63:0] mux2out;
MUX2 mux2(.Data2(ReadData2), .signext(outputbit), .ALUSrc(ALUSrc), .mux2out(mux2out));

//ALU control
//wire [3:0] ALUcontrolOut;
ALUcontrol thealucontrol(.instruction(instructionOut[31:21]), .ALUOp(ALUOp), .ALUcontrol(ALUcontrolOut));

//ALU
//wire [63:0] SUM;
//wire Zero;

wire [63:0] test1;
ALU alu(.A(ReadData1), .B(mux2out), .s0(ALUcontrolOut), .SUM(SUM), .Zero(Zero));

//MUX3


//wire mux3out;
MUX3 mux3(.pc4(in), .ALUresult(add2out), .uncbranch(Uncondbranch), .branch(Branch), .Zero(Zero), .mux3out(mux3out)); //something

//Memory Data

	
//wire [63:0] outputMem;

MemoryData memdata(.Address(SUM), .WriteData(ReadData2), .MemRead(MemRead), .MemWrite(MemWrite), .outputMem(outputMem));

//MUX4


//wire [63:0] mux4out; 

MUX4 mux4 (.ReadData(outputMem), .ALUresult(SUM), .MemtoReg(MemtoReg), .mux4out(mux4out));
endmodule
