`include "mux16.v"
module mux16_tb();
reg [15:0]a;
reg [3:0]s;
wire y;
mux16 dut(a,s,y);
initial begin 
  $monitor(" a = %b, s = %b, y = %b", a, s, y);
$dumpfile("mux16_tb.vcd");
$dumpvars(0, mux16_tb);  
a=16'b1000_1111_1111_1000; //here a[0]=1 we chosen  output is y=1 if a[0] =0 output is zero position
s=4'b0000;
#10;
a=16'b0111_1111_1111_1111; s=4'b1111;
#10;
a=16'b1000_1111_1111_1001; //output y=1

#10;  a=16'b0111_1111_0000_1111;s=4'b0111;
#10;  a=16'b0111_1111_0000_0000;s=4'b0101;
#10;  a=16'b0001_1111_0001_0001;s=4'b1100;
end
endmodule