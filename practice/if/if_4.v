//pass or fail
module if_4(
input [7:0]mark,
output reg pass,
output reg fail
 );
always@(*)begin
if(mark>35)begin
pass=1'b1;
fail=1'b0;
end
else begin
fail=1'b1;
pass=1'b0;
end
end 
endmodule
