module top(clk,out,a,b,c);
output [15:0]  out;
input  [15:0]  a,b;
input  [15:0]  c;
input          clk;
reg    [31:0]  mul_out; 
reg    [15:0]  out;
reg    [15:0]  c_d;

always @(posedge clk) mul_out=a*b;
always @(posedge clk) c_d=c;
always @(posedge clk) out=mul_out[31:16]/c_d;
   
endmodule




