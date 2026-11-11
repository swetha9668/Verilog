module tb_tlatch;
    reg t, en;
    wire q;

    tlatch dut (.t(t), .en(en), .q(q));

    initial begin
	    $dumpfile("tlatch.vcd");
	    $dumpvars(0, tb_tlatch);
        $monitor("t=%0t en=%b t_in=%b q=%b", $time, en, t, q);
        t = 0; en = 0;
        #10 en = 1;         
        #10 t = 1;        
        #10 t = 0;          
        #10 t = 1;          
        #10 en = 0;       
        #10 t = 0;
        #10 $finish;
    end
endmodule
