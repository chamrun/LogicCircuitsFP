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
---  Module Name: park_space_number 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module park_space_number(
    enable,
    parking_capacity,
    park_number);
 
input enable;
input [7:0] parking_capacity;
output [2:0] park_number;


always @(enable) begin
	if (enable) begin
		Encoder_8x3 encoder(parking_capacity[0],
                            parking_capacity[1],
                            parking_capacity[2],
                            parking_capacity[3],
                            parking_capacity[4],
                            parking_capacity[5],
                            parking_capacity[6],
                            parking_capacity[7],
                            park_number[0],
                            park_number[1],
                            park_number[2],
        );
	end
end

endmodule