// Code your testbench here
// or browse Examples

module tb;

  reg [3:0] a, b;
  wire [3:0] sum, diff;

named_block dut (
    .a(a),
    .b(b),
    .sum(sum),
    .diff(diff)
);

initial begin
    a = 5;
    b = 2;

    #10 a = 8;
        b = 3;

    #10 a = 6;
        b = 4;

    #10 $finish;
end

endmodule
