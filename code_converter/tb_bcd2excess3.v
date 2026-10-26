module tb_bcd2excess3;
    reg  b3, b2, b1, b0;
    wire e3, e2, e1, e0;

    bcd2excess3 dut (b3, b2, b1, b0, e3, e2, e1, e0);

    initial begin
        $dumpfile("bcd2excess3.vcd");
        $dumpvars(0, tb_bcd2excess3);

        $monitor("bcd=%b%b%b%b  xs3=%b%b%b%b", b3, b2, b1, b0, e3, e2, e1, e0);

        {b3, b2, b1, b0} = 4'd0; #10;
        {b3, b2, b1, b0} = 4'd1; #10;
        {b3, b2, b1, b0} = 4'd2; #10;
        {b3, b2, b1, b0} = 4'd3; #10;
        {b3, b2, b1, b0} = 4'd4; #10;
        {b3, b2, b1, b0} = 4'd5; #10;
        {b3, b2, b1, b0} = 4'd6; #10;
        {b3, b2, b1, b0} = 4'd7; #10;
        {b3, b2, b1, b0} = 4'd8; #10;
        {b3, b2, b1, b0} = 4'd9; #10;

        $finish;
    end
endmodule
