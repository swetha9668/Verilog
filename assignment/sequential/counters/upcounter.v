module upcounter (
    input        clk,
    input        reset,      // synchronous, active high
    output reg [3:0] count
);

    always @(posedge clk) begin
        if (reset)
            count <= 4'd0;
        else
            count <= count + 1;
    end

endmodule
