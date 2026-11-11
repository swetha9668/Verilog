module nand_sr_latch (
    input S, R,
    output Q, Qbar
);

    nand (Q, S, Qbar);
    nand (Qbar, R, Q);

endmodule
