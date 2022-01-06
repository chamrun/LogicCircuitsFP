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
---  Module Name: parking_capacity_counter
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module parking_capacity_counter(
    new_capacity,
    parked,
    empty);

input [7:0] new_capacity;
input [3:0] parked;
output [3:0] empty;

wire [11:0] carry;

wire [2:0] useless;

// sum1 = new_capacity0 + new_capacity1 + new_capacity2
wire [1:0] sum1;
FullAdder fa0(sum1[0], carry[0], new_capacity[0], new_capacity[1], new_capacity[2]);
or(sum1[1], carry[0], 1'b0);

// sum2 = new_capacity3 + new_capacity4 + new_capacity5
wire [1:0] sum2;
FullAdder fa1(sum2[0], carry[1], new_capacity[3], new_capacity[4], new_capacity[5]);
or(sum2[1], carry[1], 1'b0);

// sum1 = new_capacity6 + new_capacity7
wire [1:0] sum3;
FullAdder fa2(sum3[0], carry[2], new_capacity[6], new_capacity[7], 1'b0);
or(sum3[1], carry[2], 1'b0);

// sum4 = sum2 + sum3
wire [2:0] sum4;
FullAdder fa3(sum4[0], carry[3], sum2[0], sum3[0], 1'b0);
FullAdder fa4(sum4[1], carry[4], sum2[1], sum3[1], carry[3]);
or(sum4[2], carry[4], 1'b0);

// empty = sum1 + sum4
FullAdder fa5(empty[0], carry[5], sum1[0], sum4[0], 1'b0);
FullAdder fa6(empty[1], carry[6], sum1[1], sum4[1], carry[5]);
FullAdder fa7(empty[2], carry[7], 1'b0   , sum4[2], carry[6]);
or(empty[3], carry[7], 1'b0);



// parked = 8 - empty = 1000 - empty
//assign parked = 8 - empty;

wire [3:0] empty_xor_true;

xor(empty_xor_true[0], empty[0], 1'b1);
xor(empty_xor_true[1], empty[1], 1'b1);
xor(empty_xor_true[2], empty[2], 1'b1);
xor(empty_xor_true[3], empty[3], 1'b1);

FullAdder fa8 (parked[0], carry[8], 1'b0, empty_xor_true[0], 1'b1);
FullAdder fa9 (parked[1], carry[9], 1'b0, empty_xor_true[1], carry[8]);
FullAdder fa10(parked[2], carry[10],1'b0, empty_xor_true[2], carry[9]);
FullAdder fa11(parked[3], carry[11],1'b1, empty_xor_true[3], carry[10]);

endmodule