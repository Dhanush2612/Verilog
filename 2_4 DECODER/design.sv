// Implementation of 2_4 decoder in gate level of abstraction 

module decoder(
  
  input a,
  input b,
  output p,
  output q,
  output r,
  output s
  
);
  
  wire a_n, b_n;
  
  not (a_n, a);
  not (b_n, b);
  and (p, a_n, b_n);
  and (q, a_n, b);
  and (r, a, b_n);
  and (s, a, b);
  
endmodule
