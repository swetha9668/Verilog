module tb_encoder_4_2;

reg d0, d1, d2, d3;
wire a, b;

encoder_4_2 dut (
    .d0(d0), .d1(d1), .d2(d2), .d3(d3), .a(a), .b(b)
);

initial begin
    $dumpfile("encoder_4_2.vcd");
    $dumpvars(0, tb_encoder_4_2);

    $monitor("time=%0t | d3=%b d2=%b d1=%b d0=%b | a=%b b=%b",
             $time, d3, d2, d1, d0, a, b);

    d3=0; d2=0; d1=0; d0=1; #10;
    d3=0; d2=0; d1=1; d0=0; #10;
    d3=0; d2=1; d1=0; d0=0; #10;
    d3=1; d2=0; d1=0; d0=0; #10;

    $finish;
end

endmodule
