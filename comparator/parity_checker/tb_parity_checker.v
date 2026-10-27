
module tb_parity_checker;

reg a,b,c;
reg parity_bit;
wire even, odd;

parity_checker dut (
    .a(a), .b(b), .c(c), 
    .parity_bit(parity_bit),
    .even(even),
    .odd(odd)
);

initial begin
	$dumpfile("parity.vcd"); 
        $dumpvars(0, tb_parity_checker);
    $monitor("a=%b b=%b c=%c parity_bit=%b | even=%b odd=%b",
             a, b, c, parity_bit, even, odd);

        a=0; b=0; c=0; parity_bit=0;
        #10 a=0; b=0; c=1; parity_bit=1;
        #10 a=0; b=1; c=0; parity_bit=1;
        #10 a=0; b=1; c=1; parity_bit=0;
        #10 a=1; b=0; c=0; parity_bit=1;
        #10 a=1; b=0; c=1; parity_bit=0;
        #10 a=1; b=1; c=0; parity_bit=0;
        #10 a=1; b=1; c=1; parity_bit=1;
	#10 a=0; b=0; c=0; parity_bit=1;
        #10 a=0; b=0; c=1; parity_bit=0;
        #10 a=0; b=1; c=0; parity_bit=0;
        #10 a=0; b=1; c=1; parity_bit=1;
        #10 a=1; b=0; c=0; parity_bit=0;
        #10 a=1; b=0; c=1; parity_bit=1;
        #10 a=1; b=1; c=0; parity_bit=1;
        #10 a=1; b=1; c=1; parity_bit=0;
   $finish;
end

endmodule


