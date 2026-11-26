// Code your testbench here
// or browse Examples

module tb;

    reg clk;
    reg rst;
    wire out;

    f_by_3 uut (
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    initial
   
      begin
       
        clk = 0;
        forever #5 clk = ~clk;
    
      end

    initial
   
      begin
        rst = 1;

        #10;
        rst = 0;

        #200;

        $finish;
    end

    initial
  
      begin
        
        $monitor("Time=%0t rst=%b count=%b out=%b", $time, rst, uut.count, out);
  
      end

endmodule