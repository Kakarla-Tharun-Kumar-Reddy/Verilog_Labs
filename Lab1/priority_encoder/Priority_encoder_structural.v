module priority_encoder_8_3(i,y,v);
input [7:0] i;
output [2:0] y;
output v;
wire [7:0] h;
priority_circuit l1 (i,h,v);
priority_encoder l2 (h,y);
endmodule
module priority_circuit(I,H,IDLE);
input [7:0] I;
output [7:0] H;
output IDLE;
assign H[7]=I[7];
assign H[6]=(~I[7])&(I[6]);
assign H[5]=(~I[7])&(~I[6])&(I[5]);
assign H[4]=(~I[7])&(~I[6])&(~I[5])&(I[4]);
assign H[3]=(~I[7])&(~I[6])&(~I[5])&(~I[4])&I[3];
assign H[2]=(~I[7])&(~I[6])&(~I[5])&(~I[4])&(~I[3])&(I[2]);
assign H[1]=(~I[7])&(~I[6])&(~I[5])&(~I[4])&(~I[3])&(~I[2])&I[1];
assign H[0]=(~I[7])&(~I[6])&(~I[5])&(~I[4])&(~I[3])&(~I[2])&(~I[1])&I[0];
assign IDLE =(~I[0])&(~I[1])&(~I[2])&(~I[3])&(~I[4])&(~I[5])&(~I[6])&(~I[7]);
endmodule
module priority_encoder(i,y);
input [7:0] i;
output [2:0] y;
or r1(y[0],i[1], i[3] , i[5] , i[7]);
or r2(y[1] ,i[2], i[3] ,i[6] ,i[7]);
or r3 (y[2] ,i[4], i[5] , i[6] , i[7]);
endmodule