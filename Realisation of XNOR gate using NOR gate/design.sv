// Realisation of XNOR using NOR gate

module xnor_nor (
  
    input wire a,
    input wire b,
    output wire y
);
    wire w1, w2, w3;
  
   //Gate Level Modelling 
  
    nor g1 (w1, a, b);
    nor g2 (w2, a, w1);
    nor g3 (w3, b, w1);
    nor g4 (y, w2, w3);  
  
endmodule