
module tb_multiplier_4bit;

reg [3:0] A, B;
wire [7:0] Product;

multiplier_4bit dut (
    .A(A),
    .B(B),
    .Product(Product)
);

initial begin
    $monitor("A=%b B=%b | Product=%b (%d)",
             A, B, Product, Product);

    A=4'd2; B=4'd3;
    #10 A=4'd4; B=4'd5;
    #10 A=4'd7; B=4'd8;
    #10 A=4'd15; B=4'd15;
    #10 A=4'd9; B=4'd0;
    #10 $finish;
end

endmodule

