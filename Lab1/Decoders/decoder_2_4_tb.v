module decoder2_4_tb();
reg a,b;
wire y0,y1,y2,y3;
decoder2_4 dut(a,b,y0,y1,y2,y3);
initial 
begin 
a=1'b0;b=1'b0;
#10 a=1'b0;b=1'b1;
#10 a=1'b1;b=1'b0;
#10 a=1'b1;b=1'b1;
end 
endmodule 