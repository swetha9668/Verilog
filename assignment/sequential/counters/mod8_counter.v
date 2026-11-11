module mod8_counter (
    input  wire       clk,
    input  wire       rst,     
    input  wire       en,      
    output reg  [2:0] count    
);

    always @(posedge clk) begin
        if (rst)
            count <= 3'b000;
        else if (en)
            count <= count + 1'b1;   
    end

endmodule
