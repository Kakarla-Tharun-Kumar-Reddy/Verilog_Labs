module up_count(input clk,rst,load,mode, input [3:0] in, output reg [3:0] q);
 always@(posedge clk) 
begin 
if(rst)
    q<=4'b0000; 
else if(load) 
  q<=in; 
else if(mode)
q<=q+1'b1; 
else
q<=q-1'b1;
end
 endmodule
