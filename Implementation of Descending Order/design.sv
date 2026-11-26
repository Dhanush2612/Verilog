// Implementation of Descending Order 

module descending (
    input integer start,
    input integer finish
);

    integer i;

    initial
 
      begin
      
        for (i = start; i >= finish; i = i - 1)
       
          begin
         
            $display("Descending: %0d", i);
       
          end
    end

endmodule
