// Implementation of event

module event_example (
    input trigger,
    output reg done
);

    event e;

    always @(posedge trigger)
 
      begin
      
        -> e;
 
      end

    always @(e)
 
      begin
      
      done = 1'b1;
      #5 done = 1'b0;
 
    end

endmodule
