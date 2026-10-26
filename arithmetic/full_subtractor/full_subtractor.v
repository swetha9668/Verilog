module full_subtractor (input a,b,c, output difference,borrow);
wire s,w,x,y,z;
xor(s,a,b);
xor(difference,s,c);
not(w,a);
and(x,b,c);
and(y,w,c);
and(z,w,b);
or(borrow,x,y,z);
endmodule
