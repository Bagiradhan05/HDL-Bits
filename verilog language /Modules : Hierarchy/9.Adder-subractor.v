module top_module(
    input  [31:0] a,
    input  [31:0] b,
    input         sub,
    output [31:0] sum
);
    wire carry;
    wire [31:0] y;

    assign y = b ^ {32{sub}};   // XOR every bit with 'sub'

    add16 uut1(a[15:0], y[15:0], sub,   sum[15:0], carry);
    add16 uut2(a[31:16], y[31:16], carry, sum[31:16]);

endmodule
