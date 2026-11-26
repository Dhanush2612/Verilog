// Sum of N numbers

module sum_n (
    input integer n,
    input integer a [0:99],
    output reg integer sum
);

    integer i;

    always @(*)
  
      begin
     
        sum = 0;

        for (i = 0; i < n; i = i + 1)
      
          begin
           
            sum = sum + a[i];
   
          end
    end

endmodule
