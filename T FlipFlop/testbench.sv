// Code your testbench here
// or browse Examples

module tb;
  
  reg t, clk, reset;
  wire q;

t_ff uut(t, clk, reset, q);

initial
  begin
    
    $monitor("%t t=%b clk=%b reset=%b q=%b", $time, t, clk, reset, q);

    t = 0;
    clk = 0;
    reset = 1;

    // Reset
    #10 clk = 1;
    #10 clk = 0;

    // Release reset
    reset = 0;

    // T = 1 → Toggle
    t = 1;
    #10 clk = 1;
    #10 clk = 0;

    // T = 1 → Toggle again
    #10 clk = 1;
    #10 clk = 0;

    // T = 0 → Hold
    t = 0;
    #10 clk = 1;
    #10 clk = 0;

    #10 $finish;
    
  end
  
endmodule
    
