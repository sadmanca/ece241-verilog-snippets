module mux2to1(x,y,s,f);

    input x,y,s;
    output f;
    assign f = (~s & x) |  (s & y);

endmodule