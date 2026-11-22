// Code your testbench here
// or browse Examples

module tb;

reg a, b;
wire p, q, r, s;

decoder uut(a, b, p, q, r, s);

initial
  begin
    
    $monitor("%0t a=%b b=%b p=%b q=%b r=%b s=%b", $time, a, b, p, q, r, s);

        a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 $finish;
    
end

endmodule