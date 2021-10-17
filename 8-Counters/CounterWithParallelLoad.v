`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:33 07/09/2021 
// Design Name: 
// Module Name:    CounterWithParallelLoad 
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
module CounterWithParallelLoad(

input clear,
input load,
input increment,
input clock,
input [3:0] I,
output [3:0] A,
output output_carry
    );
	 
wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;
wire ww0,ww1,ww2,ww3,ww4,ww5,ww6;

not(w0, clear);
not(w1, load);

and(w2,w0,load);
and(w3,w0,w1,increment);

and(w4,w2,I[0]);
and(w5,w2,~I[0]);

or(ww0,w3,w4);
or(ww1,clear,w3,w5);

flipflop ff1(A[0],ww0,clock,ww1);

and(ww2,A[0],w3);

and(w6,w2,I[1]); 
and(w7,w2,~I[1]);

or(ww3,ww2,w6);
or(ww4,clear,ww2,w7);

flipflop ff2(A[1],ww3,clock,ww4);
and(ww5,ww2,A[1]);

and(w8,w2,I[2]);
and(w9,w2,~I[2]);

or(ww6,ww5,w8);
or(ww7,clear,ww5,w9);

flipflop ff3(A[2],ww6,clock,ww7);

and(ww8,ww5,A[2]);

and(w10,w2,I[3]);
and(w11,w2,~I[3]);	 

or(ww9,ww8,w10);
or(ww10,clear,ww8,w11);

flipflop ff4(A[3],ww9,clock,ww10);

and(output_carry,ww8,A[3]);

endmodule






module flipflop (out,j,clk,k );  
input j, k,clk;
output out;
reg q;
  
   always @ (posedge clk)  
      case ({j,k})  
         2'b00 :  q <= q;  
         2'b01 :  q <= 0;  
         2'b10 :  q <= 1;  
         2'b11 :  q <= ~q;  
      endcase  
		
		assign out = q;
endmodule  




