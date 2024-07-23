module alu_tb();
reg[7:0]a,b;
reg[3:0]alu_sel;
wire[8:0]alu_out;
integer i;
alu dut(a,b,alu_sel,alu_out);
initial
begin
a = 4;
b = 8;
alu_sel=4'b0000;
for(i=0;i<15;i=i+1)
begin
alu_sel=i;
#10;
end

end
initial #500 $finish;
endmodule
