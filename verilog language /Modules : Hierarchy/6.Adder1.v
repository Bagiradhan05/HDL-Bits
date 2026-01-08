module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire x;//connection of add16_1 and add16_2
    add16 uut1(a[15:0],b[15:0],0,sum[15:0],x);
    add16 uut2(a[31:16],b[31:16],x,sum[31:16]);
        
        
endmodule
