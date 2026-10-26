module demux_1_2 (input y, s, output i0, i1);
    wire x;
    not (x, s);
    and (i0, y, x);
    and (i1, y, s);
endmodule
