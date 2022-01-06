/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2021-2022
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: time_calculate
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module time_calculate(
    time_out,
    time_in,
    time_diff);


input [7:0] time_out;
input [7:0] time_in;
output [7:0] time_diff;

wire [7:0] carry;


FullAdder(time_diff[0], carry[0], time_out[0], (time_in[0] ^ 1), 1);
FullAdder(time_diff[1], carry[1], time_out[1], (time_in[1] ^ 1), carry[0]);
FullAdder(time_diff[2], carry[2], time_out[2], (time_in[2] ^ 1), carry[1]);
FullAdder(time_diff[3], carry[3], time_out[3], (time_in[3] ^ 1), carry[2]);
FullAdder(time_diff[4], carry[4], time_out[4], (time_in[4] ^ 1), carry[3]);
FullAdder(time_diff[5], carry[5], time_out[5], (time_in[5] ^ 1), carry[4]);
FullAdder(time_diff[6], carry[6], time_out[6], (time_in[6] ^ 1), carry[5]);
FullAdder(time_diff[7], carry[7], time_out[7], (time_in[7] ^ 1), carry[6]);


endmodule