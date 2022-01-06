`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:45:39 01/04/2022
// Design Name:   entry_park
// Module Name:   E:/University/LC Lab/Codes/LC_Project/test_entry_park.v
// Project Name:  LC_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: entry_park
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_entry_park;

	// Inputs
	reg entry;
	reg [7:0] parking_capacity;

	// Outputs
	wire [2:0] park_number;

	// Instantiate the Unit Under Test (UUT)
	entry_park uut (
		.entry(entry), 
		.parking_capacity(parking_capacity), 
		.park_number(park_number)
	);

	initial begin
		entry = 1; parking_capacity = 8'b11111111; #200; // park_number = 111
		entry = 0; parking_capacity = 8'b11111111; #200; // park_number = ZZZ
		entry = 1; parking_capacity = 8'b00101100; #200; // park_number = 101
		entry = 1; parking_capacity = 8'b00000000; #200; // park_number = ZZZ
		entry = 1; parking_capacity = 8'b00000001; #200; // park_number = 000
	end
      
endmodule
