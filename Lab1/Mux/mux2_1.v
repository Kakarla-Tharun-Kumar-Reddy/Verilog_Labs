module mux2_1(i[0],i[1],s,w);
input [1:0]i;
input s;
output w;
assign w=(i[0]&(~s))|(i[1]&s);
endmodule