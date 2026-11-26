// Code your testbench here
// or browse Examples

module tb;

    reg integer a;
    reg integer b;
    wire integer sum;

    sum_two uut (
        .a(a),
        .b(b),
        .sum(sum)
    );

    initial
    begin
        a = ($random % 100);
        b = ($random % 100);

        #10;

      
      $display("a = %0d, b = %0d, sum = %0d", a, b, sum);

        $finish;
    end

endmodule