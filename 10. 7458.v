module top_module ( 
    input p1a, 
    input p1b, 
    input p1c, 
    input p1d, 
    input p1e, 
    input p1f,
    input p2a, 
    input p2b, 
    input p2c, 
    input p2d,
    output p1y,
    output p2y
);

    wire left_w1, left_w2, right_w1, right_w2;
    
    assign left_w1 = p2a && p2b;
    assign left_w2 = p2c && p2d;
    assign right_w1 = p1a && p1c && p1b;
    assign right_w2 = p1f && p1e && p1d;

    assign p2y = left_w1 || left_w2;
    assign p1y = right_w1 || right_w2;

endmodule