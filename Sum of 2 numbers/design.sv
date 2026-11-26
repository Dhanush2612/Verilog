// sum of 2 numbers

module sum_two (
    input integer a,
    input integer b,
    output reg integer sum
);

    always @(*)
   
      begin
     
        sum = a + b;
        
    end

endmodule
