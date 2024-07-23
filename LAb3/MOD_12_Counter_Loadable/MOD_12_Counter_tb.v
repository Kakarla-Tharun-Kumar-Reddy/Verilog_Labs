module mod12_count_tb();
 reg clk,rst,load; 
reg [3:0] in; 
wire [3:0] q; 
mod12_count dut(clk,rst,load,in,q); 
initial
 begin clk=1'b0; 
forever #5 clk=~clk; 
end
 task initialize; 
begin in = 4'b0000; 
rst = 1'b1;
 load = 1'b0;
 end
 endtask
 task reset;
 begin @(negedge clk)
     rst = 1'b1;
 @(negedge clk)
     rst = 1'b0;
 end
 endtask
 task en_load;
 begin @(negedge clk)
 load = 1'b1; 
end
 endtask
 task dis_load;
 begin @(negedge clk) 
load = 1'b0;
 end
 endtask
 task inputs(input [3:0] i);
 begin
    @(negedge clk) in = i;
 end 
endtask
 initial
 begin
 initialize; 
reset; 
en_load; 
inputs(3); 
reset;
 inputs(0);
 dis_load;
 #200;
 reset; 
en_load;
 inputs(11); 
dis_load; 
#100; 
End
 initial 
     $monitor(" rst=%b load=%b in=%d q=%d",rst,load,in,q); 
initial 
#500 $finish(); 
endmodule
