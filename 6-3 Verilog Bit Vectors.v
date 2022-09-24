module mux2to1_2bit(X,Y,S,F);

    input [1:0] X,Y;
    input S;
    output [1:0] FL

    assign F[0] = (~s & x[0]) | (s & Y[0]);
    assign F[1] = (~s & x[1]) | (s & Y[1]);

endmodule