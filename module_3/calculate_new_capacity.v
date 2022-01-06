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
---  Module Name: calculate_new_capacity
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module calculate_new_capacity(
    park_location,
    parking_capacity,
    new_capacity);

input [7:0] park_location;
input [7:0] parking_capacity;
output [7:0] new_capacity;

or(new_capacity[0], park_location[0], parking_capacity[0]);
or(new_capacity[1], park_location[1], parking_capacity[1]);
or(new_capacity[2], park_location[2], parking_capacity[2]);
or(new_capacity[3], park_location[3], parking_capacity[3]);
or(new_capacity[4], park_location[4], parking_capacity[4]);
or(new_capacity[5], park_location[5], parking_capacity[5]);
or(new_capacity[6], park_location[6], parking_capacity[6]);
or(new_capacity[7], park_location[7], parking_capacity[7]);


endmodule