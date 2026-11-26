// Code your testbench here
// or browse Examples

module tb;

wire a, b, c;

zero_delay_check dut();

initial begin
  $monitor("%t a=%b, b=%b, c=%b", $time, a, b, c);

  #10 $finish;
  
end

endmodule