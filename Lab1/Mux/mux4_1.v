module mux4_1(i,s,y);
input [3:0]i;
input [1:0]s;
output y;
wire w0,w1;
mux2_1 mu1(i[0],i[1],s[0],w0);
mux2_1 mu2(i[2],i[3],s[0],w1);
mux2_1 mu3(w0,w1,s[1],y);
endmodule
module mux2_1(i[0],i[1],s,w);
input [1:0]i;
input s;
output w;
assign w=(i[0]&(~s))|(i[1]&s);
endmodule