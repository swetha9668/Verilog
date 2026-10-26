// Testbench
module tb_mux_16_1_using_2_1 ;
    reg [15:0] i;
    reg s3, s2, s1, s0;
    wire y;:
    integer k;

    mux_16_1 dut(.i(i), .s3(s3), .s2(s2), .s1(s1), .s0(s0), .y(y));

    initial begin
        $monitor("time=%0t | s3s2s1s0=%b%b%b%b | y=%b", $time, s3, s2, s1, s0, y);
        i = 16'hA5C3;
        for (k = 0; k < 16; k = k + 1) begin
            {s3, s2, s1, s0} = k;
            #10;
        end
        $finish;
    end
endmodule
