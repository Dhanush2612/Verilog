// Code your design here

module genvar_example;

  genvar i;

  generate
    
    for (i = 0; i < 4; i = i + 1) begin
        
      initial
            
        $display("Instance = %0d", i);
    
    end

  endgenerate

endmodule