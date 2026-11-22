// Code your testbench here
// or browse Examples
module tb;

reg clk;
reg rst;
wire [3:0] q;

up_counter uut(
    .clk(clk),
    .rst(rst),
    .q(q)
);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin
    rst = 1;
    #10;
    
    rst = 0;
    #100;
    
    $finish;
end

initial
begin
  $monitor("Time=%0t rst=%b q=%b", $time, rst, q);
end

endmodule