module sevSeg(input en, [3:0] in, output reg [7:0] out);
    always @(*) begin
        if(en)
            case(in)
                 4'b0000: out = 8'b10000001; // "0"  
                 4'b0001: out = 8'b11001111; // "1" 
                 4'b0010: out = 8'b10010010; // "2" 
                 4'b0011: out = 8'b10000110; // "3" 
                 4'b0100: out = 8'b11001100; // "4" 
                 4'b0101: out = 8'b10100100; // "5" 
                 4'b0110: out = 8'b10100000; // "6" 
                 4'b0111: out = 8'b10001111; // "7" 
                 4'b1000: out = 8'b10000000; // "8"  
                 4'b1001: out = 8'b10000100; // "9"
                 4'b1010: out=  8'b11111110;//   "-" sign 
            endcase
        else 
          out=8'b1111_111;//"led is off"
     end       
endmodule
