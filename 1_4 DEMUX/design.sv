// Implementation of 1_4 DEMUX

module demux(in, s0, s1, y0, y1, y2, y3);

input  in;
input  s0;
input  s1;

output y0;
output y1;
output y2;
output y3;

// Data Flow modeling  
  
assign y0 = in & ~s1 & ~s0;
assign y1 = in & ~s1 &  s0;
assign y2 = in &  s1 & ~s0;
assign y3 = in &  s1 &  s0;

endmodule