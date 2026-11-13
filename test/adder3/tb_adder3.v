module tb_adder3;
    reg  [3:0] A, B;
    reg        CIN;
    wire [3:0] SUM;
    wire       COUT;

    adder3 dut (A, B, CIN, SUM, COUT);

    initial begin
        $dumpfile("adder3.vcd");
        $dumpvars(0, tb_adder3);

        $monitor("A=%b B=%b CIN=%b | COUT=%b SUM=%b", A, B, CIN, COUT, SUM);

        A = 4'b0000; B = 4'b0000; CIN = 0; #10;
        A = 4'b0011; B = 4'b0010; CIN = 0; #10;
        A = 4'b0111; B = 4'b0001; CIN = 0; #10;
        A = 4'b1010; B = 4'b0101; CIN = 0; #10;
        A = 4'b1111; B = 4'b0001; CIN = 0; #10;
        A = 4'b1111; B = 4'b1111; CIN = 1; #10;

        $finish;
    end
endmodulemodule tb_adder3;
    reg  [3:0] A, B;
    reg        CIN;
    wire [3:0] SUM;
    wire       COUT;

    adder3 dut (A, B, CIN, SUM, COUT);

    initial begin
        $dumpfile("adder3.vcd");
        $dumpvars(0, tb_adder3);

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
