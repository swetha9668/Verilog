module tb_excess3bcd;

    reg [3:0] E;
    wire [3:0] BCD;

    excess3bcd dut(E, BCD);

    initial begin
        $dumpfile("excess3bcd.vcd");
        $dumpvars(0, tb_excess3bcd);
        E = 4'b0011;
        #10 E = 4'b0100;
        #10 E = 4'b0101;
        #10 E = 4'b0110;
        #10 E = 4'b1100;
        #10 $finish;
    end

endmodule
