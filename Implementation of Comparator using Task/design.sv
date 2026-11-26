// Implementation of Comparator using Task

module task_comparator(
  
  input [3:0] a,
  input [3:0] b,
  
  output reg g,
  output reg e,
  output reg l
  
);
  
  task check_greater(input [3:0] x, input [3:0] y);
    
    begin
      
      if (x > y)
        begin
          
          g = 1;        
          e = 0;        
          l = 0;
          
        end          
    end
    
  endtask
  
  task check_equality(input [3:0] x, input [3:0] y);
    
    begin
      
      if (x == y)
        
        begin
                
          g = 0;        
          e = 1;        
          l = 0;
          
        end      
    end
    
  endtask
  
  task check_lesser(input [3:0] x, input [3:0] y);
    
    begin
      
      if (x < y)
        
        begin
          
          g = 0;        
          e = 0;        
          l = 1;
          
        end    
    end
    
  endtask
  
  always @(*)
    begin
      
      check_greater(a,b);
      
      check_equality(a,b);
      
      check_lesser(a,b);
      
    end
  
endmodule
    
    
  