// sum of 20 numbers

module sum_twenty (
  input integer a [0:19],
    output reg integer sum
);

    integer i;

    always @(*)
   
      begin
       
        sum = 0;

        for (i = 0; i < 20; i = i + 1)
   
          begin
            
            sum = sum + a[i];
     
          end
    end

endmodule