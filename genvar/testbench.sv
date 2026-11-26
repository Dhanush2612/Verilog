// Code your testbench here
// or browse Examples

module specify_example(
    input a,
    input b,
    output y
);

assign y = a & b;

specify
  
    (a *> y) = 2;
    (b *> y) = 2;
  
endspecify

endmodule