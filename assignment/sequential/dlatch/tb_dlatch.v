module tb_dlatch;
    reg d, en;
    wire q;

    d_latch dut (.d(d), .en(en), .q(q));

    initial begin
	 $dumpfile("dlatch.vcd");
	 $dumpvars(0,tb_dlatch);
	 $monitor("t=%0t en=%b d=%b q=%b", $time, en, d, q);
        d = 0; en = 0;
        #10 d = 1;         
        #10 en = 1;       
        #10 d = 0;     
        #10 d = 1;        
        #10 en = 0;         
        #10 d = 0;        
        #10 $finish;
    end
endmodule
