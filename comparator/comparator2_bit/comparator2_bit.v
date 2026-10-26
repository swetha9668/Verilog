
module comparator2_bit(
    input [1:0] A, B,
    output A_gt_B,
    output A_lt_B,
    output A_eq_B
);

assign A_gt_B = (A > B);
assign A_lt_B = (A < B);
assign A_eq_B = (A == B);

endmodule

