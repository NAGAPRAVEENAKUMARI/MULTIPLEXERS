`include "imp_mux24816.v"
module mux24816_tb();
 reg [15:0]a; //reg [3:0]a;
reg [3:0]s; //reg [1:0]s;
wire y;
//mux41 dut (a,s,y);
mux16 dut(a,s,y);
initial begin 
$monitor("a=%0b,s=%0b,y=%0b", a,s,y);
$dumpfile("mux24816_tb.vcd");
$dumpvars(0, mux24816_tb);
// a=2'b00; s=0;
// #10; a=2'b01; s=1;
// #10; a=2'b10; s=1;
// //#10; a=2'b01; s=0;
// #10; a=2'b11; s=1;
//for 4x1 mux
// a=4'b0000; s=2'b00;
// #10; a=4'b0001; s=2'b01;
// #10; a=4'b1111; s=2'b11;
// #10; a=4'b1100; s=2'b10;
// #10; a=4'b1100; s=2'b11;

// #10; a=4'b1010; s=2'b11;

//  a = 8'b10111010; s=3'b000;
//  #10; s=3'b001;
//  #10; s=3'b110;

a=16'b1000_1111_1111_1001; s=4'b0011;
#10;
s=4'b1111; #10;

s=4'b1100;
end
endmodule
