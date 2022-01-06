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
---  Module Name: token_production 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module token_production(
    park_number,
    pattern,
    token);

input [2:0] park_number;
input [2:0] pattern;
output [2:0] token;

xor (token[0], park_number[0], pattern[0]);
xor (token[1], park_number[1], pattern[1]);
xor (token[2], park_number[2], pattern[2]);

endmodule