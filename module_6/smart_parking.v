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
---  Module Name: smart_parking
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module smart_parking(
input entry,
input [7:0] parking_capacity,
input exit,
input [2:0] pattern,
input [7:0] time_out,
input [7:0] time_in,
output [7:0] new_capacity,
output [7:0] time_total;
output [3:0] parked;
output [3:0] empty;
);

wire [2:0] park_number;
entry_park entry_park0(entry, parking_capacity, park_number);

wire [2:0] token;
token_production token_production0(park_number, pattern, token);

wire [7:0] park_location
exit_park exit_park0(exit, token, pattern, park_location);

calculate_new_capacity calculate_new_capacity0(park_location, parking_capacity, new_capacity);

parking_capacity_counter parking_capacity_counter0(new_capacity, parked, empty);

time_calculate time_calculate0(time_out, time_in, time_total);

wire [7:0] parking_capacity_new;
wire [7:0] cap;
update_capacity update_capacity0(entry, parking_capacity, parking_capacity_new, cap);

endmodule