// fullcase

module full_case_example (
    input [1:0] sel,
    output reg y
);

    always @(*)
   
      begin
        
        case (sel) // synopsys full_case
            2'b00: y = 1'b0;
            2'b01: y = 1'b1;
            2'b10: y = 1'b0;
            2'b11: y = 1'b1;
      
        endcase
    end

endmodule