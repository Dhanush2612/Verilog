// T Flipflop 

module t_ff(
  
    input t,
    input clk,
    input reset,
    output reg q
  
);

always @(posedge clk)
  
  begin
  
    if (reset)
        q <= 0;
  
    else if (t)
        q <= ~q;
  
    else
        q <= q;
    
  end

endmodule