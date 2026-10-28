module half_adder_nba (
    input  a, b,
    output reg sum, carry
);
    always @(*) begin
        sum   <= a ^ b;
        carry <= a & b;
    end
endmodule
