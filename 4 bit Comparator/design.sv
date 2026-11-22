module comparator (
    
  input  [3:0] a, 
  input  [3:0] b,
  output reg g,
  output reg e,
  output reg l
);

  always @(*)
  
    begin
    
    if (a > b)
      begin
        
        g = 1;
        e = 0;
        l = 0;
    
      end

    else if (a < b)
    
      begin
        
        g = 0;
        e = 0;
        l = 1;
    
      end

    else      
    
      begin
        
        g = 0;
        e = 1;
        l = 0;
    
      end
end

endmodule