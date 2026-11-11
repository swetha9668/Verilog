module tbsr_latch;

    reg S, R;
    wire Q;

    sr_latch dut (S, R, Q);

    initial begin
	 $dumpfile("sr_latch.vcd");
	 $dumpvars(0,tbsr_latch);
        $monitor("S=%b R=%b | Q=%b", S, R, Q);

        S=0; R=0;
        #10 S=1; R=0;
        #10 S=0; R=0;
        #10 S=0; R=1;
        #10 S=0; R=0;
        #10 S=1; R=1;
        #10 $finish;
    end

endmodule
