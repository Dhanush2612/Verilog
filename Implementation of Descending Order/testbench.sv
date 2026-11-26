module tb;

    integer start;
    integer finish;

    descending uut (
        .start(start),
        .finish(finish)
    );

    initial
    begin
       
      start  = $urandom_range(11, 20);
      finish = $urandom_range(1, 10);

        #10;

        $finish;
   
    end

endmodule