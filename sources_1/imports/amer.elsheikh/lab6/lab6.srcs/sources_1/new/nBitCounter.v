`timescale 1ns / 1ps

module  nBitCounter #(parameter n=2)(
input clk, 
reset, 
output reg [n-1:0] count);

always @(posedge clk, posedge reset) begin
    if (reset ==1)
        count<=0;
    else
        count<=count+1;    
end

endmodule
