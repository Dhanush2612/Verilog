// Code your testbench here
// or browse Examples

module tb;

    reg clk;
    reg rst;
    reg din;

    wire detected;

    moore_1010_onehot dut (
        .clk(clk),
        .rst(rst),
        .din(din),
        .detected(detected)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin

        rst = 1;
        din = 0;

        #10;

        rst = 0;

        // 1010
        din = 1;
        #10;

        din = 0;
        #10;

        din = 1;
        #10;

        din = 0;
        #10;

        // Another 1010
        din = 1;
        #10;

        din = 0;
        #10;

        din = 1;
        #10;

        din = 0;
        #10;

        $finish;

    end

    always @(posedge clk) begin
        $display("time=%0t din=%b state=%b detected=%b",
                 $time, din, dut.state, detected);
    end

endmodule