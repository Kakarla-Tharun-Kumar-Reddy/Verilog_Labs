module sr_latch(r,s,q,qb);
input s,r;
output q,qb;
wire w1,w2;
nor n1(q,r,w2);
nor n2(qb,s,w1);
assign w1=q;
assign w2=qb;
endmodule
