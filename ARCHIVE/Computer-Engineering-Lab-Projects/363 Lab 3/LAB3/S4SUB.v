`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:33:57 09/29/2016 
// Design Name: 
// Module Name:    S4SUB 
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
module S4SUB(
    input a,
    input b,
	 input select,
	 input cin,
    output out, cout
    );
	 
	 wire y0, y1, y2, y3, y4, y5, y6;
    wire z0, z1, z2, z3, z4;

    //diff = i0 xor i1 xor cin
    //borrow = cin. ~(i1 xor i2) or ~x.y

    xor (y0, i1, cin);
    xor (y1, i0, y0); //y1=diff or sum as only carry and borrow vary between adder and subtractor circuits

    xor (y2, i1, i0);
    and (y3, cin, ~y2);
    and (y4, ~i0, i1);
    or (y6, y5, y4); //y6 = borrow

    and (z0, i0, i1);
    xor (z1, i0, i1);
    and (z2, cin, z1);
    or (z3, z0, z2); //z3= carry out for sum

    //conditional operator for assigning sum or difference. if select = 0, we add, else subtract

    assign out = y1;
    assign cout = select ? y6 : z3;

endmodule
