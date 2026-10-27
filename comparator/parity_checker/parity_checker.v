module parity_checker(
    input a,b,c,
    input parity_bit,
    output even,
    output odd
);

assign even = ( a^b^c^ parity_bit);
assign odd  =  ~( a^b^c^ parity_bit);

endmodule
