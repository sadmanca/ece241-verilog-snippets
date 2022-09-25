module FA(a, b, Cin, S, Cout);

    input a, b, Cin;
    output S, Cout;

    assign S = Cin ^ a ^ b;
    assign Cout = (a & b) | (Cin & a) | (Cin & b);

endmodule

//-------------------------------------------

module RCA(A, B, Cin, S, Cout);

    input [2:0] A, B;
    input Cin;

    output [2:0] S;
    output Cout;

    wire C1, C2;

    FA bit0(A[0], B[0], Cin, S[0], C1);
    FA bit1(A[1], B[1], C1, S[1], C2);
    FA bit2(A[2], B[2], C2, S[2], Cout);

endmodule