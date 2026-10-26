module tb_multiplier;
    reg  [1:0] a, b;
    wire [3:0] p;

    multiplier dut (a, b, p);

    initial begin
        $dumpfile("multiplier.vcd");
        $dumpvars(0, tb_multiplier);

        $monitor("A=%b B=%b | P=%b", a, b, p);

        a = 2'd0; b = 2'd0; #10;
        a = 2'd1; b = 2'd1; #10;
        a = 2'd1; b = 2'd2; #10;
        a = 2'd2; b = 2'd2; #10;
        a = 2'd2; b = 2'd3; #10;
        a = 2'd3; b = 2'd1; #10;
        a = 2'd3; b = 2'd3; #10;

        $finish;
    end
endmodule
