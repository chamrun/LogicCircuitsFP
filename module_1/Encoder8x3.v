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
module Encoder8x3(d0,d1,d2,d3,d4,d5,d6,d7,a0,a1,a2, v);

    input d0,d1,d2,d3,d4,d5,d6,d7;
    output a2,a1,a0,v;

    wire tempa0, tempa1, tempa2;

    wire vx;

    not(nd0, d0);
    not(nd1, d1);
    not(nd2, d2);
    not(nd3, d3);
    not(nd4, d4);
    not(nd5, d5);
    not(nd6, d6);
    not(nd7, d7);

    or(v, d0,d1,d2,d3,d4,d5,d6,d7);
    or(vx, v, 1'bx);

    or(tempa2, d4, d5, d6, d7);
    or(tempa1, d7, d6, (nd7&nd6&nd5&nd4)&d3, (nd7&nd6&nd5&nd4)&d2);
    or(tempa0, d7, nd6&d5, nd7&nd6&nd5&nd4&d3, nd7&nd6&nd5&nd4&d2);

    and(a0, vx, tempa0);
    and(a1, vx, tempa1);
    and(a2, vx, tempa2);


    
endmodule
