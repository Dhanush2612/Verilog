// D Latch

module d_latch (
    input d,
    input en,
    input rst,
    output reg q
);

  
  always @(en or d or rst)
 
    begin
  
      if (rst)
        
        q <= 1'b0;
      
      else if (en)
           
        q <= d;
  
    end

endmodule
