`include "mux8.v"
module mux8_tb();
reg [7:0]a;
reg [2:0]s;
wire y;
mux8 dut(a,s,y);
initial begin 
$monitor(" s = %b, a = %b, y = %b", s, a, y);
$dumpfile("mux8_tb.vcd");
$dumpvars(0, mux8_tb);

     s=3'b000; a=8'b0000_0000; 
#10; s=3'b001; a=8'b0000_0010;
#10; s=3'b001; a=8'b0000_0000;  //cheking values
#10; s=3'b111; a=8'b1000_1000;
#10; s=3'b111; a=8'b0000_0100;// checking value
#10; s=3'b100; a=8'b001_1000;
#10; s=3'b110; a=8'b0100_1111;
$finish;
end
 endmodule