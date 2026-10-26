
module decoder_2_4 (
    input a, b, en,
    output y0, y1, y2, y3
);

wire w,x ;

not (w, a);
not (x, b);

and (y0, en, w, x);
and (y1, en, w, b);
and (y2, en, a, x);
and (y3, en, a, b);

endmodule

