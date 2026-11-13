module fsm8(
input clk,rst,x
output y
);
reg[1:0]state,next_state;
parameter s0=2'd0;
parameter s1=2'd1;
parameter s2=2'd2;
always@(posedge clk or posedge rst) begin
        if(rst)
                state<=s0;
        else
                state<=next_state;
end
always@(*)begin
        next_state=state;
        y=0;
        case(state)
                s0:next_state=x?s1:s0;
                s1:next_state=x?s2:s0;
                s2:begin
                        if(x)begin
                                y=1;
                                next_state=s1;
                        end else
                                next_state=s0;
                end
        endcase
end
endmodule
