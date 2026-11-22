// Implementation of defparam keyword

module defpara #(parameter WIDTH = 6)
(
    input  [WIDTH-1:0] a,
    input  [WIDTH-1:0] b,
    output c
);

assign c = a + b;

endmodule