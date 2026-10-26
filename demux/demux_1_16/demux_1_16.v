module demux_1_16 (
    input         d,
    input  [3:0]  s,
    output [15:0] y
);
    assign y = d ? (16'b1 << s) : 16'b0;
endmodule
