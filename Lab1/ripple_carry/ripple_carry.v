module ripplem(a,b,cin,s,c);
input [3:0] a;
input cin;
input [3:0] b;
output [3:0] s;
output [3:0] c;
fulladders dut0(.a_in(a[0]),.b_in(b[0]),.c_in(cin),.sum_out(s[0]),.carry_out(c[0]));
fulladders dut1(.a_in(a[1]),.b_in(b[1]),.c_in(c[0]),.sum_out(s[1]),.carry_out(c[1]));
fulladders dut2(.a_in(a[2]),.b_in(b[2]),.c_in(c[1]),.sum_out(s[2]),.carry_out(c[2]));
fulladders dut3(.a_in(a[3]),.b_in(b[3]),.c_in(c[2]),.sum_out(s[3]),.carry_out(c[3]));
endmodule