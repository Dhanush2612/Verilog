// Code your testbench here
// or browse Examples

module tb;
  
  reg [3:0] a, b;
  
  wire g, e, l;
  
  task_comparator uut(
    
    .a(a),
    .b(b),
    .g(g),
    .e(e),
    .l(l)
    
  );
  
  integer i;
  
  initial begin
    
    for (i = 0; i < 5; i = i + 1) 
      begin  
   
      
        a = $urandom_range(0,15);            
        b = $urandom_range(0,15);      
        
        #1;
           
        $display("time = %0t | a = %0d | b = %0d | g = %b | e = %b | l = %b",            
                 $time, a, b, g, e, l);
    
    end
    
  end
  
endmodule
  
  