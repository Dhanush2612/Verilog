// LHS_RHS_Assignment using fork and join

module assignment_checkp(
  
    input [4:0] a,
    input [4:0] b,
    output reg [4:0] c
  
);

  always @(*)
    
      begin
    
    #5 c <= a + b;
      
      end

endmodule