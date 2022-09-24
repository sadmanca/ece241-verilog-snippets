module display2bit(input X1, X0, output [6:0] S);

    assign S[0] = X1 | !X0;
    assign S[1] = 1'b1;
    assign S[2] = ~X1 | X0;
    assign S[3] = S[0]
    assign S[4] = ~X0;
    assign S[5] = ~X1 & ~X0;
    assign S[6] = X1;

end module