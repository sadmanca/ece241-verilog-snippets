module mux2to1(x,y,s,f);
    input x,y,s;
    output f;
    assign f = (~s & x) |  (s & y);
endmodule

module mux2to1_2bit(X,Y,S,F);
    input [1:0] X,Y;
    input S;
    output [1:0] F;

    // INSTANTIATING MODULES (in other modules)
    mux2to1 u1(X[0], Y[0], S, F[0]);
    mux2to1 u2(X[2], Y[2], S, F[2]);

    // OR

    mux2to1 u1(.x (X[0]),
               .s(S),
               .y(Y[0]),
               .f(F[0]));
endmodule
