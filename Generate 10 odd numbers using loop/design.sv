// Odd numbers uaibg for loop

module odd_numbers();

	integer i;
  
  initial
    
    begin
      
      for(i = 0; i < 10; i = i + 1)
        
        $display("%0d", (i*2)+1);
    
    end

endmodule