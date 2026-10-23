module demux_1_4 (input a, s1, s0, output i0, i1, i2, i3);
    wire x, y;
    not (x, s1);
    not (y, s0);
    and (i0, x, y, a);
    and (i1, x, s0, a);
    and (i2, s1, y, a);
    and (i3, s1, s0, a);
endmodule
