// GENERAL FORM OF CASE STATEMENT
// e.g. using 2to1 mux

case(s)

    1'b0: f = x;
    1'b1: f = y;

    default: f = 1'b0;

endcase

//-------------------------------------

// ALU = Arithmetic Logic Unit

module ALU(A, B, s, ALUout);

    input [3:0] A, B;
    input [1:0] s;
    output reg [7:0] ALUout;

    always @ *
        begin
            case(s)
                2'b00: ALUout = {3'b0, (A + B)};
                2'b01: ALUout = {3'b0, (A - B)};
                2'b10: ALUout = A * B;
                2'b11: ALUout = {(A | B), (A ^ B)};

                default: ALUout = 8'b0;
            endcase
        end

endmodule