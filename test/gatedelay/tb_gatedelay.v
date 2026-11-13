module tb_gatedelay();
    reg A, B, C, D, E;
    wire Y;
    gatedelay uut (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .Y(Y)
    );
    initial begin
        $dumpfile("gatedelay.vcd");
        $dumpvars(0, tb_gatedelay);
    end
    initial begin
        $monitor(" A=%b B=%b C=%b D=%b E=%b | Y=%b", A, B, C, D, E, Y);
        A=0; B=0; C=0; D=0; E=0; #20;
        A=0; B=0; C=0; D=0; E=1; #20;
        A=0; B=0; C=0; D=1; E=0; #20;
        A=0; B=0; C=1; D=0; E=0; #20;
        A=0; B=1; C=0; D=0; E=0; #20;
        A=1; B=0; C=0; D=0; E=0; #20;
        A=1; B=1; C=1; D=1; E=1; #20;
        A=0; B=1; C=1; D=1; E=0; #20;
        $finish;
    end

endmodule
