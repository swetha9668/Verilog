module srlatch_nor (
    input S, R,
    output Q, Qbar
);

    nor (Q, R, Qbar);
    nor (Qbar, S, Q);

endmodule
