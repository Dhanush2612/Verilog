// Code your testbench here
// or browse Examples

module tb;

    reg clk;
    reg rst;
    wire q;

    force_release_example uut (
        .clk(clk),
        .rst(rst),
        .q(q)
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

        #20;

        // Force q to 1
        force uut.q = 1'b1;

        #20;

        // Release q
        release uut.q;

        #30;

        $finish;
  
      end

    initial
   
      begin
       
        $monitor("Time=%0t rst=%b q=%b",
                 $time, rst, q);
   
      end

endmodule