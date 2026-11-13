module tb_priority_encoder6;
  reg  [7:0] d;
  wire [2:0] y;
  wire       valid;
 
  priority_encoder6 dut (d, y, valid);
 
  initial begin
        $dumpfile("priority_encoder6.vcd");
        $dumpvars(0, tb_priority_encoder6);
    $monitor("d = %b   y = %d   valid = %b", d, y, valid);
 
    d = 8'b00000000; #10;  
    d = 8'b00000001; #10;   
    d = 8'b00000010; #10;  
    d = 8'b00000110; #10;   
    d = 8'b00001000; #10;   
    d = 8'b00010101; #10;  
    d = 8'b00100000; #10;   
    d = 8'b01001111; #10;   
    d = 8'b10000000; #10;   
    d = 8'b11111111; #10;   
 
    $finish;
  end
endmodule
