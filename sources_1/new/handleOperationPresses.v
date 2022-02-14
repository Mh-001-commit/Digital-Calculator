module handleOperationPresses(
input clk,
input [8:4] But,
output [2:0] operation);

assign operation = But[8]?0:But[4]?1:But[5]?2:But[6]?3:But[7]?4: 5;
/*
always@ (But[8:4])
if(But[4])
operation = 0;

else if (But[5])
operation = 1;

else if (But[6])
operation = 2;

else if (But[7])
operation = 3;
else operation= 4;*/


endmodule
