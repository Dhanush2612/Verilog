// Code your testbench here
// or browse Examples

module tb;

reg a, b;
wire y;

nested_gate dut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin

    a = 0;
    b = 0;

    #10 a = 0;
         b = 1;

    #10 a = 1;
         b = 0;

    #10 a = 1;
         b = 1;

    #10 $finish;

end

endmodule