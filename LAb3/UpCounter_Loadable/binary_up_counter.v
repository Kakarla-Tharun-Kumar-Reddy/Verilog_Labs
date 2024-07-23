module binary_up_counter(data_in,clk,load,rst,count);
input [3:0]data_in;
input clk,rst,load;
output reg [3:0]count;
always @(posedge clk)
begin
  if(~rst)
    count<=4'b0;
  else if(load)
     count<=data_in;
  else
     count<=count+1'b1;
end
endmodule
