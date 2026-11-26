// Code your testbench here
// or browse Examples

module tb;

    integer start;
    integer finish;

    ascending uut (
        .start(start),
        .finish(finish)
    );

    initial
    begin
      
        start  = $urandom_range(1, 10);
        finish = $urandom_range(11, 20);

        #10;

        $finish;
 
    end

endmodule