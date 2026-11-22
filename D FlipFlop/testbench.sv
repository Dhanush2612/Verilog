// Code your testbench here
// or browse Examples

module tb;

reg d, clk, rst;
wire q;

d_ff uut(d, clk, rst, q);

always #5 clk = ~clk;

initial

  begin
    
    clk = 0;
    rst = 1; d = 0;
    #10 rst = 0;
    #10 d = 1;
    #10 d = 0;
    #10 rst = 1;
    #10 $finish;

  end

endmodule