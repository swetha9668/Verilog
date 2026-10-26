

module tb_demux_1_16;
    reg  d, s3, s2, s1, s0;
    wire y0, y1, y2, y3, y4, y5, y6, y7,
         y8, y9, y10, y11, y12, y13, y14, y15;

    demux_1_16 dut (d, s3, s2, s1, s0,
                    y0, y1, y2, y3, y4, y5, y6, y7,
                    y8, y9, y10, y11, y12, y13, y14, y15);

    initial begin
        $dumpfile("demux_1_16.vcd");
        $dumpvars(0, tb_demux_1_16);

        $monitor("d=%b s=%b%b%b%b  y=%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b",
                 d, s3, s2, s1, s0,
                 y15, y14, y13, y12, y11, y10, y9, y8,
                 y7, y6, y5, y4, y3, y2, y1, y0);

        d = 1;
        {s3, s2, s1, s0} = 4'b0000; #10;
        {s3, s2, s1, s0} = 4'b0001; #10;
        {s3, s2, s1, s0} = 4'b0010; #10;
        {s3, s2, s1, s0} = 4'b0011; #10;
        {s3, s2, s1, s0} = 4'b0100; #10;
        {s3, s2, s1, s0} = 4'b0101; #10;
        {s3, s2, s1, s0} = 4'b0110; #10;
        {s3, s2, s1, s0} = 4'b0111; #10;
        {s3, s2, s1, s0} = 4'b1000; #10;
        {s3, s2, s1, s0} = 4'b1001; #10;
        {s3, s2, s1, s0} = 4'b1010; #10;
        {s3, s2, s1, s0} = 4'b1011; #10;
        {s3, s2, s1, s0} = 4'b1100; #10;
        {s3, s2, s1, s0} = 4'b1101; #10;
        {s3, s2, s1, s0} = 4'b1110; #10;
        {s3, s2, s1, s0} = 4'b1111; #10;

        d = 0;
        {s3, s2, s1, s0} = 4'b1001; #10;

        $finish;
    end
endmodule
