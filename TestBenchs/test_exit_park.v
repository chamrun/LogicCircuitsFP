`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:45:04 01/05/2022
// Design Name:   exit_park
// Module Name:   E:/University/LC Lab/Codes/LC_Project/test_exit_park.v
// Project Name:  LC_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: exit_park
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_exit_park;

	// Inputs
	reg exit;
	reg [2:0] token;
	reg [2:0] pattern;

	// Outputs
	wire [7:0] park_location;

	// Instantiate the Unit Under Test (UUT)
	exit_park uut (
		.exit(exit), 
		.token(token), 
		.pattern(pattern), 
		.park_location(park_location)
	);

	initial begin
		exit = 0; token = 3'b000; pattern = 3'b000; #250; // park_location = zzzzzzzz
		exit = 1; token = 3'b000; pattern = 3'b111; #250; // park_location = 10000000
		exit = 1; token = 3'b100; pattern = 3'b110; #250; // park_location = 00000100
		exit = 1; token = 3'b101; pattern = 3'b101; #250; // park_location = 00000001
	end
      
endmodule

