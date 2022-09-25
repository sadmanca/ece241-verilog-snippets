module displayXY(input [1:0] X, Y, input Sel,
                 output [0:0] H);

    wire [1:0] C;

    mux2to1_2bit u1(.X(X), .Y(Y), .S(Sel), .F(C));
    display2bit u2(.X1(C[1], .X0(C[0]), .S(H)));

endmodule

module mux2to1(x,y,s,f);
    // ...
endmodule

module mux2to1_2bit(X,Y,S,F);
    // ...
endmodule

module display2bit(input X1, X0, output [6:0] S);
    // ...
endmodule

//-------------------------------------------------

module Hex_TOP(input [4:0] SW, output [6:0] HEX0);

    displayXY DXY(.X(SW[1:0]),
                  .Y(SW[3:2]),
                  .Sel(SW[4]),
                  .H(HEX0));

endmodule