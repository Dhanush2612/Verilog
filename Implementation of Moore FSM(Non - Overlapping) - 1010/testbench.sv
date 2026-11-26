module moore_1010_tb;
  
  reg in,clk,rst,out;
  reg[2:0] present,next;
  
  moore_1010 moore_1010_inst
  (
    .in(in),
    .clk(clk),
    .rst(rst),
    .out(out),
    .present(present),
    .next(next)
  );
  
  initial
    
    begin
      
      in = 1;
      clk = 0;
      #2 rst = 1;
      #9 rst = 0;
      #19 in = 0;
      #20 in = 1;
      #20 in = 0;
      
    end
  
  always #10 clk = ~clk;
  always #100 $finish;
  
  initial
    
    begin
      
      $monitor("IN = %d PS = %b NS = %b OUT = %d",in,present,next,out);
      
    end
  
endmodule