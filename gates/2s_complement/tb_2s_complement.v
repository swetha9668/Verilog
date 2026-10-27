module tb_2s_complement;
    reg [3:0]a;
    wire [3:0]y;

    2s_complement dut(
        .a(a),
        .y(y)
    );

    initial begin
        $dumpfile("complement_2s.vcd");
        $dumpvars(0, tb_2s_complement);
    end 
    initial begin
        $monitor("a=%b | y=%b", a, y);
        a=4'b0000;#10;
        a=4'b0011;#10;
        a=4'b0101;#10;
        $finish;
    end
endmodule
