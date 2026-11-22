// Implementation of Half Subtractor 

module half_subtractor(a, b, diff, borrow);

input a;
input b;

output reg diff;
output reg borrow;

// Behavioral modeling
  
  always @ (*)
    begin
      
      // Difference
    diff = a ^ b;

    // Borrow
    borrow = ~a & b;
      
    end

endmodule