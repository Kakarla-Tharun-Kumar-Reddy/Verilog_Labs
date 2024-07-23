module priorityenco_tb();
reg i0,i1,i2,i3,i4,i5,i6,i7;
wire a,b,c;
integer r;
priorityenco dut(.a(a),.b(b),.c(c),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7));
initial
begin 
for(r=0 ;r<90 ;r=r+1)
begin
{i7,i6,i5,i4,i3,i2,i1,i0}=r;
#5;
end
end 
initial 
begin 
#500;
$finish ;
end 
endmodule