module tb_dff;
    reg  clk = 0, d = 0;
    wire nq;

    nb_dff dut (.clk(clk), .d(d), .q(nq));

    always #5 clk = ~clk;

    initial begin
        $dumpfile("df_f.vcd");
        $dumpvars(0, tb_dff);
        $monitor("t=%t clk=%b d=%b | nb_q=%b", $time, clk, d, nq);
        #12 d = 1;
        #10 d = 0;
        #40 $finish;
    end
endmodule
