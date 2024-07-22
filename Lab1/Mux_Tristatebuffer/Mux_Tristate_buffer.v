module mux4_1tri(s,i,y );
input [1:0] s;
input [3:0] i;
output y;
wire [3:0] w;
decoder2_4 d1(.a(s[1]),.b(s[0]),.y(w));
bufif1 b0(y,i[0],w[0]);
bufif1 b1(y,i[0],w[1]);
bufif1 b2(y,i[1],w[0]);
bufif1 b3(y,i[1],w[1]);
endmodule