module fd_tb();
    reg rst;
    reg sys_clk;
    wire real_clk;
    wire [17:0] count;
    fd uut (
        .rst(rst),
        .sys_clk(sys_clk),
        .real_clk(real_clk),
        .count(count)
    );
    initial begin
        sys_clk = 0;
        forever #5 sys_clk = ~sys_clk;
    end
    initial begin
        $dumpfile("fd.vcd");
        $dumpvars();
    end
    initial begin
        $monitor("Time=%0t | rst=%b | sys_clk=%b | count=%d | real_clk=%b", $time, rst, sys_clk, count, real_clk);
        rst = 1; #20;
        rst = 0; #20;
        rst = 1; #10;
        rst = 0; #2500000;
        $finish;
    end
endmodule
