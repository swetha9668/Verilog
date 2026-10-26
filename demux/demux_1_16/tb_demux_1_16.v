module tb_demux_1_16;
    reg         d;
    reg  [3:0]  s;
    wire [15:0] y;

    demux_1_16 dut (d, s, y);

    initial begin
        $dumpfile("demux_1_16.vcd");
        $dumpvars(0, tb_demux_1_16);

        $monitor("d=%b s=%b  y=%b", d, s, y);

        d = 1;
        s = 4'd0;  #10;
        s = 4'd1;  #10;
        s = 4'd2;  #10;
        s = 4'd3;  #10;
        s = 4'd4;  #10;
        s = 4'd5;  #10;
        s = 4'd6;  #10;
        s = 4'd7;  #10;
        s = 4'd8;  #10;
        s = 4'd9;  #10;
        s = 4'd10; #10;
        s = 4'd11; #10;
        s = 4'd12; #10;
        s = 4'd13; #10;
        s = 4'd14; #10;
        s = 4'd15; #10;

        d = 0; s = 4'd9; #10;     // with d = 0, all outputs stay 0

        $finish;
    end
endmodule
