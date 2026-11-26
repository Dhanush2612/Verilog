// #0

module zero_delay_check;

reg a, b, c;

initial begin
  #0 a = 1;
  #0 b = 1;
  #0 c = 1;
  $display("With zero delay: a=%b, b=%b, c=%b", a, b, c);
end

initial begin
  a = 0;
  b = 0;
  c = 0;
  $display("Without zero delay: a=%b, b=%b, c=%b", a, b, c);
end

endmodule