module mod12_count(input clk,rst,load, input [3:0] in, output reg [3:0] q); 
always@(posedge clk)
 begin 
if(rst) 
  q<=4'b0000;
 else if(q>=4'b1011)
  q<=4'b0000; 
else if(load == 1 && in <= 4'b1011)
  q<= in;
 else
  q<=q+1'b1; 
end
 endmodule 
