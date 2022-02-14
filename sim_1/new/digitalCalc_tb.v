`timescale 1ns / 1ps

module digitalCalc_tb();
reg clk, rst;
reg [8:0] in;
wire [7:0] out;
wire [3:0] digitSelect;
wire  [14:0] result;
integer i;
digitalCalc dut(clk, rst, in, digitSelect, out, result);
initial begin
    clk=0;
           rst=0; #10;
     rst=1; #10;
       rst=0;
    forever #2 clk=~clk;
end
initial begin
        in=0; #10;
        for(i=0;i<10;i=i+1) begin
        in= 9'b100001111; #10;
        in=0; #10;
        end
        #20;
        in[6]=1; #10;
        in[6]=0;
        in[4]=1; #10;
        in[4]=0;
        in[5]=1; #10;
        in[5]=0;
        in[7]=1; #10;
        in[7]=0;
        in[8]=1; #10;
        in=0; #10;
       /////////
        for(i=0;i<9;i=i+1) begin
        in= 9'b100001000; #10;
        in=0; #10;
        end
        #20;
        in[5]=1; #10;
        in[5]=0;
        in[7]=1; #10;
        in[7]=0;
        in[8]=1; #10;
        in=0; #10;
       ////////
        for(i=0;i<3;i=i+1) begin
        in= 9'b100000011; #10;
        in=0; #10;
        end
        in[0]=1; #10;
        in=0; #10;
        #20;
        in[5]=1; #10;
        in[5]=0;
        in[7]=1; #10;
        in[7]=0;
        in[6]=1; #10;
        in[6]=0;
        in[8]=1; #10;
        in=0; #10;
        ////////////////////////
      /*  for(i=0;i<2;i=i+1) begin
        in= 9'b000001100; #10;
        in=0; #10;
        end
        #20;
        in[7]=1; #10;
        in[7]=0;
        in=0; #10;*/
         rst=1;#10;rst=0;
               in= 9'b100000111; #10;
               in=0; #10;
               in= 9'b100000011; #10;
               in=0; #10;
               in= 9'b100000001; #10;
               in=0; #10; 
               #20;
               in[7]=1; #10;
end 
       

endmodule
