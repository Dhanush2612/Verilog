// casez

module casez_example (
    input [2:0] sel,
    output reg y
);

    always @(*)
   
      begin
        
        casez (sel)
          
          3'b000: y = 1'b0;           
          3'b001: y = 1'b1;          
          3'b1z?: y = 1'b0;
      
        endcase
    end

endmodule
