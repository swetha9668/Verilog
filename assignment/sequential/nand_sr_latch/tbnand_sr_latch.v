module tbnand_sr_latch;

    reg S, R;
    wire Q, Qbar;

    nand_sr_latch dut (S, R, Q, Qbar);

    initial begin
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
