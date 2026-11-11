module tlatch (
    input  wire t,
    input  wire en,
    output reg  q
);
    initial q = 1'b0;   

    always @(t or en) begin
        if (en && t)
            q = ~q;    
    end
endmodule
