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

always @(entry) begin
    if (0 < parking_capacity) begin
        {enable} = 1;
    end else begin
        {enable} = 0;
    end
end

endmodule