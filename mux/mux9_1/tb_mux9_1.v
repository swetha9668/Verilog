module tb_mux9_1;
reg [15:0] a, b, c, d, e, f, g, h, i;
reg [3:0] sel;
wire [15:0] out;
mux9_1 dut(a, b, c, d, e, f, g, h, i, sel, out);
initial begin
    $dumpfile("mux9_1.vcd");
    $dumpvars(0, tb_mux9_1);
        a=16'b0000000000000001;
	b=16'b0000000000000010;
	c=16'b0000000000000011;
	d=16'b0000000000000100;
	e=16'b0000000000000101;
	f=16'b0000000000000110;
	g=16'b0000000000000111;
	h=16'b0000000000001000;
	i=16'b0000000000001001;
    $monitor("time=%t | sel=%d | a=%b, b=%b, c=%b,d=%b, e=%b, f=%b, g=%b, h=%b, i=%b| out=%h",$time, sel, a, b, c, d, e, f, g, h, i, out);
    sel=4'd0;
    sel=4'd1;
    sel=4'd2;
    sel=4'd3;
    sel=4'd4;
    sel=4'd5;
    sel=4'd6;
    sel=4'd7;
    sel=4'd8;
    sel=4'd9;
    $finish;
end

endmodule
