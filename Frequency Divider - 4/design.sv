// F/4 Frequency Divider

module f_by_4 (
    input clk,
    input rst,
    output reg q2
);

    reg q1;

    always @(posedge clk or posedge rst)
    
      begin
       
        if (rst)
            q1 <= 1'b0;
        else
            q1 <= ~q1;
    end

    always @(posedge q1 or posedge rst)
   
      begin
        if (rst)
            q2 <= 1'b0;
        else
            q2 <= ~q2;
  
      end

endmodule