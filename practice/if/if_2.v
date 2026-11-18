//greater of two
module if_2(
input [2:0]a,b,
output reg [2:0]max);
always@(*)begin
if (a>b)
max=a;
else 
max=b;
end
endmodule
