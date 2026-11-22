// Code your testbench here
// or browse Examples

module tb;
  
  reg a, b, sel;
  wire y;

mux_2_1 uut(a, b, sel, y);

initial
  
  begin
    
    $monitor("%t a=%b b=%b sel=%b y=%b",
              $time, a, b, sel, y);

        a = 0; b = 0; sel = 0;
    #10 a = 0; b = 1; sel = 0;
    #10 a = 1; b = 0; sel = 1;
    #10 a = 1; b = 1; sel = 1;
    
    #10 $finish;

end

endmodule
