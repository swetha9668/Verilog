module logical (
    input  [3:0] a, b,
    output land, lor, lnot
);
    assign land = a && b;
    assign lor  = a || b;
    assign lnot = !a;
endmodule
