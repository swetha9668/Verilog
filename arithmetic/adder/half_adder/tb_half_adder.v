
module tb_half_adder;

    reg a, b;
    wire s, c;

    half_adder dut (
        .a(a),
        .b(b),
        .s(s),
        .c(c)
    );

    initial begin
	    $dumpfile("half_adder.vcd");
	    $dumpvars(0,tb_half_adder);
        $monitor("a=%b b=%b s=%b c=%b", a, b, s, c);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule

