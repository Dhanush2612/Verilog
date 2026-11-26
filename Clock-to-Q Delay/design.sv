// C-to-Q Delay

module c_to_q (
    
  input clk,
  input d,  
  output reg q
  
);


  always @(posedge clk)

    begin
    
      q <= #3 d;

    end

endmodule