module mod3_counter (
    input  wire       clk,
    input  wire       rst,     
    input  wire       en,    
    output reg  [1:0] count   
);

    always @(posedge clk) begin
        if (rst)
            count <= 2'b00;
        else if (en) begin
            if (count == 2'd2)
                count <= 2'b00;      
            else
                count <= count + 1'b1;
        end
    end

endmodule
