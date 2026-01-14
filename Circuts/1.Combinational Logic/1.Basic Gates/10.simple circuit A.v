module top_module (input x, input y, output z);
    
    assign z=x&~y;//reduction of z= (x^y)&y

endmodule
