// Clock Gating

module clock_gating (
 
  input clk,
  input enable,
  output reg gated_clk

);

    always @(*)
    
      begin
        
        if (enable)
            gated_clk = clk;
        else
            gated_clk = 1'b0;
   
      end

endmodule
