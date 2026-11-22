// Code your testbench here
// or browse Examples

module tb;

reg t, en, rst;
wire q;

t_latch uut(t, en, rst, q);

initial
begin
  
    rst = 1; en = 0; t = 0;
    #10 rst = 0;
    #5  en = 1; t = 1;
    #10 t = 0;
    #10 t = 1;
    #10 en = 0;
    #10 rst = 1;
    #10 $finish;

end

endmodule