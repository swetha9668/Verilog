
module tb_priority_encoder_4_2;
    reg  d3, d2, d1, d0;
    wire y1, y0, v;

    priority_encoder_4_2 dut (d3, d2, d1, d0, y1, y0, v);

    initial begin
        $dumpfile("priority_encoder_4_2.vcd");
        $dumpvars(0, tb_priority_encoder_4_2);

        $monitor("d=%b%b%b%b | y=%b%b v=%b", d3, d2, d1, d0, y1, y0, v);

        {d3, d2, d1, d0} = 4'b0000; #10;
        {d3, d2, d1, d0} = 4'b0001; #10;
        {d3, d2, d1, d0} = 4'b0010; #10;
        {d3, d2, d1, d0} = 4'b0011; #10;
        {d3, d2, d1, d0} = 4'b0100; #10;
        {d3, d2, d1, d0} = 4'b0110; #10;
        {d3, d2, d1, d0} = 4'b1000; #10;
        {d3, d2, d1, d0} = 4'b1010; #10;
        {d3, d2, d1, d0} = 4'b1111; #10;

        $finish;
    end
endmodule
