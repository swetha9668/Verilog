module equality (
    input  [3:0] a, b,
    output eq, neq, ceq, cneq
);
    assign eq   = (a ==  b);
    assign neq  = (a !=  b);
    assign ceq  = (a === b);
    assign cneq = (a !== b);
endmodule
