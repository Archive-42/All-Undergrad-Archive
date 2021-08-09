`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:55 11/30/2016 
// Design Name: 
// Module Name:    MAIN 
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
module MAIN(
input clk,
input reset,
input gtz,
output [15:0] ALU,
output [15:0] MD,
output [15:0] IR,
output reg [15:0] AC,
output [11:0] mux1out,
output [11:0] mux2out,
output reg [11:0] mux3out,
output reg [11:0] PC,
output [11:0] MA,
output eMD,
output eIR,
output eC,
output eAC,
output eMA,
output ePC,
output eWD,
output eRD,
output m1c,
output m2c,
output m3c,
output [2:0] ALUcont,
output [15:0] RD1out,
output [15:0] RD2out,
output reg cout,
output reg cin,
output [11:0] INC

    );
wire [15:0] one_st, three_st, four_st, seven_st, IRin;
wire [11:0] two, five, six, eight, nine, ten, eleven, twelve, thirteen, fourteen;
//wire eMD, eIR, eC, eAC, eMA, ePC, eWD, eRD;
//wire m1c, m2c, m3c;
//wire [2:0] ALUcont;
//wire cin, cout;


initial begin

assign mux3out = 12'b000000000000;
assign AC = 12'b000000000000;
assign cout = 0;
assign cin = 0;
assign PC = 0;
assign cout = 0;
end 

MD md ( .RD(RD1out), .clk(clk), .enable(eMD), .inb(MD));
IR ir ( .RD(RD2out), .clk(clk), .enable(eIR), .IRout(IR));
ALU alu (.Ain(AC), .B(MD), .cin(cin), .s0(ALUcont), .acc(ALU), .cout(cout));
C c (.cout(cout), . clk(clk), .enable(eC), .cin(cin));
AC ac ( .y(ALU), .clk(clk), .enable(eAC), . ACout(AC));
mux1 mux1 ( .MD(MD[11:0]), .IR(IR[11:0]), .sel(m1c), .mux1out(mux1out));
mux2 mux2 ( .A(INC), .B(IR[11:0]), .C(MD[11:0]), .sel(m2c), .mux2out(mux2out));
MA ma (.A(mux1out), .clk(clk), .enable(eMA), .MAout(MA));
PC pc (.muxin(mux2out), .PCout(PC), .clk(clk), .enable(ePC));
INC inc (.PC(PC), .INCout(INC));
//A a(.Ain(), .clk(clk), .Aout());
memory Mem ( .mux3out(mux3out), .ACout(AC), .WDenable(eWD), .RDenable(eRD), .RD1out(RD1out), .RD2out(RD2out));
mux3 mux3(.PC(PC), .MA(MA), .sel(m3c), .mux3out(mux3out));
CONTROL control (.IR(RD2out[15:12]), .pos(gtz), .Mux1C(m1c), .Mux2C(m2c), .Mux3C(m3c), .enableWD(eWD), .enableRD(eRD), .enableIR(eIR), .enableMD(eMD), .enableAC(eAC), .enablePC(ePC), .enableMA(eMA), .enableC(eC), .ALUc(ALUcont));

endmodule
