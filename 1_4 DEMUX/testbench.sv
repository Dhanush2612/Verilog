// Code your testbench here
// or browse Examples

module tb;
  
  reg in;
  reg s0, s1;
  wire y0, y1, y2, y3;

demux uut(in, s0, s1, y0, y1, y2, y3);

initial
  begin
    
    $monitor("%t in=%b s1=%b s0=%b y0=%b y1=%b y2=%b y3=%b", $time, in, s1, s0, y0, y1, y2, y3);

        in = 1; s1 = 0; s0 = 0;
    #10 in = 1; s1 = 0; s0 = 1;
    #10 in = 1; s1 = 1; s0 = 0;
    #10 in = 1; s1 = 1; s0 = 1;
    #10 $finish;
    
end

endmodule