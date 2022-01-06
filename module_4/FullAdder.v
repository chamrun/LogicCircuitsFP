`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:21:57 11/28/2021 
// Design Name: 
// Module Name:    FullAdder 
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


module FullAdder(s, co, x, y, ci);
	 
	 output s, co;
	 input x, y, ci;
	 
	 xor #(10) xor0(s, x, y, ci);  
	 
	 wire a, b, c;
	 
	 and #(5) and0(a, x, ci);
	 and #(5) and1(b, y, ci);
	 and #(5) and2(c, x, y);
	 
	 or #(5) or0(co, a, b, c);
	 
endmodule
