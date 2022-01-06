`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:53:13 01/04/2022
// Design Name:   parking_capacity_counter
// Module Name:   E:/University/LC Lab/Codes/LC_Project/test_parking_capacity_counter.v
// Project Name:  LC_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: parking_capacity_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_parking_capacity_counter;

	// Inputs
	reg [7:0] new_capacity;

	// Outputs
	wire [3:0] parked;
	wire [3:0] empty;

	// Instantiate the Unit Under Test (UUT)
	parking_capacity_counter uut (
		.new_capacity(new_capacity), 
		.parked(parked), 
		.empty(empty)
	);

	initial begin
		new_capacity = 8'b00000000; #250; // parked = 0000 | empty = 1000
		new_capacity = 8'b10010110; #250; // parked = 0100 | empty = 0100
		new_capacity = 8'b01011101; #250; // parked = 0101 | empty = 0011
		new_capacity = 8'b11111111; #250; // parked = 1000 | empty = 0000
	end
      
endmodule

