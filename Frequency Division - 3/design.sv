// F/3 Frequency Division 

module f_by_3 (
    input clk,
    input rst,
    output reg out
);

    reg [1:0] count;

    always @(posedge clk or posedge rst)
  
      begin
       
        if (rst)        
          begin
            
            count <= 2'b00;
            out   <= 1'b0;
      
          end
       
        else
       
          begin
            
            if (count == 2)
                count <= 2'b00;
           
            else
                count <= count + 1;

           
            if (count == 2)
                out <= ~out;
        end
    end

endmodule
