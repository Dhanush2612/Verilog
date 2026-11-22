// Code your testbench here
// or browse Examples

module tb;

    reg d;
    reg en;
    reg rst;
    wire q;

    d_latch uut (
        .d(d),
        .en(en),
        .rst(rst),
        .q(q)
    );

    initial
    begin
        rst = 1;
        en = 0;
        d = 0;

        #10;
        rst = 0;

        en = 1;
        d = 1;
        #10;

        d = 0;
        #10;

        en = 0;
        d = 1;
        #10;

        en = 1;
        #10;

        rst = 1;
        #10;

        $finish;
    end

    initial
    begin
      
       
      $monitor("Time=%0t rst=%b en=%b d=%b q=%b", $time, rst, en, d, q);
   
    end

endmodule