module tb_mux_16_1_using_2_1;
    reg [15:0] i;
    reg s3, s2, s1, s0;
    wire y;

    mux_16_1_using_2_1 dut(.i(i), .s3(s3), .s2(s2), .s1(s1), .s0(s0), .y(y));

    initial begin
        $dumpfile("mux_16_1.vcd");
        $dumpvars(0, tb_mux_16_1_using_2_1);

        i = 16'hA5C3;
        $monitor(" %b  %b  %b  %b | %b", s3, s2, s1, s0, y);

        s3 = 0; s2 = 0; s1 = 0; s0 = 0; #10;   // selects i[0]
        s3 = 0; s2 = 0; s1 = 0; s0 = 1; #10;   // selects i[1]
        s3 = 0; s2 = 0; s1 = 1; s0 = 0; #10;   // selects i[2]
        s3 = 0; s2 = 0; s1 = 1; s0 = 1; #10;   // selects i[3]
        s3 = 0; s2 = 1; s1 = 0; s0 = 0; #10;   // selects i[4]
        s3 = 0; s2 = 1; s1 = 0; s0 = 1; #10;   // selects i[5]
        s3 = 0; s2 = 1; s1 = 1; s0 = 0; #10;   // selects i[6]
        s3 = 0; s2 = 1; s1 = 1; s0 = 1; #10;   // selects i[7]
        s3 = 1; s2 = 0; s1 = 0; s0 = 0; #10;   // selects i[8]
        s3 = 1; s2 = 0; s1 = 0; s0 = 1; #10;   // selects i[9]
        s3 = 1; s2 = 0; s1 = 1; s0 = 0; #10;   // selects i[10]
        s3 = 1; s2 = 0; s1 = 1; s0 = 1; #10;   // selects i[11]
        s3 = 1; s2 = 1; s1 = 0; s0 = 0; #10;   // selects i[12]
        s3 = 1; s2 = 1; s1 = 0; s0 = 1; #10;   // selects i[13]
        s3 = 1; s2 = 1; s1 = 1; s0 = 0; #10;   // selects i[14]
        s3 = 1; s2 = 1; s1 = 1; s0 = 1; #10;   // selects i[15]

        $finish;
    end
    endmodule
