// Code your testbench here
// or browse Examples

module tb;

reg clk, reset;
wire [7:0] out;

fibonacci dut(clk, reset, out);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;

    #10 reset = 0;

    #100 $finish;
end

initial
    $monitor("Time=%0t Fibonacci=%0d", $time, out);

endmodule