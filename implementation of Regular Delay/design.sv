// Regular and intra-assignment Delay

module delay_demo(a, b, regular, intra);

input a, b;
output reg regular, intra;

always @(*) begin

  // Regular delay
  #10 regular = a + b;

  // Intra-assignment delay
  intra = #10 (a + b);

end

endmodule