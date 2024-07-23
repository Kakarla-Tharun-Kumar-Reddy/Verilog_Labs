module sr_latch_tb;
reg s,r;
wire q,qb;
sr_latch dut(r,s,q,qb);
initial
begin
r=0;s=0;
#5 r=0;s=1;
#5 r=1;s=0;
#5 r=1;s=1;
#50;
$finish;
end
initial
 $monitor("%0t r=%0d s=%0d q=%0d qb=%0d",$time,r,s,q,qb);
endmodule
