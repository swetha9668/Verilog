module decoder_1_2 (
    input  a,
    output y0,
    output y1
);
    assign y0 = ~a;
    assign y1 = a;
endmodule
