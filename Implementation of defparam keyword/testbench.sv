// Code your testbench here
// or browse Examples

module defpara_tb;

  reg [31:0] a;
  reg [31:0] b;
  wire c;
  
  defpara a1(a, b, c);
  
  defparam a1.WIDTH = 32;
  
  	initial
    	begin
      
    		$display("a1.WIDTH = %0d", a1.WIDTH);

    	end

endmodule