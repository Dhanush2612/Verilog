// Implementation of 8_1 MUX in gate level of abstraction 

module mux8_1(
  
    input i0,i1,i2,i3,i4,i5,i6,i7,
    input s0,s1,s2,
    output y
);

wire s0_n,s1_n,s2_n,w0,w1,w2,w3,w4,w5,w6,w7;

not(s0_n,s0);
not(s1_n,s1);
not(s2_n,s2);

and(w0,i0,s2_n,s1_n,s0_n);
and(w1,i1,s2_n,s1_n,s0);
and(w2,i2,s2_n,s1,s0_n);
and(w3,i3,s2_n,s1,s0);
and(w4,i4,s2,s1_n,s0_n);
and(w5,i5,s2,s1_n,s0);
and(w6,i6,s2,s1,s0_n);
and(w7,i7,s2,s1,s0);

or(y,w0,w1,w2,w3,w4,w5,w6,w7);

endmodule