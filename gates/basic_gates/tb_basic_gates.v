module tb_basic_gates;
    reg  a, b;
    wire y_and, y_or, y_not, y_nand, y_nor, y_xor, y_xnor, y_buf;

    basic_gates dut (a, b, y_and, y_or, y_not, y_nand, y_nor, y_xor, y_xnor, y_buf);

    initial begin
        $dumpfile("basic_gates.vcd");
        $dumpvars(0, tb_basic_gates);

        $monitor("a=%b b=%b | and=%b or=%b not(a)=%b nand=%b nor=%b xor=%b xnor=%b buf=%b",
                 a, b, y_and, y_or, y_not, y_nand, y_nor, y_xor, y_xnor, y_buf);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
