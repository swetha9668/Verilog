module relational (
    input  [3:0] a, b,
    output gt, lt, ge, le
);
    assign gt = a >  b;
    assign lt = a <  b;
    assign ge = a >= b;
    assign le = a <= b;
endmodule
