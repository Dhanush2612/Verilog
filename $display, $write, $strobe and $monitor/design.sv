// $display, $write, $strobe and $monitor

module simple_design (
    input a, b,
    output y
);

  assign y = a & b;

endmodule