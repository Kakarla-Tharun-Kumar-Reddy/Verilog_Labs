module dff_synch_tb();
reg clk,rst,d;
wire q,qb;
dff_synch dut(clk,rst,d,q,qb);
initial
begin
clk=0;
forever #5 clk=~clk;
end
task rst_dut();
begin
  @(negedge clk)
  rst=1'b1;
  @(negedge clk)
  rst=1'b0;
end
endtask
task din(input i);
begin
  @(negedge clk)
  d=i;
end
endtask
initial
begin
d=0;
rst_dut();
din(1);
din(1);
din(0);
din(1);
din(1);
rst_dut();
din(0);
din(1);
#10;
$finish();
end
initial
   $monitor("inputs clk=%b rst=%b d=%b outputs q=%b qb=%b",clk,rst,d,q,qb);
endmodule
