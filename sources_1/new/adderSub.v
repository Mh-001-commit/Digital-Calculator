module adderSub(input [3:0] A10, A1, B10, B1, cin, output [3:0] sum10 , sum1, cout
    );
    wire[6:0] w;
        //wire [3:0] xorIn12;
       // xor(xorIn12, in2, cin);
        FA u1(A1[0], B1[0]^cin, cin, sum1[0], w[0]);
        FA u2(A1[1], B1[1]^cin, w[0], sum1[1], w[1]);
        FA u3(A1[2], B1[2]^cin, w[1], sum1[2], w[2]);
        FA u4(A1[3], B1[3]^cin, w[2], sum1[3], w[3]);
        FA u5(A10[0], B1[0]^cin, w[3], sum10[0], w[4]);
        FA u6(A10[1], B1[1]^cin, w[4], sum10[1], w[5]);
        FA u7(A10[2], B1[2]^cin, w[5], sum10[2], w[6]);
        FA u8(A10[3], B1[3]^cin, w[6], sum10[3], cout);
    
endmodule

module FA(input in1, in2, cin, output sum, cout);
    wire ha1_s, ha2_s, ha1_c, ha2_c;
    wire sum, cout;
    HA hal(in1, in2, ha1_s, ha1_c);
    HA ha2(cin, ha1_s, ha2_s, ha2_c);
    assign sum=ha2_s;
    assign cout= ha1_c | ha2_c;
endmodule
module HA(input in1 ,in2, output sum, cout);
    and(cout, in1, in2);
    xor(sum, in1, in2);
endmodule
