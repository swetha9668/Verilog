module tb_decoder_3_8;
    reg  a2, a1, a0;
    wire y0, y1, y2, y3, y4, y5, y6, y7;

    decoder_3_8 dut (a2, a1, a0, y0, y1, y2, y3, y4, y5, y6, y7);

    initial begin
	    $dumpfile("decoder_3_8.vcd");
    $dumpvars(0, tb_decoder_3_8);
        $monitor("a=%b%b%b  y=%b%b%b%b%b%b%b%b",
                 a2, a1, a0, y7, y6, y5, y4, y3, y2, y1, y0);

        a2 = 0; a1 = 0; a0 = 0; #10;
        a2 = 0; a1 = 0; a0 = 1; #10;
        a2 = 0; a1 = 1; a0 = 0; #10;
        a2 = 0; a1 = 1; a0 = 1; #10;
        a2 = 1; a1 = 0; a0 = 0; #10;
        a2 = 1; a1 = 0; a0 = 1; #10;
        a2 = 1; a1 = 1; a0 = 0; #10;
        a2 = 1; a1 = 1; a0 = 1; #10;

        $finish;
    end
endmodule
