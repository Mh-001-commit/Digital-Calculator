module  Calc( 
input clk,
input [3:0] A10, A1, B10, B1,
input [2:0] operation,
output reg signed [14:0] outRes,
output reg flag=0
    );
 
wire [6:0]A,B;
Concatenate first(A10,A1,A);
Concatenate second(B10,B1,B);

always @(posedge clk) begin
case(operation) 
0 : begin          //this should be changed
flag=0;
outRes= B1+B10*10+A1*100+A10*1000;
end
1 : begin
outRes=A+B;
flag=0;
end
2 : begin
flag=0;
if(A>=B)
outRes=A-B;
else begin 
outRes=A-B;
 flag=1;
end
end
3 : begin
flag=0;
outRes=A*B;
end
4 : begin
flag=0;
outRes=A/B;
end
default: begin          //this should be changed
flag=0;
outRes= B1+B10*10+A1*100+A10*1000;
end
endcase
end
        
endmodule

