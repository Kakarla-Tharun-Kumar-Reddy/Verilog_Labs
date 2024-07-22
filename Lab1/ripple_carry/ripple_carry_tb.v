module ripplem_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]s,c;
ripplem m1 (.a(a),.b(a),.cin(cin),.s(s),.c(c));
initial 
begin 
cin=0;
end
initial 
begin
#10;
a=4'b0011; 
b=4'b1100;
#10;
a=4'b0111;
b=4'b1011;
#10;
a=4'b1111;
b=4'b1011;
#10;
a=4'b0111;
b=4'b1101;
end 
initial
begin
$monitor("input a=%b b=%b cin=%b output s=%b c=%b", a,b,cin,s,c);
end 
endmodule
