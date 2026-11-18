// positive or negative
module if_3(
input [7:0]num,
output reg y
);
always@(*)begin
if(num[7]==1)
y=1'b1;
else
y=1'b0;
end 
endmodule
// another method
module if_3(
input signed [7:0]num,
output reg negative,
output reg positive);
always@(*)begin
if (num<0)
negative =1'b1;
else 
positive=1'b1;
end
endmodule

