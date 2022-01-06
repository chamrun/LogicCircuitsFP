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
---  Module Name: exit_parking_lot
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module exit_parking_lot(
    park_number,
    park_location);



input [2:0] park_number;
output [7:0] park_location;

Decoder3x8 Decoder0(park_number[0],
        park_number[1],
        park_number[2],
        park_location[0],
        park_location[1],
        park_location[2],
        park_location[3],
        park_location[4],
        park_location[5],
        park_location[6],
        park_location[7]);


endmodule