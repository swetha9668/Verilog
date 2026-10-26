module tb_demux_1_4;
    reg a, s1, s0;
    wire i0, i1, i2, i3;

    demux_1_4 dut(.a(a), .s1(s1), .s0(s0), .i0(i0), .i1(i1), .i2(i2), .i3(i3));

    initial begin
        $dumpfile("demux_1_4.vcd");
        $dumpvars(0, tb_demux_1_4);
        $monitor("time=%0t | a=%b s1=%b s0=%b |i3=%b i2=%b i1=%b i0=%b",
                  $time, a, s1, s0, i3, i2, i1, i0);

        a= 1;
        s1 = 0; s0 = 0; #10;
        s1 = 0; s0 = 1; #10;
        s1 = 1; s0 = 0; #10;
        s1 = 1; s0 = 1; #10;

        a= 0;
        s1 = 0; s0 = 0; #10;
        s1 = 1; s0 = 1; #10;

        $finish;
    end
endmodule
