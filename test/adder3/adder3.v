module adder3#(parameter WIDTH = 8)
  (input  [WIDTH-1:0] A, B,
   input              CIN,
   output [WIDTH-1:0] SUM,
   output             COUT);
  assign {COUT, SUM} = A + B + CIN;  
endmodule
