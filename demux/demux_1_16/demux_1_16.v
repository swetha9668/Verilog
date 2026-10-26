module demux_1_16 (
    input  d, s3, s2, s1, s0,
    output y0, y1, y2, y3, y4, y5, y6, y7,
           y8, y9, y10, y11, y12, y13, y14, y15
);
    wire s3n, s2n, s1n, s0n;

    not n3 (s3n, s3);
    not n2 (s2n, s2);
    not n1 (s1n, s1);
    not n0 (s0n, s0);

    and g0  (y0,  d, s3n, s2n, s1n, s0n);
    and g1  (y1,  d, s3n, s2n, s1n, s0 );
    and g2  (y2,  d, s3n, s2n, s1,  s0n);
    and g3  (y3,  d, s3n, s2n, s1,  s0 );
    and g4  (y4,  d, s3n, s2,  s1n, s0n);
    and g5  (y5,  d, s3n, s2,  s1n, s0 );
    and g6  (y6,  d, s3n, s2,  s1,  s0n);
    and g7  (y7,  d, s3n, s2,  s1,  s0 );
    and g8  (y8,  d, s3,  s2n, s1n, s0n);
    and g9  (y9,  d, s3,  s2n, s1n, s0 );
    and g10 (y10, d, s3,  s2n, s1,  s0n);
    and g11 (y11, d, s3,  s2n, s1,  s0 );
    and g12 (y12, d, s3,  s2,  s1n, s0n);
    and g13 (y13, d, s3,  s2,  s1n, s0 );
    and g14 (y14, d, s3,  s2,  s1,  s0n);
    and g15 (y15, d, s3,  s2,  s1,  s0 );
endmodule
