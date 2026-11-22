module tb;

    reg clk;
    reg rst;
    reg up_down;
    wire [3:0] count;

    up_down_counter uut (
        .clk(clk),
        .rst(rst),
        .up_down(up_down),
        .count(count)
    );

    initial
    begin
        clk = 0;

        forever #5 clk = ~clk;
    end

    initial
    begin
        rst = 1;
        up_down = 1;

        #10;
        rst = 0;

        // Count UP
        #50;

        // Count DOWN
        up_down = 0;

        #50;

        $finish;
    end

    initial
    begin
       
      $monitor("Time=%0t rst=%b up_down=%b count=%b" $time, rst, up_down, count);
    
    end

endmodule