module beha3_8deco_tb();
reg a,b,c;
wire [7:0]y;
integer i;
beha3_8deco dut(.a(a),.b(b),.c(c),.y(y));
initial 
begin 
for(i=0;i<7;i=i+1)
begin
{a,b,c}=i;
#5;
end
end
initial begin 
#60;
$finish;
end 
endmodule
