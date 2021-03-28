`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:17:01 11/10/2016 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
input [15:0] Ain,
input [15:0] B,
input cin,
input [2:0] s0,
output reg [15:0] acc,
output reg cout
    );
reg [16:0] temp;
always @ (s0)
begin
	if(s0==3'b000) //NOT
		begin
			acc <= ~Ain;
		end
	if(s0==3'b001) //ADC
		begin
			 acc <= Ain + B + cin; 
			
			 temp <= Ain + B + cin;
			
			if (temp [16] == 1) begin
				cout <= 1;
				end
			else begin
				cout <= 0;
				end
		end
	if(s0==3'b010) // JPA
		begin
			//dont know what that is
		end
	if(s0==3'b011) //INCA
		begin
			 acc <= Ain+1;
		end
	if(s0==3'b100) //STA
		begin 
			 acc <= 0;
		end
	if(s0==3'b101) //pass B
		begin
			 acc <= B;
		end

end

endmodule
