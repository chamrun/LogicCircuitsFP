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
module Encoder8x3(d0,d1,d2,d3,d4,d5,d6,d7,a,b,c);

    input d0,d1,d2,d3,d4,d5,d6,d7;
    output a,b,c;

    or(a,d4,d5,d6,d7);
    or(b,d2,d3,d6,d7);
    or(c,d1,d3,d5,d7);

endmodule
