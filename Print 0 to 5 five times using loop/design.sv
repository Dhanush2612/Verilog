// Print 0 to 5 five times

module print_0_to_5;

integer i;

  initial
    
    begin
      
      for(i = 0; i <= 5; i = i + 1)
        
        begin
          
          repeat(5)
            
            $display("%0d", i);
          
        end
      
    end
  
endmodule
   
