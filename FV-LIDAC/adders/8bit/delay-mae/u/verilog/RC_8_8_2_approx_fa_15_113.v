module approx_fa_15_113(X, Y, Z, S, Cout);
input X, Y, Z;
output S, Cout;
assign Cout = 0| (X & ~Y & ~Z) | (X & ~Y & Z) | (X & Y & ~Z) | (X & Y & Z) ;
assign S = 0 | (~X & ~Y & Z) | (~X & Y & ~Z) | (~X & Y & Z) | (X & Y & Z) ;
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



module RC_8_8_2_approx_fa_15_113(IN1, IN2, Out);
  input [7:0] IN1;
  input [7:0] IN2;
  output [8:0] Out;
  wire w17;
  wire w19;
  wire w21;
  wire w23;
  wire w25;
  wire w27;
  wire w29;
  approx_fa_15_113 U0 (IN1[0], IN2[0], 1'b0, Out[0], w17);
  approx_fa_15_113 U1 (IN1[1], IN2[1], w17, Out[1], w19);
  FullAdder U2 (IN1[2], IN2[2], w19, Out[2], w21);
  FullAdder U3 (IN1[3], IN2[3], w21, Out[3], w23);
  FullAdder U4 (IN1[4], IN2[4], w23, Out[4], w25);
  FullAdder U5 (IN1[5], IN2[5], w25, Out[5], w27);
  FullAdder U6 (IN1[6], IN2[6], w27, Out[6], w29);
  FullAdder U7 (IN1[7], IN2[7], w29, Out[7], Out[8]);

endmodule

