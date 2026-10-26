
module bcd_adder(
    input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout
);

wire [4:0] temp_sum;
wire correction;

assign temp_sum = A + B + Cin;
assign correction = (temp_sum > 9);

assign Sum = correction ? (temp_sum + 5'd6) : temp_sum;
assign Cout = correction;

endmodule

