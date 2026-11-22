// Code your testbench here
// or browse Examples

module tb();
  
  reg [7:0] i;
  reg [2:0] s;
  wire y;
  
  mux_8_1 uut(i, s , y);
  
   initial begin
     
     $monitor("%t i=%b s=%b y=%b", 
              $time, i, s, y);
     
         i = 8'b00000001; s = 3'b000;
     #10 i = 8'b00000010; s = 3'b001;
     #10 i = 8'b00000100; s = 3'b010;
     #10 i = 8'b00001000; s = 3'b011;
     #10 i = 8'b00010000; s = 3'b100;
     #10 i = 8'b00100000; s = 3'b101;
     #10 i = 8'b01000000; s = 3'b110;
     #10 i = 8'b10000000; s = 3'b111;
     #10 $finish;

     
   end
endmodule
              
  
    