module priority_encoder_8_3_tb();
reg [7:0] i;
wire [2:0] Y;
integer c;
priority_encoder_8_3 dut1 (.i(i),.y(y),.v(v));
initial
begin 
i=8'b1000_0000; #10;
i=8'b0100_0000; #10;
i=8'b1100_0000; #10;
i=8'b0011_0000; #10;
i=8'b0111_1010; #10;
i=8'b1111_1111; #10;
end 
initial 
$monitor("input i=%b and output y=%b v=%v",i,y,v);
initial 
begin 
#500;
$finish;
end 
endmodule