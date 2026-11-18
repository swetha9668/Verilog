// even or odd
module even_odd(input [3:0]num,
output reg y
);
always@(*)begin
if (num[0]==1'b0)
y=1'b1;
else
y=1'b0; 
end
endmodule

