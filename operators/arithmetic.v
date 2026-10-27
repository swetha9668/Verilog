module arithmetic (
    input  [3:0] a, b,
    output [4:0] add,
    output [3:0] sub,
    output [7:0] mul,
    output [3:0] div, mod
);
    assign add = a + b;
    assign sub = a - b;
    assign mul = a * b;
    assign div = a / b;
    assign mod = a % b;
endmodule
