module tff_using_dff_tb();
reg clk,rst,t;
wire q,qb;
tff_using_dff dut(clk,rst,t,q,qb);
initial
begin
clk=0;
forever #10 clk=~clk;
end
task rst_dut();
begin
  @(negedge clk)
  rst=1'b1;
  @(negedge clk)
  rst=1'b0;
end
endtask
task tin(input i);
begin
  @(negedge clk)
  t=i;
end
endtask
initial
begin
t=0;
rst_dut();
tin(0);
tin(1);
tin(0);
tin(1);
tin(1);
rst_dut();
tin(0);
tin(1);
#10;
$finish();
end
initial
   $monitor("inputs clk=%b rst=%b t=%b outputs q=%b qb=%b",clk,rst,t,q,qb);
endmodule
