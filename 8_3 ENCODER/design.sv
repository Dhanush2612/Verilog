// Implementation of 8_3 encoder

module encoder(i0, i1, i2, i3, i4, i5, i6, i7, y2, y1, y0);

input i0;
input i1;
input i2;
input i3;
input i4;
input i5;
input i6;
input i7;

output y2;
output y1;
output y0;

// Data Flow modeling    
  
assign y2 = i4 | i5 | i6 | i7;
assign y1 = i2 | i3 | i6 | i7;
assign y0 = i1 | i3 | i5 | i7;

endmodule