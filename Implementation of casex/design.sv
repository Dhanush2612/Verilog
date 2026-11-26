// casex

module casex_example (
    input [1:0] sel,
    output reg y
);

    always @(*)
    begin
      
      casex (sel)
        
            2'b00: y = 1'b0;
            2'b01: y = 1'b1;
            2'b1x: y = 1'b0;
      
      endcase
   
    end

endmodule
