module priority_encoder_4_2 (
    input  d3, d2, d1, d0,
    output y1, y0, v
);
    assign y1 = d3 | d2;
    assign y0 = d3 | (~d2 & d1);
    assign v  = d3 | d2 | d1 | d0;
endmodule
