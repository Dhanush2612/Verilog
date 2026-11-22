// Code your testbench here
// or browse Examples

module tb;

	reg [4:0] a, b;
	wire [4:0] c;
  
  assignment_checkp uut(.a(a), .b(b), .c(c));
  
  initial
	begin
      
    	$monitor("%t, a=%d, b=%d, c=%d", 
                 $time, a, b, c);
      
      begin
        fork

    	#5 a = 1; 
    	#5 b = 2; 

    	#5 a = 2; 
    	#5 b = 6; 

          
        join
        
        #10 $finish;
        
      end
      
    end

endmodule