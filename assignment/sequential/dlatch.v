module d_latch (
    input  wire d,
    input  wire en, 
    output reg  q
);
    always @(d or en) begin
        if (en)
            q = d;   
    end
endmodule
