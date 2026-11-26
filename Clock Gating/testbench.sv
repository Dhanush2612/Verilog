// Code your testbench here
// or browse Examples

module tb;

    reg clk;
    reg enable;
    wire gated_clk;

    clock_gating uut (
        .clk(clk),
        .enable(enable),
        .gated_clk(gated_clk)
    );

    initial
   
      begin
       
        clk = 0;
        forever #5 clk = ~clk;
   
      end

    initial
  
      begin
        enable = 0;

        #20;
        enable = 1;

        #40;
        enable = 0;

        #20;
        $finish;
 
      end

    initial
   
      begin
       
        $monitor("Time=%0t clk=%b enable=%b gated_clk=%b", $time, clk, enable, gated_clk);
  
      end

endmodule