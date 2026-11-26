// Code your testbench here
// or browse Examples

module tb;

    reg [2:0] sel;
    wire y;

    casez_example uut (
        .sel(sel),
        .y(y)
    );

    initial
    begin
        sel = 3'b000;
        #10;

        sel = 3'b001;
        #10;

        sel = 3'b100;
        #10;

        sel = 3'b101;
        #10;

        sel = 3'b110;
        #10;

        sel = 3'b111;
        #10;

        sel = 3'b1z0;
        #10;

        sel = 3'b1?1;
        #10;

        $finish;
    end

    initial
    begin
     
      $monitor("Time=%0t sel=%b y=%b",
                 $time, sel, y);
    end

endmodule