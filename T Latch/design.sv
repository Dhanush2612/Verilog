// T Latch

module t_latch (
    input t,
    input en,
    input rst,
    output reg q
);

    always @(en or t or rst)
 
      begin
       
        if (rst)
            q <= 1'b0;
       
        else if (en)
        
          begin
           
            if (t)
                q <= ~q;
            else
                q <= q;
       
          end
    end

endmodule

