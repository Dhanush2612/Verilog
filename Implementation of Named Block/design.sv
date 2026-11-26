// Named Block

module named_block(
  input [3:0] a,
  input [3:0] b,
  output reg [3:0] sum,
  output reg [3:0] diff
);

always @(*) begin : addition
  
    sum = a + b;
    $display("Addition = %0d", sum);
  
end

always @(*) begin : subtraction
  
    diff = a - b;
    $display("Subtraction = %0d", diff);
  
end

endmodule
