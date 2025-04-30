`include "mux2.v"
module mux2_tb;
    reg a, b, sel;
    wire y;
mux2 uut(a, b, sel, y);
initial begin
$dumpfile("mux2_tb.vcd");  
$dumpvars(0, mux2_tb);  
        a = 0; b = 0; sel = 0; #10;
        $display("a=%b, b=%b, sel=%b => y=%b", a, b, sel, y);
        
        a = 0; b = 1; sel = 0; #10;
        $display("a=%b, b=%b, sel=%b => y=%b", a, b, sel, y);
        
        a = 1; b = 0; sel = 0; #10;
        $display("a=%b, b=%b, sel=%b => y=%b", a, b, sel, y);
        
        a = 1; b = 1; sel = 0; #10;
        $display("a=%b, b=%b, sel=%b => y=%b", a, b, sel, y);
        
        a = 0; b = 0; sel = 1; #10;
        $display("a=%b, b=%b, sel=%b => y=%b", a, b, sel, y);
        
        a = 0; b = 1; sel = 1; #10;
        $display("a=%b, b=%b, sel=%b => y=%b", a, b, sel, y);
        
        a = 1; b = 0; sel = 1; #10;
        $display("a=%b, b=%b, sel=%b => y=%b", a, b, sel, y);
        
        a = 1; b = 1; sel = 1; #10;
        $display("a=%b, b=%b, sel=%b => y=%b", a, b, sel, y);
        
        $finish;
    end
endmodule