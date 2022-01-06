`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:39:51 01/04/2022
// Design Name:   calculate_new_capacity
// Module Name:   E:/University/LC Lab/Codes/LC_Project/test_calculate_new_capacity.v
// Project Name:  LC_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: calculate_new_capacity
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_calculate_new_capacity;

	// Inputs
	reg [7:0] park_location;
	reg [7:0] parking_capacity;

	// Outputs
	wire [7:0] new_capacity;

	// Instantiate the Unit Under Test (UUT)
	calculate_new_capacity uut (
		.park_location(park_location), 
		.parking_capacity(parking_capacity), 
		.new_capacity(new_capacity)
	);

	initial begin
		park_location = 8'b10000000; parking_capacity = 8'b01101100; #250; // new_capacity = 11101100
		park_location = 8'b00010000; parking_capacity = 8'b11101111; #250; // new_capacity = 11111111
		park_location = 8'b00000100; parking_capacity = 8'b10100000; #250; // new_capacity = 10100100
		park_location = 8'b00000001; parking_capacity = 8'b10001000; #250; // new_capacity = 10001001
	end
      
endmodule

