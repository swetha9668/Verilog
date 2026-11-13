module rand_gen (input clk, output reg signed [8:0]r);
  integer seed;
  initial seed = 12345;
 
  always @(posedge clk)
    r <= ({$random(seed)} % 201) - 100;
endmodule
