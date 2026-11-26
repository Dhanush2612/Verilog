// Code your testbench here
// or browse Examples

module tb;

    reg integer n;
    reg integer a [0:99];
    wire integer sum;

    integer i;

    sum_n uut (
        .n(n),
        .a(a),
        .sum(sum)
    );

    initial
    begin
        n = ($random % 20) + 1;

        for (i = 0; i < n; i = i + 1)
        begin
            a[i] = ($random % 100);
        end

        #10;

        $display("N = %0d", n);
        $display("Sum = %0d", sum);

        $finish;
    end

endmodule