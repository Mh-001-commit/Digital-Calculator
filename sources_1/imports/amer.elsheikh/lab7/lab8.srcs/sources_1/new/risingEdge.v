module risingEdge(input clk, rst, level, output z);
    reg [1:0] state, nextState;
    parameter [1:0] A=2'b00, B=2'b01, C=2'b10;
    //A is zero, B is edg, and C is one
    always @ (level or state)
    case (state)
    A: if (level) nextState = B;
    else nextState = A;
    B: if (level) nextState = C;
    else nextState = A;
    C: if (level) nextState = C;
    else nextState = A;
    endcase
    always @ (posedge clk or posedge rst) begin
    if(rst)
    state <= A;
    else
    state <= nextState;
    end
    assign z = (state == B); // output generation
endmodule
