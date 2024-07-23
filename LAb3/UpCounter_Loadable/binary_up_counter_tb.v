module binary_up_counter_tb();
reg [3:0]data_in;
reg clk,rst,load;
wire [3:0]count;
parameter CYCLE=10;

binary_up_counter dut(data_in,clk,load,rst,count);

always
begin
 #(CYCLE/2);
 clk=1'b0;
 #(CYCLE/2);
 clk=1'b1;
end

task reset_t;
begin
  @(negedge clk)
  rst=1'b0;
  @(negedge clk)
  rst=1'b1;
end
endtask

task load_t(input l,input [3:0]d);
begin
  @(negedge clk);
  load=1;
  data_in=d;
end
endtask

initial
begin
reset_t;
#200;
load_t(1'b1,4'd13);
load_t(1'b0,4'd13);
#300;
$finish();
end
initial
  $monitor("input data_in=%b  rst=%b clk=%b load=%b output count=5b",data_in,rst,clk,load,count);
endmodule
