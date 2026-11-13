module fd(
    input rst,
    input sys_clk ,
    output reg real_clk ,
    output reg [17:0] count
);
    initial 
        count = 0 ;
    always @(posedge sys_clk or posedge rst)
    begin
        if (rst)
        begin
            count <= 18'b0 ;
            real_clk <= 0;
        end
        else if (count==249999)
        begin
            count <= 18'b0 ;
            real_clk <= ~ real_clk ;
        end
        else
            count <= count + 1 ;
    end
endmodule
