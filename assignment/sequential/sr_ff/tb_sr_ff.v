module tb_sr_ff;
    reg clk, a, b;
    wire y;
    sr_ff dut(
        .clk(clk),
        .a(a),
        .b(b),
        .y(y)
    );
    initial begin 
        $dumpfile("sr_ff.vcd");
        $dumpvars(0,tb_sr_ff);
    end 
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $monitor("clk=%b  a=%b  b=%b | y=%b", clk, a, b, y);
        a=0;b=0;#10;
        a=0;b=1;#10;
        a=1;b=0;#10;
        a=0;b=0;#10;
	a=1;b=1;#10;
        $finish;
    end
endmodule
