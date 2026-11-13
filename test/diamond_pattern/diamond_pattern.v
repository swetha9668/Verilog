module diamond_pattern;
    integer i, j, s;

    initial begin

        for (i = 1; i <= 5; i = i + 1) begin
            for (s = 0; s < 5 - i; s = s + 1)   
                $write(" ");
            for (j = 0; j < i; j = j + 1)         
                $write("%0d ", i);
            $display("");                      
        end

     
        for (i = 4; i >= 1; i = i - 1) begin
            for (s = 0; s < 5 - i; s = s + 1)   
                $write(" ");
            for (j = 0; j < i; j = j + 1)     
	      	    $write("%0d ", i);
            $display("");                       
        end

        $finish;
    end
endmodule
