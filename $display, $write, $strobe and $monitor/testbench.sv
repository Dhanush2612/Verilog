// Code your testbench here
// or browse Examples

module tb;


  reg a, b;
  wire y;


  simple_design dut(a, b, y);


  initial

    begin
    
      $monitor("a=%b b=%b y=%b", a, b, y);

          a = 0; b = 0;
      #10 a = 1; b = 0;
      #10 a = 1; b = 1;
      #10 a = 0; b = 1;

    
      #10 $display("Display: a=%b b=%b y=%b", a, b, y);
    
          $write("Write: a=%b b=%b y=%b\n", a, b, y);
    
          $strobe("Strobe: a=%b b=%b y=%b", a, b, y);

      #10 $finish;
      
    end

endmodule