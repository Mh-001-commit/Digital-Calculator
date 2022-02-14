module handleNumberPresses(
input clk, reset,
input [3:0] But,
output  [3:0] A10, A1, B10, B1
);
    
modNum  modA10(clk, reset, But[0], A10);

modNum  modA1(clk, reset, But[1], A1);

modNum  modB10(clk, reset, But[2],B10);

modNum  modB1(clk, reset,But[3],B1);
    
endmodule
