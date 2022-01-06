`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:45:11 01/04/2022
// Design Name:   token_production
// Module Name:   E:/University/LC Lab/Codes/LC_Project/test_token_production.v
// Project Name:  LC_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: token_production
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_token_production;

	// Inputs
	reg [2:0] park_number;
	reg [2:0] pattern;

	// Outputs
	wire [2:0] token;

	// Instantiate the Unit Under Test (UUT)
	token_production uut (
		.park_number(park_number), 
		.pattern(pattern), 
		.token(token)
	);

	initial begin
		park_number = 7; pattern = 2; #250; // token = 101
		park_number = 5; pattern = 5; #250; // token = 000
		park_number = 7; pattern = 0; #250; // token = 111
		park_number = 3; pattern = 5; #250; // token = 110
	end
      
endmodule

