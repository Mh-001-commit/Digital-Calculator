module digitalCalc(
input clk, rst,
input [8:0] in,
output reg [3:0] digitSelect, 
output reg [7:0] out,
output signed [14:0] result
);

//stabilize
wire [8:0] But; //Buttons after stabilization
dbAndRise stabilize(clk, rst, in, But);


//handling numbers
wire [3:0] A10, A1, B10, B1;//Numbers determined by the user
handleNumberPresses numberPresses(clk, rst ,But[3:0],A10, A1, B10, B1);//we may need to slower this clk a bit

wire [2:0] operation;//Operation determined by the user
handleOperationPresses operand(clk,But[8:4],operation);
//Assigning outs => make a module that assign outs based on BUT[8:4] keeping in mind negative sign and closed led
//Maybe that module is called handleOperationPresses takes But[8:4] along with the numbers and assign outs

wire signed [14:0] res;
wire neg;
Calc Calculator(clk, A10, A1, B10, B1, operation, res,neg);
assign result=res;
wire  [3:0] pr1, pr2, pr3, pr4;
//res<0?-res:res
break to_break((res<0?(0-res):res), pr1, pr2, pr3, pr4);
wire [7:0] outA10, outA1, outB10, outB1;
//10
sevSeg ins4(1,(neg?10:pr1),outA10);
sevSeg ins5(1, pr2, outA1);
sevSeg ins6(1, pr3, outB10);
sevSeg ins7(1, pr4, outB1);


//showing => convert this to module that takes outs and shows them
//look into this function, it should be working fine     display myDisplay(clk, reset,outA10, outA1, outB10, outB1,digitSelect, out);
wire fastClock; wire [1:0] twoCounter;
clockDivider #(200000) divClk(clk, reset, fastClock);
nBitCounter #(2) selctDig(fastClock, reset, twoCounter);
always@(twoCounter) begin
    case(twoCounter) 
     2'b00: begin 
        digitSelect=4'b1110; 
        out=outB1;
     end
     2'b01: begin
      digitSelect=4'b1101; 
      out=outB10;
     end
     2'b10: begin
     digitSelect=4'b1011;
     out[6:0]=outA1[6:0];
     out[7]=0;
     end
     2'b11: begin 
     digitSelect=4'b0111; 
     out=outA10;
     end
    endcase
    
end





endmodule
