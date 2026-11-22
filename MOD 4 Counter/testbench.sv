// Code your testbench here
// or browse Examples

module tb;

    reg clk;
    reg rst;
    wire [1:0] count;

    mod4_counter uut (
        .clk(clk),
        .rst(rst),
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

        #10;
        rst = 0;

        #60;

        $finish;
    end

    initial
    begin
        
      $monitor("Time=%0t rst=%b count=%b",
                 $time, rst, count);
    end

endmodule