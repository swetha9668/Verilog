//mux2:1
module case1(
input d0,d1,sel,
output reg y
);
always@(*)begin
case(sel)
1'b0:y=d0;
1'b1:y=d1;
default:y=1'b0; 
endcase
end
endmodule


