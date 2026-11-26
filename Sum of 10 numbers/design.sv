// Sum of 10 numbers

module sum_ten (
    input integer a [0:9],
    output reg integer sum
);

    integer i;

    always @(*)
    begin
      
      sum = 0;

       
      for (i = 0; i < 10; i = i + 1)
      
        begin
           
          sum = sum + a[i];
       
        end
    end

endmodule


        
      
      