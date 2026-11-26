module tb;

    reg clk;
    wire clk1;
    wire clk2;

    clock_skew uut (
        .clk(clk),
        .clk1(clk1),
        .clk2(clk2)
    );

    initial
    begin
        clk = 0;

        forever #10 clk = ~clk;
    end

    initial
    begin
        $monitor("Time=%0t clk=%b clk1=%b clk2=%b",
                 $time, clk, clk1, clk2);

        #100;
        $finish;
    end

endmodule