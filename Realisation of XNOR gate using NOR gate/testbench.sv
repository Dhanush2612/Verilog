// Code your testbench here
// or browse Examples

module tb;

reg a, b;
wire y;

xnor_nor uut(a, b, y);

initial
  
  begin
    
    $monitor("%t a=%b b=%b y=%b", 
             $time, a, b, y);

        a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 $finish;

end

endmodule