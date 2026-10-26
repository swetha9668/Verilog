// 2:1 mux, gate level
module mux_2_1 (input i0, i1, s, output y);
    wire a, b, c;
    not(a, s);
    and(b, a, i0);
    and(c, s, i1);
    or(y, c, b);
endmodule

// 16:1 mux built from fifteen 2:1 muxes
module mux_16_1 (input [15:0] i, input s3, s2, s1, s0, output y);
    wire [7:0] l1;
    wire [3:0] l2;   
    wire [1:0] l3;  

    // Level 1: 8 muxes, select = s0
    mux_2_1 m1_0(i[0],  i[1],  s0, l1[0]);
    mux_2_1 m1_1(i[2],  i[3],  s0, l1[1]);
    mux_2_1 m1_2(i[4],  i[5],  s0, l1[2]);
    mux_2_1 m1_3(i[6],  i[7],  s0, l1[3]);
    mux_2_1 m1_4(i[8],  i[9],  s0, l1[4]);
    mux_2_1 m1_5(i[10], i[11], s0, l1[5]);
    mux_2_1 m1_6(i[12], i[13], s0, l1[6]);
    mux_2_1 m1_7(i[14], i[15], s0, l1[7]);

    // Level 2: 4 muxes, select = s1
    mux_2_1 m2_0(l1[0], l1[1], s1, l2[0]);
    mux_2_1 m2_1(l1[2], l1[3], s1, l2[1]);
    mux_2_1 m2_2(l1[4], l1[5], s1, l2[2]);
    mux_2_1 m2_3(l1[6], l1[7], s1, l2[3]);

    // Level 3: 2 muxes, select = s2
    mux_2_1 m3_0(l2[0], l2[1], s2, l3[0]);
    mux_2_1 m3_1(l2[2], l2[3], s2, l3[1]);

    // Level 4: 1 mux, select = s3
    mux_2_1 m4_0(l3[0], l3[1], s3, y);
endmodule
