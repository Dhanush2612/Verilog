// Code your testbench here
// or browse Examples

module tb;

reg enable, data;
wire q;

level_sensitive uut(enable, data, q);

initial

  begin
   
    enable = 0;
    data = 0;

    #10 data = 1;
    #10 enable = 1;
    #10 enable = 0;
    #10 $finish;

  end

initial
    
  $monitor("Time=%0t enable=%b data=%b q=%b", $time, enable, data, q);

endmodule