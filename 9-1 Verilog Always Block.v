module 2to1mux(
    input x, y, s;
    output f;
);

    assign f = (~s & x) | (s & y);

    assign f = s ? y : x;

endmodule

//----------------------------------

module 2to1mux(
    input x, y, s;
    output reg f;
);

    always @ (x, y, s)

//  always @ (*)
//  always @ *

        if (s == 0)
            f = x;
        else
            f = y;

endmodule