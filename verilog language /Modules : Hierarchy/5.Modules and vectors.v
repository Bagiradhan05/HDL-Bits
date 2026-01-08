module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire[7:0] x,y,z;
        my_dff8 uut1(
        .clk(clk),
        .d(d),
        .q(x));
        my_dff8 uut2(
        .clk(clk),
        .d(x),
        .q(y));
        my_dff8 uut3(
        .clk(clk),
        .d(y),
        .q(z));
    always@(*)begin
        case(sel)
            0:q=d;
            1:q=x;
            2:q=y;
            3:q=z;
            endcase
    end

endmodule
