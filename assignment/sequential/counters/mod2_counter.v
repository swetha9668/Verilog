module mod2_counter (
    input  wire clk,
    input  wire rst,     // active-high synchronous reset
    input  wire en,      // count enable
    output reg  count    // 1-bit output: 0, 1, 0, 1, ...
);

    always @(posedge clk) begin
        if (rst)
            count <= 1'b0;
        else if (en)
            count <= ~count;     // toggle (same as count + 1 on 1 bit)
    end

endmodule
