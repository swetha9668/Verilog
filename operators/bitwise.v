module bitwise (
    input  [3:0] a, b,
    output [3:0] band, bor, bxor, bxnor, bnot
);
    assign band  = a & b;
    assign bor   = a | b;
    assign bxor  = a ^ b;
    assign bxnor = a ~^ b;
    assign bnot  = ~a;
endmodule

