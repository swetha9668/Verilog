module tb_adder3;

  // 8-bit adder
  reg  [7:0] A8, B8;
  reg        CIN8;
  wire [7:0] SUM8;
  wire       COUT8;
  adder3 #(.N(8)) dut8 (A8, B8, CIN8, SUM8, COUT8);

  // 16-bit adder
  reg  [15:0] A16, B16;
  reg         CIN16;
  wire [15:0] SUM16;
  wire        COUT16;
  adder3 #(.N(16)) dut16 (A16, B16, CIN16, SUM16, COUT16);

  initial begin
    $dumpfile("adder3.vcd");
    $dumpvars(0, tb_adder3);

    $display("===== 8-bit adder (N = 8) =====");

    A8 = 8'd10;  B8 = 8'd20;  CIN8 = 0;
    $strobe("8-bit : %3d + %3d + %b  ->  COUT=%b SUM=%3d", A8, B8, CIN8, COUT8, SUM8);
    #10;
    A8 = 8'd100; B8 = 8'd27;  CIN8 = 1;
    $strobe("8-bit : %3d + %3d + %b  ->  COUT=%b SUM=%3d", A8, B8, CIN8, COUT8, SUM8);
    #10;
    A8 = 8'd200; B8 = 8'd100; CIN8 = 0;
    $strobe("8-bit : %3d + %3d + %b  ->  COUT=%b SUM=%3d", A8, B8, CIN8, COUT8, SUM8);
    #10;
    A8 = 8'd255; B8 = 8'd1;   CIN8 = 0;
    $strobe("8-bit : %3d + %3d + %b  ->  COUT=%b SUM=%3d", A8, B8, CIN8, COUT8, SUM8);
    #10;
    A8 = 8'd255; B8 = 8'd255; CIN8 = 1;
    $strobe("8-bit : %3d + %3d + %b  ->  COUT=%b SUM=%3d", A8, B8, CIN8, COUT8, SUM8);
    #10;

    $display("");
    $display("===== 16-bit adder (N = 16) =====");

    A16 = 16'd1000;  B16 = 16'd2000;  CIN16 = 0;
    $strobe("16-bit: %5d + %5d + %b  ->  COUT=%b SUM=%5d", A16, B16, CIN16, COUT16, SUM16);
    #10;
    A16 = 16'd30000; B16 = 16'd30000; CIN16 = 0;
    $strobe("16-bit: %5d + %5d + %b  ->  COUT=%b SUM=%5d", A16, B16, CIN16, COUT16, SUM16);
    #10;
    A16 = 16'd40000; B16 = 16'd30000; CIN16 = 0;
    $strobe("16-bit: %5d + %5d + %b  ->  COUT=%b SUM=%5d", A16, B16, CIN16, COUT16, SUM16);
    #10;
    A16 = 16'd65535; B16 = 16'd1;     CIN16 = 0;
    $strobe("16-bit: %5d + %5d + %b  ->  COUT=%b SUM=%5d", A16, B16, CIN16, COUT16, SUM16);
    #10;
    A16 = 16'd65535; B16 = 16'd65535; CIN16 = 1;
    $strobe("16-bit: %5d + %5d + %b  ->  COUT=%b SUM=%5d", A16, B16, CIN16, COUT16, SUM16);
    #10;

    $finish;
  end

endmodule
