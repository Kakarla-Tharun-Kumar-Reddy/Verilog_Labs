module mux4x1_tb();
reg [3:0]i;
reg [1:0]s;
wire y;
integer i;
mux4_1 dut (i,s,y);
initial
begin
s[0]=1'b0; s[1]=1'b0; i[0]=1'b0; i[1]=1'b0; i[2]=1'b0; i[3]=1'b0;
end
initial
begin
for(i=0;i<64;i=i+1)
begin
{s[1],s[0],i[0],i[1],i[2],i[3]}=i;
#10;
end
end
initial #300 $finish;
endmodule