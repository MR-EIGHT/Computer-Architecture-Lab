`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:29:24 06/29/2021 
// Design Name: 
// Module Name:    RegisterWithParallelLoad 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RegisterWithParallelLoad(Q0, Q1, Q2, Q3, D0, D1, D2, D3, Load, CLK);

	output Q0,Q1,Q2,Q3;   
   input  D0,D1,D2,D3;   
   input  Load;
   input  CLK;
   wire   Loadn;
   wire   w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12; 
   
   not(Loadn, Load);

   and(w1, Q0, Loadn);
   and(w2, D0, Load);
   or(w3, w2, w1);

   and(w4, Q1, Loadn);
   and(w5, D1, Load);
   or(w6, w5, w4);

   and(w7, Q2, Loadn);
   and(w8, D2, Load);
   or(w9, w8, w7);

   and(w10, Q3, Loadn);
   and(w11, D3, Load);
   or(w12, w11, w10);
   
   dff df0(1, CLK, w3,Q0);
   dff df1(1, CLK, w6,Q1);
   dff df2(1, CLK, w9,Q2);
   dff df3(1, CLK, w12,Q3); 

endmodule
