
module tb_encoder_8_3;
    reg  d7, d6, d5, d4, d3, d2, d1, d0;
    wire y2, y1, y0;

    encoder_8_3 dut (d7, d6, d5, d4, d3, d2, d1, d0, y2, y1, y0);

    initial begin
        $dumpfile("encoder_8_3.vcd");
        $dumpvars(0, tb_encoder_8_3);

        $monitor("d=%b%b%b%b%b%b%b%b  y=%b%b%b",
                 d7, d6, d5, d4, d3, d2, d1, d0, y2, y1, y0);

        {d7,d6,d5,d4,d3,d2,d1,d0} = 8'b00000001; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0} = 8'b00000010; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0} = 8'b00000100; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0} = 8'b00001000; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0} = 8'b00010000; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0} = 8'b00100000; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0} = 8'b01000000; #10;
        {d7,d6,d5,d4,d3,d2,d1,d0} = 8'b10000000; #10;

        $finish;
    end
endmodule
