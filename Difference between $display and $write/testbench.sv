// Code your testbench here
// or browse Examples

module tb;


  reg a, b;
  wire y;

  simple_design dut(a, b, y);

  initial

    begin
    
          a = 0; b = 0;    
      #10 a = 0; b = 1;   
      #10 a = 1; b = 0;    
      #10 a = 1; b = 1;    
      #10 $finish;

    end

  initial
    begin
    
      $display("Using display:");
      $display("a=%b b=%b y=%b", a, b, y);
    
      #10    
      $display("a=%b b=%b y=%b", a, b, y);
    
      #10    
      $write("Using write: ");    
      $write("a=%b b=%b y=%b", a, b, y);    
      $write("\n");

    
      #10    
      $write("a=%b b=%b y=%b", a, b, y);    
      $write("\n");

    end

endmodule