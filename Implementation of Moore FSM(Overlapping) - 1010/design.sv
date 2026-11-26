// Moore overlapping for sequence 1010

module moore_1010
  (
    input reg in,clk,rst,
    output reg out,reg[2:0] present,next
  );
  
  parameter [2:0] s0 = 3'b000,
                  s1 = 3'b001,
                  s2 = 3'b010,
                  s3 = 3'b011,
                  s4 = 3'b100;
  
  always@(posedge clk,posedge rst)
    
    begin
      
      if(rst == 1)
        
        present <= s0;
      
      else
          
        present <= next;
      
    end
  
  always@(present,in)
    
    begin
      
      case(present)
        
        s0: begin
            
            if(in == 1)
              
              next = s1;
            
            else
              
              next = s0;
              
          end
        
        s1: begin
            
            if(in == 0)
              
              next = s2;
            
            else
              
              next = s1;
              
          end
        
        s2: begin
            
            if(in == 1)
              
              next = s3;
            
            else
              
              next = s0;
              
          end
        
        s3: begin
            
            if(in == 0)
              
              next = s4;
            
            else
              
              next = s1;
              
          end
        
        s4: begin
            
            if(in == 1)
              
              next = s3;
            
            else
              
              next = s0;
              
          end
        
      endcase
      
    end
  
  always@(present)
    
    begin
      
      case(present)
        
        s0: out = 0;
        s1: out = 0;
        s2: out = 0;
        s3: out = 0;
        s4: out = 1;
        
      endcase
      
    end
  
endmodule