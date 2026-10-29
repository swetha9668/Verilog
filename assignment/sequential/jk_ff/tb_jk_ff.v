module tb_jk_ff;
    reg clk, a, b;
    wire y;

    jk_ff dut(
        .clk(clk),
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin 
        $dumpfile("jk_ff.vcd");
        $dumpvars(0, tb_jk_ff);
    end 

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $monitor("clk=%b, a=%b, b=%b | y=%b", clk, a, b, y);
        clk=1;a=0;b=0;#10;
        clk=1;a=0;b=1;#10;
        clk=1;a=1;b=0;#10;
        clk=1;a=1;b=1;#10;
        $finish;
    end
endmodule
