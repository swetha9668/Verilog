
module tb_encoder_2_1;
    reg d0, d1;
    wire y;

    encoder_2_1 dut (.d0(d0), .d1(d1), .y(y));

    initial begin
        $dumpfile("encoder_2_1.vcd");
        $dumpvars(0, tb_encoder_2_1);
        $monitor("t=%0t d1=%b d0=%b -> y=%b", $time, d1, d0, y);
        d1 = 0; d0 = 1; #10;   // y = 0
        d1 = 1; d0 = 0; #10;   // y = 1
        $finish;
    end
endmodule
