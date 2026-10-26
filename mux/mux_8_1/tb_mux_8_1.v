module tb_mux_8_1;
    reg [7:0]d;
    reg s2, s1, s0;
    wire y;

    mux_8_1 dut(
        .d(d),
        .s2(s2), 
        .s1(s1), 
        .s0(s0),
        .y(y)
    );

    initial begin 
        $dumpfile("mux_8_1.vcd");
        $dumpvars(0, tb_mux_8_1);
    end
    initial begin
        $monitor("s2=%b, s1=%b, s0=%b, d=%b | y=%b", s2, s1, s0, d, y);
        d=8'b00001110;
        s2=0;s1=0;s0=0;#10;
        s2=0;s1=0;s0=1;#10;
        s2=0;s1=1;s0=0;#10;
        s2=0;s1=1;s0=1;#10;
        s2=1;s1=0;s0=0;#10;
        s2=1;s1=0;s0=1;#10;
        s2=1;s1=1;s0=0;#10;
        s2=1;s1=1;s0=1;#10;
        $finish;
    end
endmodule
