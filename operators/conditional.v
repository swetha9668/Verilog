module conditional (
    input  [3:0] a, b,
    output [3:0] cond
);
    assign cond = (a > b) ? a : b;
endmodule
