module tb;

    reg clk1;
    reg clk2;
    reg rst;
    reg async_in;
    wire sync_out;

    cdc_sync uut (
        .clk1(clk1),
        .clk2(clk2),
        .rst(rst),
        .async_in(async_in),
        .sync_out(sync_out)
    );

    // Source clock
    initial
 
      begin
      
        clk1 = 0;

        forever #7 clk1 = ~clk1;
  
      end

    // Destination clock
    initial
  
      begin
        clk2 = 0;

        forever #5 clk2 = ~clk2;
  
      end

    initial
  
      begin
        rst = 1;
        async_in = 0;

        #10;
        rst = 0;

        #12;
        async_in = 1;

        #25;
        async_in = 0;

        #20;
        async_in = 1;

        #30;
        async_in = 0;

        #20;
        $finish;
 
      end

    initial
  
      begin
       
        $monitor("Time=%0t clk1=%b clk2=%b rst=%b async_in=%b sync_out=%b", $time, clk1, clk2, rst, async_in, sync_out);
  
      end

endmodule