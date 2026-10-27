module concatenation_replication (
    input  [3:0] a, b,
    output [7:0] cat, rep
);
    assign cat = {a, b};
    assign rep = {2{a}};
endmodule
