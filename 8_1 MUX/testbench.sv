// Code your testbench here
// or browse Examples

module tb;
  
  reg i0, i1, i2, i3, i4, i5, i6, i7;
  reg s0, s1, s2;
  wire y;

mux8_1 uut(i0, i1, i2, i3, i4, i5, i6, i7,
           s0, s1, s2, y);

initial
  begin
    
    $monitor("%t s2=%b s1=%b s0=%b y=%b",
              $time, s2, s1, s0, y);

    i0=1; i1=0; i2=0; i3=0;
    i4=0; i5=0; i6=0; i7=0;

    s2=0; s1=0; s0=0;
#10 s2=0; s1=0; s0=1;
#10 s2=0; s1=1; s0=0;
#10 s2=0; s1=1; s0=1;
#10 s2=1; s1=0; s0=0;
#10 s2=1; s1=0; s0=1;
#10 s2=1; s1=1; s0=0;
#10 s2=1; s1=1; s0=1;
#10 $finish;
    
    end

endmodule