module tb_decoder_1_2;
    reg a;
    wire y0, y1;

    decoder_1_2 dut (.a(a), .y0(y0), .y1(y1));

    initial begin
        $dumpfile("decoder_1_2.vcd");
        $dumpvars(0, tb_decoder_1_2);
        $monitor("t=%0t a=%b -> y1=%b y0=%b", $time, a, y1, y0);
        a = 0; #10;   // y0 = 1, y1 = 0
        a = 1; #10;   // y0 = 0, y1 = 1
        $finish;
    end
endmodule
