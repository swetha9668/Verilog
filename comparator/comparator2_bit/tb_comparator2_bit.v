
module tb_comparator2_bit;

reg [1:0] A, B;
wire A_gt_B, A_lt_B, A_eq_B;

comparator2_bit uut (
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_lt_B(A_lt_B),
    .A_eq_B(A_eq_B)
);

initial begin
 $dumpfile("comparator.vcd");
    $dumpvars(0, tb_comparator2_bit);
    $monitor("A=%b B=%b | A>B=%b A<B=%b A==B=%b",
              A, B, A_gt_B, A_lt_B, A_eq_B);

    A=2'b00; B=2'b00;
    #10 A=2'b01; B=2'b00;
    #10 A=2'b00; B=2'b10;
    #10 A=2'b11; B=2'b10;
    #10 A=2'b10; B=2'b10;
    #10 $finish;
end

endmodule

