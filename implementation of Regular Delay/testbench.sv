// Code your testbench here
// or browse Examples

module tb;

reg a, b;
wire regular, intra;

delay_demo dut(a, b, regular, intra);

initial begin

  a = 0; b = 0;

  #5  a = 1;
  #5  b = 1;
  #10 a = 0;
  #10 b = 0;

  #20 $finish;

end

initial begin

  $monitor("%t a=%b b=%b regular=%b intra=%b",
            $time, a, b, regular, intra);

end

endmodule