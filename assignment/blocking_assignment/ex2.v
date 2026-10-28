module ex2 ;
    reg [3:0] a, b;

    initial begin
        a = 10;
        b = a;
        $display("a=%d b=%d", a, b);
    end
endmodule
