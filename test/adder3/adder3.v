module adder3 #(parameter N = 8)
  (input  [N-1:0] A, B,
   input CIN,
   output [N-1:0] SUM,
   output COUT);
  assign {COUT, SUM} = A + B + CIN;  
endmodule
