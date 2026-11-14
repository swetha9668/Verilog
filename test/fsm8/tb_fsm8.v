`timescale 1ns/1ps

module tb_fsm8;
  reg  clk, rst, x;
  wire y;
  fsm8 dut (.clk(clk), .rst(rst), .x(x), .y(y));
  initial clk = 0;
  always #5 clk = ~clk;
  initial
    $monitor("time=%0t  x=%b  state=%0d  y=%b", $time, x, dut.state, y);

  initial begin
    rst = 1; x = 0;
    #12 rst = 0;

    // 1 1 1 1  -> y goes high after the third 1
    x = 1; #10;
    x = 1; #10;
    x = 1; #10;
    x = 1; #10;

    // 0 0 0 0  -> y goes high after the third 0
    x = 0; #10;
    x = 0; #10;
    x = 0; #10;
    x = 0; #10;

    // 1 0 1 0  -> y stays 0
    x = 1; #10;
    x = 0; #10;
    x = 1; #10;
    x = 0; #10;

    #20 $finish;
  end
endmodule
