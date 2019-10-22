
module div(clk,rst,out,a,b);
output [15:0]  out;
input  [15:0]  a,b;
input          clk,rst; 
wire   [15:0]  out=a/b;

endmodule



