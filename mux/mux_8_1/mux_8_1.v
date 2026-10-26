module mux_8_1(
    input [7:0]d,
    input s2, s1, s0,
    output y
);
assign y =   s2 ? (s1 ? (s0 ? d[7]:d[6]):(s0 ? d[5]:d[4])):
                 (s1 ? (s0 ? d[3]:d[2]):(s0 ? d[1]:d[0]));
endmodule
