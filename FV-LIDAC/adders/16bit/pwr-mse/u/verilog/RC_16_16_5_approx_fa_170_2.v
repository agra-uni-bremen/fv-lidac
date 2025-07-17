module approx_fa_170_2(X, Y, Z, S, Cout);
input X, Y, Z;
output S, Cout;
assign Cout = 0| (~X & ~Y & ~Z) | (~X & Y & ~Z) | (X & ~Y & ~Z) | (X & Y & ~Z) ;
assign S = 0 | (X & Y & ~Z) ;
endmodule
module FullAdder(X, Y, Z, S, C);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module RC_16_16_5_approx_fa_170_2(IN1, IN2, Out);
  input [15:0] IN1;
  input [15:0] IN2;
  output [16:0] Out;
  wire w33;
  wire w35;
  wire w37;
  wire w39;
  wire w41;
  wire w43;
  wire w45;
  wire w47;
  wire w49;
  wire w51;
  wire w53;
  wire w55;
  wire w57;
  wire w59;
  wire w61;
  approx_fa_170_2 U0 (IN1[0], IN2[0], 1'b0, Out[0], w33);
  approx_fa_170_2 U1 (IN1[1], IN2[1], w33, Out[1], w35);
  approx_fa_170_2 U2 (IN1[2], IN2[2], w35, Out[2], w37);
  approx_fa_170_2 U3 (IN1[3], IN2[3], w37, Out[3], w39);
  approx_fa_170_2 U4 (IN1[4], IN2[4], w39, Out[4], w41);
  FullAdder U5 (IN1[5], IN2[5], w41, Out[5], w43);
  FullAdder U6 (IN1[6], IN2[6], w43, Out[6], w45);
  FullAdder U7 (IN1[7], IN2[7], w45, Out[7], w47);
  FullAdder U8 (IN1[8], IN2[8], w47, Out[8], w49);
  FullAdder U9 (IN1[9], IN2[9], w49, Out[9], w51);
  FullAdder U10 (IN1[10], IN2[10], w51, Out[10], w53);
  FullAdder U11 (IN1[11], IN2[11], w53, Out[11], w55);
  FullAdder U12 (IN1[12], IN2[12], w55, Out[12], w57);
  FullAdder U13 (IN1[13], IN2[13], w57, Out[13], w59);
  FullAdder U14 (IN1[14], IN2[14], w59, Out[14], w61);
  FullAdder U15 (IN1[15], IN2[15], w61, Out[15], Out[16]);

endmodule

