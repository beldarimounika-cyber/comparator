`timescale 1ns/1ps

module comparator_2bit_tb;

reg [1:0] A;
reg [1:0] B;

wire GT;
wire EQ;
wire LT;

comparator_2bit uut (
    .A(A),
    .B(B),
    .GT(GT),
    .EQ(EQ),
    .LT(LT)
);

initial begin

    $dumpfile("comparator.vcd");
    $dumpvars(0, comparator_2bit_tb);

    A=2'b00; B=2'b00; #10;
    A=2'b00; B=2'b01; #10;
    A=2'b01; B=2'b00; #10;
    A=2'b01; B=2'b01; #10;
    A=2'b10; B=2'b11; #10;
    A=2'b11; B=2'b10; #10;
    A=2'b11; B=2'b11; #10;

    $finish;

end

endmodule