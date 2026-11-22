// Implementation of Full Subtractor

module full_subtractor(a, b, bin, diff, borrow);

input a;
input b;
input bin;

output reg diff;
output reg borrow;

//Behavioral Modeling
  
  always @ (*)
    begin
      
      //Difference
    diff   = a ^ b ^ bin;
      
      //Borrow
  borrow = (~a & b) | (bin) & (a ^ b);
      
    end
  
endmodule
      
