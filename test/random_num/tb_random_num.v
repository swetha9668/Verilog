module tb_random_num;
  reg clk = 0;
  wire signed [8:0] r;
  integer i, errors, lo, hi;
 
  rand_gen dut (clk, r);
 
  always #5 clk = ~clk;
 
  initial begin
    errors = 0; lo = 1000; hi = -1000;
    for (i = 0; i < 2000; i = i + 1) begin
      @(posedge clk); #1;
      if (i < 20) $display("random[%0d] = %0d", i, r);
      if (r < -100 || r > 100) errors = errors + 1;
      if (r < lo) lo = r;
      if (r > hi) hi = r;
    end
    $display("Over 2000 samples: min = %0d, max = %0d, out-of-range = %0d", lo, hi, errors);
    $finish;
  end
endmodule
