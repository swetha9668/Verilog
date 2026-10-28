module swap_ex6 (
    input  clk,
    output reg [3:0] x = 3,
    output reg [3:0] y = 8
);
    always @(posedge clk) begin
        x <= #2 y;
        y <= #2 x;
    end
endmodule
