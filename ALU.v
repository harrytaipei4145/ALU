module ALU(OUT,A,B,X,MODE);
output reg [8:0]OUT;
input [3:0]A,B,X;
input [1:0] MODE; 
wire [8:0]a,b,c,d;
Equation0 x(a,A,B,MODE);
Equation1 y(b,A,B,MODE);
Equation2 z(c,A,B,MODE);
Equation3 w(d,A,B,MODE);
always@(A or B or X or MODE)  begin
case(MODE)

	2'b00:OUT=a;
	2'b01:OUT=b;
	2'b10:OUT=c;
	2'b11:OUT=d;
endcase
end
module Equation0(input [3:0] a, input [3:0] b, output wire [8:0] out);

assign out=a+b;

endmodule

module Equation1(input [3:0] a, input [3:0] b, output wire [8:0] out);

assign out=a-b;

endmodule


module Equation2(input [3:0] a, input [3:0] b, output wire [8:0] out);

assign out=a*b;

endmodule

module Equation3(input [3:0] a, input [3:0] b,input [3:0] x, output wire [8:0] out);

assign out=2*a*x+b;

endmodule


