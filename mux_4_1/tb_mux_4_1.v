module tb_mux_4_1;
    reg s1, s0, i0, i1, i2, i3;
    wire y;

    mux_4_1 dut(
        .s1(s1), 
        .s0(s0),
        .i0(i0),
        .i1(i1),
        .i2(i2), 
        .i3(i3),
        .y(y)
    );

    initial begin
        $dumpfile("mux_4_1.vcd");
        $dumpvars(0, tb_mux_4_1);
        $monitor("time=%t | s1=%b s0=%b i0=%b i1=%b i2=%b i3=%b y=%b", $time, s1, s0, i0, i1, i2, i3, y);

        
        i0 = 1; i1 = 0; i2 = 1; i3 = 0;

        s1 = 0; s0 = 0; #10;   // selects i0
        s1 = 0; s0 = 1; #10;   // selects i1
        s1 = 1; s0 = 0; #10;   // selects i2
        s1 = 1; s0 = 1; #10;   // selects i3
        $finish;
    end
endmodule
