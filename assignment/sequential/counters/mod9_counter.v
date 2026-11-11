module mod9_counter (
    input  wire       clk,
    input  wire       rst, 
    input  wire       en,  
    output reg  [3:0] count    
);

    always @(posedge clk) begin
        if (rst)
            count <= 4'b0000;
        else if (en) begin
            if (count >= 4'd8)
                count <= 4'b0000;        
            else
                count <= count + 1'b1;
        end
    end

endmodule
