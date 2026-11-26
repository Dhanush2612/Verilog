// Code your testbench here
// or browse Examples

module tb;

  reg integer a [0:19];
    wire integer sum;

    integer i;

    sum_ten uut (
        .a(a),
        .sum(sum)
    );

    initial
    begin
     
      for (i = 0; i < 20; i = i + 1)
       
        begin
           
          a[i] = ($random % 100);
    
        end

        #10;
       
      $display("Sum of 20 numbers = %0d", sum);

        $finish;
    end

endmodule