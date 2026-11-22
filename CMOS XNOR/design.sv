// Implementation of CMOS using XNOR gate

module cmos_xnor(in1, in2, out);

input in1, in2;
output out;

supply1 vdd;
supply0 gnd;

wire a, b;
wire in1_n, in2_n;

not(in1_n, in1);
not(in2_n, in2);

// PMOS
pmos p1(a, vdd, in1);
pmos p2(out, a, in2);

pmos p3(b, vdd, in1_n);
pmos p4(out, b, in2_n);

// NMOS
nmos n1(out, a, in1);
nmos n2(a, gnd, in2_n);

nmos n3(out, b, in1_n);
nmos n4(b, gnd, in2);

endmodule