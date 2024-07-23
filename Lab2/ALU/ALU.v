module alu(a,b,alu_sel,alu_out);
input [3:0]a,b;
input [3:0] alu_sel;
output reg [8:0] alu_out;
always@(a,b,alu_sel)
begin
case(alu_sel)
4'b0000:alu_out=a+b;
4'b0001:alu_out=a-b;
4'b0010:alu_out=a*b;
4'b0011:alu_out=a/b;
4'b0100:alu_out=a<<3;
4'b0101:alu_out=a>>3;
4'b0110:alu_out=!a;
4'b0111:alu_out=~a;
4'b1000:alu_out=a&b;
4'b1001:alu_out=a|b;
4'b1010:alu_out=a^b;
4'b1011:alu_out=~(a&b);
4'b1100:alu_out=~(a|b);
4'b1101:alu_out=~(a^b);
4'b1101:alu_out=a&&b;
4'b1111:alu_out=a||b;
default:alu_out=a+b;
endcase 
end
endmodule
