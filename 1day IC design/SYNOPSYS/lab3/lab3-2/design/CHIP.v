module  CHIP (Y, so, X, reset, clk,si , se);
input         clk, reset;
input         se, si;
input  [7:0]  X;
output [9:0]  Y;
output        so;
wire   i_clk, i_reset;
wire   i_si, i_se, i_so;
wire   [7:0]  i_X;
wire   [9:0]  i_Y;

 CS core(.Y(i_Y), .so(i_so), .X(i_X), .reset(i_reset), .clk(i_clk), .si(i_si), .se(i_se));

PDIDGZ  ipad_clk  ( .PAD(clk)  , .C(i_clk));
PDIDGZ  ipad_reset( .PAD(reset), .C(i_reset));
PDIDGZ  ipad_si   ( .PAD(si),    .C(i_si));
PDIDGZ  ipad_se   ( .PAD(se),    .C(i_se));
PDIDGZ  ipad_X7( .PAD(X[7]), .C(i_X[7]) );
PDIDGZ  ipad_X6( .PAD(X[6]), .C(i_X[6]) );
PDIDGZ  ipad_X5( .PAD(X[5]), .C(i_X[5]) );
PDIDGZ  ipad_X4( .PAD(X[4]), .C(i_X[4]) );
PDIDGZ  ipad_X3( .PAD(X[3]), .C(i_X[3]) );
PDIDGZ  ipad_X2( .PAD(X[2]), .C(i_X[2]) );
PDIDGZ  ipad_X1( .PAD(X[1]), .C(i_X[1]) );
PDIDGZ  ipad_X0( .PAD(X[0]), .C(i_X[0]) );        

PDO08CDG opad_Y9( .I(i_Y[9]), .PAD(Y[9]) );
PDO08CDG opad_Y8( .I(i_Y[8]), .PAD(Y[8]) );
PDO08CDG opad_Y7( .I(i_Y[7]), .PAD(Y[7]) );
PDO08CDG opad_Y6( .I(i_Y[6]), .PAD(Y[6]) );
PDO08CDG opad_Y5( .I(i_Y[5]), .PAD(Y[5]) );
PDO08CDG opad_Y4( .I(i_Y[4]), .PAD(Y[4]) );
PDO08CDG opad_Y3( .I(i_Y[3]), .PAD(Y[3]) );
PDO08CDG opad_Y2( .I(i_Y[2]), .PAD(Y[2]) );
PDO08CDG opad_Y1( .I(i_Y[1]), .PAD(Y[1]) );
PDO08CDG opad_Y0( .I(i_Y[0]), .PAD(Y[0]) );
PDO08CDG opad_so( .I(i_so),   .PAD(so) );



/*
PVDD1DGZ PAD_VDD1(.VDD(VDD));
PVDD1DGZ PAD_VDD2(.VDD(VDD));
PVSS1DGZ PAD_VSS1(.VSS(VSS));
PVSS1DGZ PAD_VSS2(.VSS(VSS));

PVDD2DGZ PAD_IOVDD1 ();
PVDD2DGZ PAD_IOVDD2 ();
PVDD2DGZ PAD_IOVDD3 ();
PVDD2DGZ PAD_IOVDD4 ();
PVDD2DGZ PAD_IOVDD5 ();
PVDD2DGZ PAD_IOVDD6 ();
PVDD2DGZ PAD_IOVDD7 ();
PVDD2DGZ PAD_IOVDD8 ();
PVSS2DGZ PAD_IOVSS1 ();
PVSS2DGZ PAD_IOVSS2 ();
PVSS2DGZ PAD_IOVSS3 ();
PVSS2DGZ PAD_IOVSS4 ();
PVSS2DGZ PAD_IOVSS5 ();
PVSS2DGZ PAD_IOVSS6 ();
PVSS2DGZ PAD_IOVSS7 ();
PVSS2DGZ PAD_IOVSS8 ();

PCORNERDG CORNER1();
PCORNERDG CORNER2();
PCORNERDG CORNER3();
PCORNERDG CORNER4();
*/

endmodule

