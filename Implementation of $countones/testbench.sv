// Code your testbench here
// or browse Examples

module tb;

    reg [7:0] data;
    wire [3:0] count;

    count_ones uut (
        .data(data),
        .count(count)
    );

    initial
    begin
        data = 8'b10110101;
        #10;
   
      $display("Data = %b, Number of 1s = %0d", data, count);

        data = 8'b11111111;
        #10;

        $display("Data = %b, Number of 1s = %0d", data, count);

        data = 8'b00000000;
        #10;

      $display("Data = %b, Number of 1s = %0d", data, count);

        $finish;
    end

endmodule