module up_count_tb(); 
reg clk,rst,load; 
reg [3:0] in;
 wire [3:0] q;
 up_count dut(clk,rst,load,mode,in,q); 
initial begin clk=1'b0;
 forever #5 clk=~clk;
 end 
task initialize; 
begin in = 4'b0000; 
rst = 1'b1; 
load = 1'b0;
 end
 endtask 
task reset; 
begin
   @(negedge clk)
      rst = 1'b1;
   @(negedge clk)
       rst = 1'b0; 
end
endtask
task en_load; 
begin 
@(negedge clk) load = 1'b1; 
end
endtask
task dis_load; 
begin
 @(negedge clk) 
load = 1'b0
end 
endtask 
task inputs(input [3:0] i); 
begin
    @(negedge clk) 
     in = i; 
end
 endtask
 task Mode(input m);
 begin
	@(negedge clk)
	 mode = m;
 end
 endtask
 initial
 begin 
initialize;
 reset;
 en_load;
 Mode(0);
 inputs(3);
 reset;
 Mode(1);
 inputs(0);
 dis_load;
 #200;
 reset;
 en_load;
 inputs(14);
 dis_load;
 #100; 
end 
initial 
$monitor(" rst=%b load=%b in=%d q=%d",rst,load,mode,in,q);
 Initial
 #500 $finish();
 endmodule
