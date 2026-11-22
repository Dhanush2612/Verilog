// Implementation of Full Adder

module full_adder(a, b, cin, sum, cout);

input a;
input b;
input cin;

output reg sum;
output reg cout;

//Behavioral Modeling
  
  always @ (*)
    begin
      
      //Sum
    sum  = a ^ b ^ cin;
      
      //Carry
      cout = (a & b) | (cin) & (a ^ b);
      
    end
  
endmodule
  
