// LHS_RHS_Assignment using begin and end

module assignment_check(
  
    input [4:0] a,
    input [4:0] b,
    output reg [4:0] c
  
);

  always @(*)
    
      begin
    
    #5 c <= a + b;
      
      end

endmodule