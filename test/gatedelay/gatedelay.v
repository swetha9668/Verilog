module gatedelay(
    input A, B, C, D, E, 
    output Y
);
    wire b,c,d,o1,o2,a1,a2,a3,a4,a5,a6;
    not #4(b,B);
    not #4(c,C);
    not #4(d,D);
    and #3(a1,A,b);
    and #3(a2,a1,c);
    and #3(a3,A,B);
    and #3(a4,a3,E);
    and #3(a5,C,b);
    and #3(a6,C,d);
    or #2(o1,a2,a4);
    or #2(o2,a5,a6);
    or #2(Y,o2,o1);
endmodule
