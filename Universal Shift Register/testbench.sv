module tb;

    reg clk;
    reg rst;
    reg [1:0] sel;
    reg [3:0] parallel_in;
    reg serial_left;
    reg serial_right;

    wire [3:0] q;

    universal_shift_register dut (
        .clk(clk),
        .rst(rst),
        .sel(sel),
        .parallel_in(parallel_in),
        .serial_left(serial_left),
        .serial_right(serial_right),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin

        rst = 1;
        sel = 2'b00;
        parallel_in = 4'b0000;
        serial_left = 0;
        serial_right = 0;

        #10;

        rst = 0;

        // Parallel load 1010
        sel = 2'b11;
        parallel_in = 4'b1010;

        #10;

        // Hold
        sel = 2'b00;

        #10;

        // Shift right
        sel = 2'b01;
        serial_right = 1;

        #10;

        serial_right = 0;

        #10;

        // Shift left
        sel = 2'b10;
        serial_left = 1;

        #10;

        serial_left = 0;

        #10;

        $finish;

    end

    always @(posedge clk) 
      begin
        
        $display("time=%0t sel=%b parallel_in=%b q=%b",
                 $time, sel, parallel_in, q);
    end

endmodule