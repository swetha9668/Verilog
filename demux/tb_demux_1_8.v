module tb_demux_1_8;
    reg  d, s2, s1, s0;
    wire y0, y1, y2, y3, y4, y5, y6, y7;

    demux_1_8 dut (d, s2, s1, s0, y0, y1, y2, y3, y4, y5, y6, y7);

    initial begin
        $dumpfile("demux_1_8.vcd");
        $dumpvars(0, tb_demux_1_8);

        $monitor("d=%b s=%b%b%b  y=%b%b%b%b%b%b%b%b",
                 d, s2, s1, s0, y7, y6, y5, y4, y3, y2, y1, y0);

        d = 1;
        {s2, s1, s0} = 3'b000; #10;
        {s2, s1, s0} = 3'b001; #10;
        {s2, s1, s0} = 3'b010; #10;
        {s2, s1, s0} = 3'b011; #10;
        {s2, s1, s0} = 3'b100; #10;
        {s2, s1, s0} = 3'b101; #10;
        {s2, s1, s0} = 3'b110; #10;
        {s2, s1, s0} = 3'b111; #10;

        d = 0;                        // with d = 0, all outputs stay 0
        {s2, s1, s0} = 3'b101; #10;

        $finish;
    end
endmodule
