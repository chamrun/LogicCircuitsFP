`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:58:25 01/04/2022
// Design Name:   time_calculate
// Module Name:   E:/University/LC Lab/Codes/LC_Project/test_time_calculate.v
// Project Name:  LC_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: time_calculate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_time_calculate;

	// Inputs
	reg [7:0] time_out;
	reg [7:0] time_in;

	// Outputs
	wire [7:0] time_total;

	// Instantiate the Unit Under Test (UUT)
	time_calculate uut (
		.time_out(time_out), 
		.time_in(time_in), 
		.time_total(time_total)
	);

	initial begin
		time_out = 250; time_in = 100; #250; // time_total = 10010110
		time_out = 085; time_in = 032; #250; // time_total = 00110101
		time_out = 255; time_in = 000; #250; // time_total = 11111111
		time_out = 144; time_in = 144; #250; // time_total = 00000000
   end
      
endmodule

