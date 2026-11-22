// Code your testbench here
// or browse Examples

module tb;

	reg s, r, clk;
	wire q;

sr uut(
    .s(s),
    .r(r),
    .clk(clk),
    .q(q)
);

initial
	begin
      
      clk = 0;
      forever #5 clk = ~clk;
      
    end
      
  initial begin
    
    #10 s = 0; r = 1;
    #10 s = 1; r = 0;
    #10 s = 0; r = 0;
    #10 s = 1; r = 1;
    #10 s = 0; r = 0;

    #10 $finish;

  end

  initial
    begin
    
      $monitor("%t S=%b R=%b CLK=%b Q=%b", $time, s, r, clk, q);

    end

endmodule
    
  