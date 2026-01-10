module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    wire [7:0]x,y,z;
    assign x=(a<b)?a:b;
    assign y=(c<x)?c:x;
    assign z=(d<y)?d:y;
    assign min=z;

endmodule
