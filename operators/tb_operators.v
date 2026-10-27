module tb_operators;
    reg  [3:0] a, b;
 
    wire [4:0] add;  wire [3:0] sub;  wire [7:0] mul;  wire [3:0] div, mod;
    wire gt, lt, ge, le;
    wire eq, neq, ceq, cneq;
    wire land, lor, lnot;
    wire [3:0] band, bor, bxor, bxnor, bnot;
    wire r_and, r_nand, r_or, r_nor, r_xor, r_xnor;
    wire [3:0] shl, shr;
    wire [7:0] cat, rep;
    wire [3:0] cond;
 
    arithmetic  u1 (a, b, add, sub, mul, div, mod);
    relational  u2 (a, b, gt, lt, ge, le);
    equality    u3 (a, b, eq, neq, ceq, cneq);
    logical  u4 (a, b, land, lor, lnot);  
    bitwise     u5 (a, b, band, bor, bxor, bxnor, bnot);
    reduction   u6 (a, r_and, r_nand, r_or, r_nor, r_xor, r_xnor);
    shift       u7 (a, shl, shr);
    concatenation_replication   u8 (a, b, cat, rep);            
    conditional u9 (a, b, cond);
 
    initial begin
        $dumpfile("operators.vcd");
        $dumpvars(0, tb_operators);
 
        $monitor("t=%0t a=%d b=%d | add=%d sub=%d mul=%d div=%d mod=%d | gt=%b lt=%b ge=%b le=%b | eq=%b neq=%b ceq=%b cneq=%b | land=%b lor=%b lnot=%b | and=%b or=%b xor=%b xnor=%b not=%b | r_and=%b r_nand=%b r_or=%b r_nor=%b r_xor=%b r_xnor=%b | shl=%b shr=%b | cat=%b rep=%b | cond=%d",
                 $time, a, b, add, sub, mul, div, mod, gt, lt, ge, le,
                 eq, neq, ceq, cneq, land, lor, lnot,
                 band, bor, bxor, bxnor, bnot,
                 r_and, r_nand, r_or, r_nor, r_xor, r_xnor,
                 shl, shr, cat, rep, cond);
 
        a = 4'd5;  b = 4'd3;  #10;
        a = 4'd3;  b = 4'd5;  #10;
        a = 4'd9;  b = 4'd9;  #10;
        a = 4'd15; b = 4'd2;  #10;
        a = 4'd0;  b = 4'd7;  #10;
        $finish;
    end
endmodule
