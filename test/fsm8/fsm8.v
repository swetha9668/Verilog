module fsm8 (input clk, rst, x, output y);
  localparam IDLE = 3'd0,
             A1   = 3'd1,   
             A2   = 3'd2,   
             A3   = 3'd3,   
             B1   = 3'd4, 
             B2   = 3'd5, 
             B3   = 3'd6;   
 
  reg [2:0] state, next;
  always @(posedge clk or posedge rst)
    if (rst) state <= IDLE;
    else     state <= next;
 
  
  always @(*) begin
    case (state)
      IDLE: next = x ? A1 : B1;
      A1:   next = x ? A2 : B1;
      A2:   next = x ? A3 : B1;
      A3:   next = x ? A3 : B1;   
      B1:   next = x ? A1 : B2;
      B2:   next = x ? A1 : B3;
      B3:   next = x ? A1 : B3;   
      default: next = IDLE;
    endcase
  end
  assign y = (state == A3) || (state == B3);
endmodule
