// Code your testbench here
// or browse Examples

module tb;

reg a, b, bin;
wire diff, borrow;

full_subtractor uut(a, b, bin, diff, borrow);

initial
  begin
    
    $monitor("%t a=%b b=%b bin=%b diff=%b borrow=%b", $time, a, b, bin, diff, borrow);

        a = 0; b = 0; bin = 0;
    #10 a = 0; b = 0; bin = 1;
    #10 a = 0; b = 1; bin = 0;
    #10 a = 0; b = 1; bin = 1;
    #10 a = 1; b = 0; bin = 0;
    #10 a = 1; b = 0; bin = 1;
    #10 a = 1; b = 1; bin = 0;
    #10 a = 1; b = 1; bin = 1;
    #10 $finish;
end

endmodule
