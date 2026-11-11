module tb_srlatch_nor;

    reg S, R;
    wire Q, Qbar;

    srlatch_nor dut (S, R, Q, Qbar);

    initial begin
 $dumpfile("srlatch_nor.vcd");
	 $dumpvars(0,tb_srlatch_nor);
        $monitor("S=%b R=%b | Q=%b Qbar=%b", S, R, Q, Qbar);

        S=0; R=0;
        #10 S=1; R=0;
        #10 S=0; R=0;
        #10 S=0; R=1;
        #10 S=0; R=0;
        #10 S=1; R=1;
        #10 $finish;
    end

endmodule
