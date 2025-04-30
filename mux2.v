// module mux2(input a, b, sel,output y);
// assign y = sel ? b : a;
// endmodule


module mux2(input a, b, sel,output reg y);
always@(*) begin 
if (sel==1'b0)
 y=a;
 else 
 y=b;
end
endmodule