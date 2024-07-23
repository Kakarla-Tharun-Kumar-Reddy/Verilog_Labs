module beha4_1mux(s0,s1,d0,d1,d2,d3,y);
input d0,d1,d2,d3;
input s0,s1;
output reg y;
always@(*)
begin
case({s1,s0})
2'b00:y=d0;
2'b01:y=d1;
2'b10:y=d2;
2'b11:y=d3;
endcase
end 
endmodule
