module half_subtractor (input a,b, output difference,borrow);
wire c;
not(c,b);
xor(difference,a,b);
and(borrow,c,a);
endmodule
