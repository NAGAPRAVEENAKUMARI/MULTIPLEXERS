module mux21(input [1:0]a ,input s, output y);
assign y= s? a[1] :a[0];
endmodule

module mux41(input [3:0]a, input [1:0]s, output y);

wire y0, y1;

mux21 m0(.a(a[1:0]), .s(s[0]), .y(y0));
mux21 m1(.a(a[3:2]), .s(s[0]), .y(y1));
mux21 mf(.a({y0,y1}), .s(s[1]), .y(y));

 endmodule 
 module mux81(input [7:0]a, input [2:0]s, output y);
 wire y2,y3;
 mux41 mm1(.a(a[3:0]), .s(s[1:0]), .y(y2));
 mux41 mm2(.a(a[7:4]), .s(s[1:0]), .y(y3));
 mux21 mmf(.a({y3, y2}), .s(s[2]), .y(y)); 
 endmodule
 module mux16(input [15:0]a, input [3:0]s, output y);
 wire y4,y5;
 mux81 m81(.a(a[7:0]), .s(s[2:0]), .y(y4));
mux81 m82(.a(a[15:8]), .s(s[2:0]), .y(y5));
mux21 mmmf(.a({y4, y5}), .s(s[3]), .y(y));
endmodule