module priorityenco(a,b,c,i0,i1,i2,i3,i4,i5,i6,i7);
output reg a,b,c;
input wire i0,i1,i2,i3,i4,i5,i6,i7;
always@(*)
begin 
if(i7==1'b1)
begin
{a,b,c}=3'b111;
end
if(i6==1'b1)
begin
{a,b,c}=3'b110;
end
else if(i5==1'b1)
begin
{a,b,c}=3'b101;
end
else if(i4==1'b1)
begin
{a,b,c}=3'b100;
end
else if(i3==1'b1)
begin
{a,b,c}=3'b011;
end
else if(i2==1'b1)
begin
{a,b,c}=3'b010;
end
else if(i1==1'b1)
begin
{a,b,c}=3'b001;
end
else if(i0==1'b1)
begin
{a,b,c}=3'b000;
end
end
endmodule