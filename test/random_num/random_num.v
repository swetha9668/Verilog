module random_num;
  integer i;
  integer r;

  initial begin
    for (i = 0; i < 10; i = i + 1) begin
      r = ($urandom % 201) - 100;   
      $display("i=%0d  r=%0d", i, r);
    end
    $finish;
  end
endmodule
