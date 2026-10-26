module tb_adder_4bit;

    reg [3:0] A, B;
    wire [3:0] SUM;
    wire COUT;

    adder_4bit dut(A, B, SUM, COUT);

    initial begin
	        $dumpfile("adder_4bit.vcd");
		$dumpvars(0, tb_adder_4bit);
        A = 4'b0000; B = 4'b0000;
        #10 A = 4'b0011; B = 4'b0010;
        #10 A = 4'b0111; B = 4'b0001;
        #10 A = 4'b1111; B = 4'b0001;
        #10 $finish;
    end

endmodule
