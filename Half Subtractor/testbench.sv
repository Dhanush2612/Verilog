// Code your testbench here
// or browse Examples

module tb;
  
  reg a, b;
  wire diff, borrow;

half_subtractor uut(a, b, diff, borrow);

initial
  begin
    
    $monitor("%t a=%b b=%b diff=%b borrow=%b", $time, a, b, diff, borrow);

        a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 $finish;
    
end

endmodule