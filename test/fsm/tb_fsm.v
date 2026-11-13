module tb_fsm;
    reg clk=0 , rst=1 , din=0 ;
    wire detected;
    
    fsm dut (clk, rst, din, detected);
        always #5 clk = ~clk;
    initial begin
                $dumpfile("fsm.vcd");
		$dumpvars(0, tb_fsm);
		$monitor("t=%0t  din=%b  state=%0d  detected=%b", $time, din, dut.state, detected);

        #10 rst = 0;

        #10 din = 1;
        #10 din = 0;
        #10 din = 1;
        #10 din = 1;
        #10 din = 0;   
	#10 din = 1;
        #10 din = 1;
        #10 din = 0;   
	#10 din = 0;
        #10 din = 0;

        #20 $finish;
    end
endmodule
