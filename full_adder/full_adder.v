module full_adder (input a,b,c, output sum,carry);
wire s,x,y;
xor(s,a,b);
xor(sum,s,c);
and(x,a,b);
and(y,s,c);
or(carry,x,y);
endmodule  
