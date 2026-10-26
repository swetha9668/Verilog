module decoder_3_8 (
    input  a2, a1, a0,
    output y0, y1, y2, y3, y4, y5, y6, y7
);
    wire a2n, a1n, a0n;

    not n2 (a2n, a2);
    not n1 (a1n, a1);
    not n0 (a0n, a0);

    and g0 (y0, a2n, a1n, a0n);   // 000
    and g1 (y1, a2n, a1n, a0 );   // 001
    and g2 (y2, a2n, a1,  a0n);   // 010
    and g3 (y3, a2n, a1,  a0 );   // 011
    and g4 (y4, a2,  a1n, a0n);   // 100
    and g5 (y5, a2,  a1n, a0 );   // 101
    and g6 (y6, a2,  a1,  a0n);   // 110
    and g7 (y7, a2,  a1,  a0 );   // 111
endmodule
