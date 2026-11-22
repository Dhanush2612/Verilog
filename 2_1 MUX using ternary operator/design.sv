// Implemenation of 2_1 mux uisng ternary operator

module mux_2_1(
  
    input a,
    input b,
    input sel,
    output y
  
);

assign y = (sel) ? b : a;

endmodule