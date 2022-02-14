module display(input clk, reset,
input [7:0] outA10, outA1, outB10, outB1,
output reg [3:0] digitSelect, 
output reg [7:0] out
    );
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
