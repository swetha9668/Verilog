module tb_demux_1_2;
    reg s,y;
    wire i0,i1;

    demux_1_2 dut (.s(s), .y(y), .i0(i0), .i1(i1));

    initial begin
        $dumpfile("demux_1_2.vcd");
        $dumpvars(0, tb_demux_1_2);
        $monitor("time=%t | s=%b y=%b i0=%b i1=%b", $time, s, y, i0, i1);

        y=0; s = 0;  #10;
        y=0; s = 1;  #10;
        y=1; s = 0;  #10;
        y=1; s = 1;  #10;

        $finish;
    end
endmodule 
