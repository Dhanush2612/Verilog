// Implementation of Ascending order 

module ascending (
    input integer start,
    input integer finish
);

    integer i;

    initial
 
      begin
       
        for (i = start; i <= finish; i = i + 1)
       
          begin
            
            $display("Ascending: %0d", i);
       
          end
    end

endmodule
