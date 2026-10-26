module tb_full_subtractor;
    reg a, b, c;
    wire difference, borrow;

    full_subtractor dut (
        .a(a),
        .b(b),
        .c(c),
        .difference(difference),
        .borrow(borrow)
    );

    initial begin
        $dumpfile("full_subtractor.vcd");
        $dumpvars(0, tb_full_subtractor);
        $monitor("time=%t | a=%b b=%b c=%b difference=%b borrow=%b", $time, a, b, c, difference, borrow);

        a = 0; b = 0; c = 0; #10;
        a = 0; b = 0; c = 1; #10;
        a = 0; b = 1; c = 0; #10;
        a = 0; b = 1; c = 1; #10;
        a = 1; b = 0; c = 0; #10;
        a = 1; b = 0; c = 1; #10;
        a = 1; b = 1; c = 0; #10;
        a = 1; b = 1; c = 1; #10;

        $finish;
    end
endmodule
