module changing_values_ex4;
    reg [3:0] a;

    initial begin
        a = 3;
        $display("a=%0d", a);
        a = 9;
        $display("a=%0d", a);
    end
endmodule
