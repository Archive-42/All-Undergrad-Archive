`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:45 12/01/2016 
// Design Name: 
// Module Name:    memory 
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
module memory(
input [11:0] mux3out,
input [15:0] ACout,
input WDenable,
input RDenable,
output reg [15:0] RD1out,
output reg [15:0] RD2out
    );
reg [15:0] Memory [0:15];
reg [15:0] InstrMem [0:11];
integer i;

initial begin                    //initialize contents of memory (data)
    for(i=0;i<16;i=i+1) begin
    Memory[i]=i;
	 end

//initialize contents of memory (instruction RD)
InstrMem[11] = 16'b1011000000001010;
InstrMem[1] = 16'b1001000000001011;
InstrMem[2] = 16'b1010000000001010;
InstrMem[3] = 16'b0110000000000000;
InstrMem[4] = 16'b1000000000001010;
InstrMem[5] = 16'b1010000000001011;
InstrMem[6] = 16'b0011000000000111;
InstrMem[7] = 16'b1000000000001011;
InstrMem[8] = 16'b0000000000000000;
InstrMem[9] = 16'b0100000000000000;
InstrMem[10] = 16'b0000000000000000;
InstrMem[0] = 16'b0000000000001100;
end



always @(*) begin

	if (WDenable == 1) begin
		Memory[mux3out] <= ACout;
		RD1out <= Memory[mux3out];
	end	


	if(RDenable == 1) begin
		RD2out <= InstrMem[mux3out];
	end

end

endmodule
