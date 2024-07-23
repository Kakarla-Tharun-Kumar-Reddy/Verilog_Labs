module beha4_1mux_tb();
reg s0,s1;
reg d0,d1,d2,d3;
wire y;
beha4_1mux dut(.s0(s0),.s1(s1),.d0(d0),.d1(d1),.d2(d2),.d3(d3),.y(y));
task inputs(input [1:0] s_in, input [3:0] d_in);
begin
{s1,s0}=s_in;
{d0,d1,d2,d3}=d_in;
#10;
end 
endtask
initial 
begin
 inputs(2'b00, 4'b0101);
 inputs(2'b01, 4'b1111);
 inputs(2'b10, 4'b0111);
 inputs(2'b11, 4'b1101);
 inputs(2'b11, 4'b1111);
 #20; 
 $finish; 
end 
endmodule