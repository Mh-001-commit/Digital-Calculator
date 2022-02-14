module break(
input [14:0] num,
output  [3:0] A1000, A100, A10, A1
    );
    /*
reg [14:0] num_str = 0;
always @(*) begin
    num_str = num;
end*/

assign A1=num%10;
assign A10=(num/10)%10;
assign A100=(num/100)%10;
assign A1000=(num/1000);


endmodule
