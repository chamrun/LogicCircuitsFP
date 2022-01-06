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
---  Module Name: decrypt 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module decrypt(
    exit,
    token,
    pattern,
    park_number);

input exit;
input [2:0] token;
input [2:0] pattern;
output [2:0] park_number;

xor(park_number[0], token[0], pattern[0]);
xor(park_number[1], token[1], pattern[1]);
xor(park_number[2], token[2], pattern[2]);


endmodule