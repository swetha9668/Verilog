module encoder_4_2 (
    input d0, d1, d2, d3,
    output a, b
);

or (a, d2, d3);
or (b, d1, d3);

endmodule
