module bcd2excess3 (
    input  b3, b2, b1, b0,
    output e3, e2, e1, e0
);
    wire b2n, b1n, b0n;
    wire t1, t2, t3, t4, t5;

    not n2 (b2n, b2);
    not n1 (b1n, b1);
    not n0 (b0n, b0);

    // e3 = b3 + b2(b1 + b0)
    or  o1 (t1, b1, b0);
    and a1 (t2, b2, t1);
    or  o2 (e3, b3, t2);

    // e2 = b2'b1 + b2'b0 + b2 b1' b0'
    and a2 (t3, b2n, b1);
    and a3 (t4, b2n, b0);
    and a4 (t5, b2, b1n, b0n);
    or  o3 (e2, t3, t4, t5);

    // e1 = b1 XNOR b0
    xnor x1 (e1, b1, b0);

    // e0 = b0'
    not n3 (e0, b0);
endmodule
