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
---  Module Name: entry_checker 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module entry_checker(
    entry,
    parking_capacity,
    enable);

input entry;
input [7:0] parking_capacity;
output enable;

or is_any_capacity(enable, parking_capacity[0],
                           parking_capacity[1],
                           parking_capacity[2],
                           parking_capacity[3],
                           parking_capacity[4],
                           parking_capacity[5],
                           parking_capacity[6],
                           parking_capacity[7]);
									
endmodule