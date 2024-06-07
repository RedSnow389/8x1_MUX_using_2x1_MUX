`timescale 1ns/1ps
module two2oneMUX(i0, i1, sel, o);
 input i0, i1, sel;
 output o;
 assign o=(sel==1)?i1:i0;
endmodule
module eight2oneMUX(i0, i1, i2, i3, i4, i5, i6, i7, sel1, sel2, sel3, out);
 input i0, i1, i2, i3, i4, i5, i6, i7, sel1, sel2, sel3;
 output out;
 wire w1, w2, w3, w4, w5, w6, w7;
 two2oneMUX p(i0, i1, sel1, w1);
 two2oneMUX q(i2, i3, sel1, w2);
 two2oneMUX r(i4, i5, sel1, w3);
 two2oneMUX s(i6, i7, sel1, w4);
 two2oneMUX t(w1, w2, sel2, w5);
 two2oneMUX u(w3, w4, sel2, w6);
 two2oneMUX v(w5, w6, sel3, out);
endmodule
