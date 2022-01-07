///////////////////////////////////////////////////////////////////////////
// Company: 
// Create Date:
// Module Name: Decoder
// Project Name: 3:8 Decoder
///////////////////////////////////////////////////////////////////////////


module Decoder3x8(a,b,c,d0,d1,d2,d3,d4,d5,d6,d7);

input a,b,c;
output d0,d1,d2,d3,d4,d5,d6,d7;
wire aNot, bNot, cNot;

not(aNot, a);
not(bNot, b);
not(cNot, c);

and(d0, aNot, bNot, cNot);
and(d1, aNot, bNot, c);
and(d2, aNot, b, cNot);
and(d3, a, b, c);
and(d4, a, bNot, cNot);
and(d5, a, bNot, c);
and(d6, a, b, cNot);
and(d7, a, b, c);

/*
assign d0 = ( ~a & ~b & ~c),
       d1 = ( ~a & ~b & c),
       d2 = ( ~a & b & ~c),
       d3 = ( ~a & b & c),
       d4 = ( a & ~b & ~c),
       d5 = ( a & ~b & c),
       d6 = ( a & b & ~c),
       d7 = ( a & b & c);
       
*/

endmodule