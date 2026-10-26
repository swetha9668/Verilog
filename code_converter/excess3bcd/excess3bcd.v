module excess3bcd(
    input [3:0] E,
    output [3:0] BCD
);

    assign BCD = E - 4'b0011;

endmodule
