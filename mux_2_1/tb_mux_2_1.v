module tb_mux_2_1;
    reg s, i0, i1;
    wire y;

    mux_2_1 dut (
        .s(s),
        .i0(i0),
        .i1(i1),
        .y(y)
    );

    initial begin
        $dumpfile("mux_2_1.vcd");
        $dumpvars(0, tb_mux_2_1);
        $monitor("time=%t | s=%b i0=%b i1=%b y=%b", $time, s, i0, i1, y);

        s = 0; i0 = 0; i1 = 0; #10;
        s = 0; i0 = 0; i1 = 1; #10;
        s = 0; i0 = 1; i1 = 0; #10;
        s = 0; i0 = 1; i1 = 1; #10;
        s = 1; i0 = 0; i1 = 0; #10;
        s = 1; i0 = 0; i1 = 1; #10;
        s = 1; i0 = 1; i1 = 0; #10;
        s = 1; i0 = 1; i1 = 1; #10;
        $finish;
    end
endmodule
