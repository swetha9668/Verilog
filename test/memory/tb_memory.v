module tb_memory_operations;
    memory_operations dut();

    initial begin
        $dumpfile("memory_operations.vcd");
        $dumpvars(0, tb_memory_operations);
    end

    initial begin
        #10;
        $display("Testbench completed");
        $finish;
    end

endmodule
