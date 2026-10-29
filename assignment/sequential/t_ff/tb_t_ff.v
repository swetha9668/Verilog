module tb_t_ff;
    reg  clk, t;
    wire q;

    t_ff dut (.clk(clk), .t(t), .q(q));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("t_ff.vcd");
        $dumpvars(0, tb_t_ff);
        $monitor("time=%0t t=%b q=%b", $time, t, q);
         #20 t = 0;   
         #15 t = 1;     
         #20 t = 0; 
         #10 t = 1;     
         #20 t = 0;    
        $finish;
    end

    initial $monitor("time=%0t t=%b q=%b", $time, t, q);
endmodule
