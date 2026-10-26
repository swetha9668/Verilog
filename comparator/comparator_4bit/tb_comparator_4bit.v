
module tb_comparator_4bit;

reg [3:0] A, B;
wire A_gt_B, A_lt_B, A_eq_B;

comparator_4bit uut (
    .A(A), .B(B),
    .A_gt_B(A_gt_B),
    .A_lt_B(A_lt_B),
    .A_eq_B(A_eq_B)
);

initial begin
    $dumpfile("comparator_4bit.vcd");
    $dumpvars(0, tb_comparator_4bit);

    $monitor("A=%b B=%b | A>B=%b A<B=%b A==B=%b",
             A, B, A_gt_B, A_lt_B, A_eq_B);

    A=4'b0000; B=4'b0000;
    #10 A=4'b0001; B=4'b0000;
    #10 A=4'b0000; B=4'b0010;
    #10 A=4'b1111; B=4'b0010;
    #10 A=4'b1010; B=4'b1010;
    #10 $finish;
end

endmodule

