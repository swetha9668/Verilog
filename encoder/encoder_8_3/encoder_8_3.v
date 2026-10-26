module encoder_8_3 (
    input  d7, d6, d5, d4, d3, d2, d1, d0,
    output y2, y1, y0
);
    assign y2 = d4 | d5 | d6 | d7;
    assign y1 = d2 | d3 | d6 | d7;
    assign y0 = d1 | d3 | d5 | d7;
endmodule
