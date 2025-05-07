`include "mux4.v"
`timescale 1ns/1ps

module mux4_tb;
    reg [3:0] a;
    reg [1:0] s;
    wire y;
 mux4 uut (a, s, y);
initial begin
$monitor(" s = %b%b, a = %b, y = %b", s[1], s[0], a, y);

a = 4'b0000;
s = 2'b00;
#10 s = 2'b00;
#10 s = 2'b01; 
#10 s = 2'b10; 
#10 s = 2'b11; 
    
#10 a = 4'b1100;
    
#10 s = 2'b00;
#10 s = 2'b01; 
#10 s = 2'b10; 
#10 s = 2'b11; 

#10 a = 4'b1111;
    
#10 s = 2'b00;
#10 s = 2'b01;
#10 s = 2'b10;
#10 s = 2'b11;

#10 $finish;
end

initial begin
$dumpfile("mux4_tb.vcd");
$dumpvars(0, mux4_tb);
end
endmodule


// USING RANDOM TEST-CASES 

`include "mux4.v"
`timescale 1ns/1ps

module mux4_tb;
    reg [3:0] a;
    reg [1:0] s;
    wire y;
mux4 uut (a, s, y);
initial begin
$monitor(" s = %b, a = %b, y = %b", s, a, y);
$dumpfile("mux4_tb.vcd");
$dumpvars(0, mux4_tb);

repeat (5) begin
a = $random;  
s = 2'b00; #10;
s = 2'b01; #10;
s = 2'b10; #10; 
s = 2'b11; #10; 

$display("Tested a = %b with all select lines", a);
end

a = 4'b0000; s = 2'b00; #10; 
a = 4'b1111; s = 2'b11; #10; 
a = 4'b0101; s = 2'b01; #10; 
a = 4'b1010; s = 2'b10; #10; 

$finish;
end
endmodule
