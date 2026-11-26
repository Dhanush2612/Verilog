// Implementation of countones

module count_ones (
    input [7:0] data,
    output reg [3:0] count
);

    always @(*)

      begin
       
        count = $countones(data);
    
      end

endmodule
