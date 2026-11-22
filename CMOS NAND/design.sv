// Implementation of CMOS using NAND gate 


module cmos_nand(in1, in2, out);

input in1, in2;
output out;

supply1 vdd;
supply0 gnd;

wire w;

// PMOS 
pmos p1(out, vdd, in1);
pmos p2(out, vdd, in2);

// NMOS
nmos n1(out, w, in1);
nmos n2(w, gnd, in2);

endmodule