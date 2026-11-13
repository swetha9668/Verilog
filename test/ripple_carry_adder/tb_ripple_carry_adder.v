module tb_ripple_carry_adder;
parameter N=4;
    reg  [N-1:0] a, b;
    reg        cin;
    wire [N-1:0] sum;
    wire       cout;

    ripple_carry_adder dut (a, b, cin, sum, cout);

    initial begin
        $dumpfile("ripple_carry_adder.vcd");
        $dumpvars(0, tb_ripple_carry_adder);

        $monitor("a=%b b=%b cin=%b | cout=%b sum=%b", a, b, cin, cout, sum);

        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        a = 4'b0011; b = 4'b0010; cin = 0; #10;
        a = 4'b0111; b = 4'b0001; cin = 0; #10;
        a = 4'b1010; b = 4'b0101; cin = 0; #10;
        a = 4'b1111; b = 4'b0001; cin = 0; #10;
        a = 4'b1111; b = 4'b1111; cin = 1; #10;

        $finish;
    end
endmodule
