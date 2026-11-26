// Code your testbench here
// or browse Examples

module tb;

    reg [1:0] sel;
    wire y;

    casex_example uut (
        .sel(sel),
        .y(y)
    );

    initial
    begin
        
        sel = 2'b00;
        #10;

        sel = 2'b01;
        #10;

        sel = 2'b10;
        #10;

        sel = 2'b11;
        #10;

        // X in input
        sel = 2'b1x;
        #10;

        // Z in input
        sel = 2'b1z;
        #10;

        $finish;
    end

    initial
    begin
      
      $monitor("Time=%0t sel=%b y=%b",
                 $time, sel, y);
    end

endmodule