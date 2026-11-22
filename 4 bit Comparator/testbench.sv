module tb;

  reg [3:0] a, b;
  wire g, e, l;


  comparator uut (
    .a(a),
    .b(b),
    .g(g),
    .e(e),
    .l(l)
);


  initial

    begin
    
      $monitor("%t a=%0d b=%0d g=%b e=%b l=%b",
             $time, a, b, g, e, l);

        a = 4'd6;
        b = 4'd2;

    #10 a = 4'd8;
        b = 4'd8;

    #10 a = 4'd2;
        b = 4'd9;

    #10 $finish;

    end

endmodule