module comparator_2bit(
    input  [1:0] A,
    input  [1:0] B,
    output GT,
    output EQ,
    output LT
);

assign GT = (A > B);
assign EQ = (A == B);
assign LT = (A < B);

endmodule