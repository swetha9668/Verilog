module tb_gated_srlatch;

    reg S, R, EN;
    wire Q;

    gated_srlatch dut (S, R, EN, Q);

    initial begin
	 $dumpfile("gated_srlatch.vcd");
	 $dumpvars(0,tb_gated_srlatch);
        $monitor("EN=%b S=%b R=%b | Q=%b", EN, S, R, Q);

        EN=0; S=0; R=0;
        #10 EN=1; S=1; R=0;
        #10 S=0; R=0;
        #10 S=0; R=1;
        #10 EN=0; S=1; R=0;
        #10 EN=1; S=1; R=1;
        #10 $finish;
    end

endmodule
