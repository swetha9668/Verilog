
module tb_parity_generator;

reg [3:0] data;
wire even_parity, odd_parity;

parity_generator dut (
    .data(data),
    .even_parity(even_parity),
    .odd_parity(odd_parity)
);

initial begin
        $dumpfile("parity_generator.vcd");
        $dumpvars(0, tb_parity_generator);
    $monitor("data=%b | even_parity=%b odd_parity=%b",
             data, even_parity, odd_parity);

    data=4'b0000;
    #10 data=4'b0001;
    #10 data=4'b0011;
    #10 data=4'b0111;
    #10 data=4'b1111;
    #10 $finish;
end

endmodule

