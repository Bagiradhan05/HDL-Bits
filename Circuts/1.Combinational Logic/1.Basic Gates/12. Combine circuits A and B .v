module top_module (input x, input y, output z);
    
    //A=((X^Y)&X)   B=~(X^Y)
    assign z=(((x^y)&x)|~(x^y))^(((x^y)&x)&~(x^y));

endmodule
