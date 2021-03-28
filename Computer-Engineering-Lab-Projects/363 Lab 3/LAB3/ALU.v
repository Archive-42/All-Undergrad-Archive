`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:19:36 10/06/2016 
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
input [63:0] A,
input [63:0] B,
input s0,
input s1,
input s2,
input s3,
output reg [63:0] SUM
    );

always @ (s0 or s1 or s2 or s3)
begin
	if(s0==1'b0 && s1==1'b0 && s2==1'b0 && s3==1'b0)
		begin
			assign SUM = A&B;
		end
	if(s0==1'b0 && s1==1'b0 && s2==1'b0 && s3==1'b1)
		begin
			assign SUM = A|B;
		end
	if(s0==1'b0 && s1==1'b0 && s2==1'b1 && s3==1'b0)
		begin
			assign SUM = A+B;
		end
	if(s0==1'b0 && s1==1'b1 && s2==1'b1 && s3==1'b0)
		begin
			assign SUM = A-B;
		end
	if(s0==1'b0 && s1==1'b1 && s2==1'b1 && s3==1'b1)
		begin
			assign SUM = B;
		end
	if(s0==1'b1 && s1==1'b1 && s2==1'b0 && s3==1'b0)
		begin
			assign SUM = ~(A|B);
		end

end


endmodule
