module Concatenate(
input [3:0] x10, x1,
output [6:0] out);

assign out = x10*(4'd10)+x1;

endmodule
