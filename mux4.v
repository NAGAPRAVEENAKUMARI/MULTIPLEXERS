//data flow terinary operator
module mux4(input [3:0]a, input [1:0]s, output reg y);
always @ (*)
y=s[1] ? s[0]? a[3] : a[2] :s[0]? a[1]:a[0];
endmodule

// contineous assignments 

module mux4(input [3:0]a, input [1:0]s, output y);
assign y= (~ s[1] & ~ s[0] & a[0]) | (~ s[1] & s[0] & a[1] ) | (s[1]& ~s[0] & a[2]) | (s[1] & s[0] & a[3]);
endmodule

//behavioural if-else and case statements 

module mux4(input [3:0]a, input [1:0]s, output reg y);
always @(*) begin 
if (s==2'b00 )      y=a[0];
else if(s==2'b01)   y=a[1];
else if(s==2'b10)   y=a[2];
else                y=a[3];
end
endmodule


module mux4(input [3:0]a, input [1:0]s, output reg y);
always @(*) begin 
case (s)
2'b00: y=a[0];
2'b01: y=a[1];
2'b10: y=a[2];
2'b11: y=a[3];
endcase
end 
endmodule
