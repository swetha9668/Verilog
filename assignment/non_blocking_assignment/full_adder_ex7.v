module full_adder_ex7 (a, b, cin, sum, cout);

    input a, b, cin;
    output reg sum, cout;

    always @(*) begin
        sum  <= a ^ b ^ cin;
        cout <= (a & b) | (b & cin) | (a & cin);
    end

endmodule
