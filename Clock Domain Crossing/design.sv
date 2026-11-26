// Implementation of Clock Domain Crossing

module cdc_sync (
    input clk1,
    input clk2,
    input rst,
    input async_in,
    output reg sync_out
);

    reg sync_ff1;

    always @(posedge clk2 or posedge rst)
   
      begin
       
        if (rst)
      
          begin
          
            sync_ff1 <= 1'b0;
            sync_out <= 1'b0;
      
          end
    
        else
     
          begin
        
            sync_ff1 <= async_in;
            sync_out <= sync_ff1;
       
          end
    end

endmodule