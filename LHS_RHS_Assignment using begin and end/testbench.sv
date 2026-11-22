// Code your testbench here
// or browse Examples

module assignment_check_tb;

	reg [4:0] a, b;
	wire [4:0] c;
  
  assignment_check uut(.a(a), .b(b), .c(c));
  
  initial
	begin
      
    	$monitor("%t, a=%d, b=%d, c=%d", 
                 $time, a, b, c);

    #5 a = 1; 
    #5 b = 2; 

    #5 a = 2; 
    #5 b = 6; 

    $finish;
      
end

endmodule