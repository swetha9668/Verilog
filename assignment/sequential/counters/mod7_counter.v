module mod7_counter (
    input  wire       clk,
    input  wire       rst,     
    input  wire       en,  
    output reg  [2:0] count    
);

    always @(posedge clk) begin
        if (rst)
            count <= 3'b000;
        else if (en) begin
            if (count >= 3'd6)
                count <= 3'b000;         
            else
                count <= count + 1'b1;
        end
    end

endmodule
