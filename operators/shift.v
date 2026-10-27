module shift (
    input  [3:0] a,
    output [3:0] shl, shr
);
    assign shl = a << 1;
    assign shr = a >> 1;
endmodule
