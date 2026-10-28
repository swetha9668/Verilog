module swap_ex5;
    reg [3:0] x, y, temp;

    initial begin
        x = 3;
        y = 8;
        temp = x;
        x = y;
        y = temp;
        $display("x=%d y=%d", x, y);
    end
endmodule
