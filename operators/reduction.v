module reduction (
    input  [3:0] a,
    output r_and, r_nand, r_or, r_nor, r_xor, r_xnor
);
    assign r_and  = &a;
    assign r_nand = ~&a;
    assign r_or   = |a;
    assign r_nor  = ~|a;
    assign r_xor  = ^a;
    assign r_xnor = ~^a;
endmodule
