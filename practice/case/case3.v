module case3(
input [1:0] in,
input en,
output reg [3:0]y);
always@(*)begin
y=4'b0000;
if(en)begin
case(in)
2'b00:y=4'b0001;
2'b00:y=4'b0010;
2'b00:y=4'b0100;
2'b00:y=4'b1000;
default:y=4'b0000;
endcase
end 
end
endmodule


