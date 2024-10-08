module siso(clk,rst,serial_input,serial_output);
input clk,rst,serial_input;
output  serial_output;
reg [3:0]w;
always@(posedge clk)
begin
  if(rst)
   begin
   w<=4'b0000;
   end
  else
   begin
   w<={w[2:0],serial_input};
   end
end
assign serial_output = w[3];
endmodule
