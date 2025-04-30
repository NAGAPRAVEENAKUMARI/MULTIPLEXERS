// BEHAVIOURAL MODELING
module mux2(input a, b, sel,output y);
assign y = sel ? b : a;
endmodule

module mux2(input a, b, sel,output reg y);
always@(*) begin 
if (sel==1'b0)
 y=a;
 else 
 y=b;
end
endmodule

module mux2(input a, b, sel,output reg y);
always@(*) begin  
y = sel ? b : a;
end
endmodule

//gate level modeling
module mux2x1_structural (input wire a, b, sel,output  y);
    wire not_sel, and_a, and_b;
    not (not_sel, sel);
    and (and_a, a, not_sel);
    and (and_b, b, sel);
    or (y, and_a, and_b);
endmodule


//data-level
 module mux2(input a, b, sel,output y);
assign y = (~sel & b ) |(sel & a);
 endmodule

