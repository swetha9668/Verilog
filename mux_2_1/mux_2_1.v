module mux_2_1 (input i0,i1,s, output y);
wire a,b,c;
not(a,s);
and(b,a,i0);
and(c,s,i1);
or(y,c,b);
endmodule
