// Level sensitive timing control

module level_sensitive (
    input enable,
    input data,
    output reg q
);

    always
    begin
       
      wait (enable == 1);
      
      q = data;      
      #1;
  
    end

endmodule
