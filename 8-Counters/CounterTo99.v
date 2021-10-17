`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:45:06 07/09/2021 
// Design Name: 
// Module Name:    CounterTo99 
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
module CounterTo99 (count_high,count_low,clock,reset,start_pause);
output reg [3:0] count_high, count_low;
input clock,reset,start_pause;

always @ ( posedge clock or negedge reset)
if(reset==0)
begin
count_high <= 0;
count_low <=0;
end

else
	if(count_high==4'd9 && count_low==4'd9)
	begin
	count_high <= 0;
	count_low <=0;
	end
	else if(count_low==4'd9)
	begin
		count_high <= count_high+1;
		count_low <=0;
	end
	else
	count_low<=count_low+1;
	
endmodule

