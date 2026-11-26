module tb;

    reg clk;
    reg rst;
    wire q2;

    f_by_4 uut (
        .clk(clk),
        .rst(rst),
        .q2(q2)
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

        #100;

      $finish;
    end

    initial
    begin
        
      $monitor("Time=%0t rst=%b q1=%b q2=%b", $time, rst, uut.q1, q2);
  
    end

endmodule