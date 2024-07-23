module siso_tb();
reg clk,rst,d;
wire q;
siso dut(.clk(clk),.rst(rst),.serial_input(d),.serial_output(q));
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
#80;
$finish();
end
initial
   $monitor("inputs clk=%b rst=%b d=%b outputs q=%b ",clk,rst,d,q);
endmodule
