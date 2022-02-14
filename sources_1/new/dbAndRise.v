//Module to call debouncers and risingedges for all nine inputs
module dbAndRise(
input clk, rst,
input [8:0] in, 
output [8:0] out
);

wire [8:0] w;
debouncer d0(clk, in[0], w[0]);
risingEdge r0(clk, rst, w[0], out[0]);

debouncer d1(clk, in[1], w[1]);
risingEdge r1(clk, rst, w[1], out[1]);

debouncer d2(clk, in[2], w[2]);
risingEdge r2(clk, rst, w[2], out[2]);

debouncer d3(clk, in[3], w[3]);
risingEdge r3(clk, rst, w[3], out[3]);

//No need for debouncers for the switches
//debouncer d4(clk, in[4], w[4]);
assign out[7:4] = in[7:4];
//risingEdge r4(clk, rst, w[4], out[4]);

//debouncer d5(clk, in[5], w[5]);
//risingEdge r5(clk, rst, w[5], out[5]);

//debouncer d6(clk, in[6], w[6]);
//risingEdge r6(clk, rst, w[6], out[6]);

//debouncer d7(clk, in[7], w[7]);
//risingEdge r7(clk, rst, w[7], out[7]);

debouncer d8(clk, in[8], w[8]);
risingEdge r8(clk, rst, w[8], out[8]);


endmodule
