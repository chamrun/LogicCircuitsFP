`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    Encoder_8x3 
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
module Encoder_8x3(q1, q0, d3, d2, d1, d0);
	input d3, d2, d1, d0;
	output q1, q0;
	
	wire not_d2;
	not g0(not_d2, d2);
	
	wire a;
	and g1(a, d1, not_d2);
	or g2(q0, a, d3),
		g3(q1, d2, d3);
		

endmodule
