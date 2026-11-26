// Code your testbench here
// or browse Examples

module tb;


  reg clk, d;
  wire q;


  c_to_q dut(clk, d, q);


  initial
    begin
    
      clk = 0;
      
      forever 
        #5 clk = ~clk;

    end

  initial

    begin
    
      d = 0;

    
      #7 d = 1;
      #10 d = 0;
      #10 d = 1;
      #20 $finish;

    end

  initial
    
    $monitor("time=%0t clk=%b d=%b q=%b",
             $time, clk, d, q);

endmodule