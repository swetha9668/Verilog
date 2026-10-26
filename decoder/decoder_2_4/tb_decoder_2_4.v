module tb_decoder_2_4;

reg a, b, en;
wire y0, y1, y2, y3;

decoder_2_4 dut (
    .a(a), .b(b), .en(en),
    .y0(y0), .y1(y1), .y2(y2), .y3(y3)
);

initial begin
    $dumpfile("decoder_2_4.vcd");
    $dumpvars(0, tb_decoder_2_4);

    $monitor("time=%0t | en=%b a=%b b=%b | y3=%b y2=%b y1=%b y0=%b",
             $time, en, a, b, y3, y2, y1, y0);

    en=0; a=0; b=0; #10;
    en=1; a=0; b=0; #10;
    en=1; a=0; b=1; #10;
    en=1; a=1; b=0; #10;
    en=1; a=1; b=1; #10;

    $finish;
end

endmodule

