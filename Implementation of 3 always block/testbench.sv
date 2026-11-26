// Code your testbench here
// or browse Examples

module tb;

reg a, b;
wire y1, y2, y3;

three_always dut (
    .a(a),
    .b(b),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial
begin
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