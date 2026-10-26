module tb_ripple_carry_adder;
    reg  [3:0] A, B;
    reg        CIN;
    wire [3:0] SUM;
    wire       COUT;

    ripple_carry_adder dut (A, B, CIN, SUM, COUT);

    initial begin
        $dumpfile("ripple_carry_adder.vcd");
        $dumpvars(0, tb_ripple_carry_adder);

        $monitor("A=%b B=%b CIN=%b | COUT=%b SUM=%b", A, B, CIN, COUT, SUM);

        A = 4'b0000; B = 4'b0000; CIN = 0; #10;
        A = 4'b0011; B = 4'b0010; CIN = 0; #10;
        A = 4'b0111; B = 4'b0001; CIN = 0; #10;
        A = 4'b1010; B = 4'b0101; CIN = 0; #10;
        A = 4'b1111; B = 4'b0001; CIN = 0; #10;
        A = 4'b1111; B = 4'b1111; CIN = 1; #10;

        $finish;
    end
endmodule
