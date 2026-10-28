module ex3;
    reg [3:0] a, b;

    initial begin
        a = 2;
        b = a + 2;
        $display("a=%d b=%d", a, b);
    end
endmodule
