// Implementation of Clock Skew

module clock_skew (
   
  input clk,
  output reg clk1,
  output reg clk2

);

always @(clk)

  begin
 
    clk1 <= #2 clk;
    clk2 <= #5 clk;

  end

endmodule
