// Code your testbench here
// or browse Examples

module tb;

reg a, b;
wire y;

specify_example dut(a, b, y);

initial begin

    a = 0; b = 0;
    #10 a = 1;
    #10 b = 1;
    #10 a = 0;
    #10 b = 0;

    #10 $finish;

end

initial
    $monitor("Time = %0t  a=%b b=%b y=%b", $time, a, b, y);

endmodule