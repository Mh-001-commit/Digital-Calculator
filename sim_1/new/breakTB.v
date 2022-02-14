`timescale 1ns / 1ps


module breakTB();
reg clk, rst; 
reg [8:0] in;
wire [8:0] out;

wire  [3:0] A1000, A100, A10, A1;

dbAndRise insT(clk, rst, in, out);


initial begin
    clk=0;
    forever #10 clk=~clk;
   end 
   
   
initial begin
rst=1;#80;
rst = 0;
in=9'b000000000;#80;
in=9'b001000000;#80;
end

endmodule
