module t_ff (
    input  wire clk, t,
    output reg  q = 1'b0    
);
    always @(posedge clk)
        if (t) q <= ~q;
endmodule
