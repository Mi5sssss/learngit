`timescale 1ps/1ps
module fa_tb();

	reg a,b,cin;
	wire s, cout;
	fa fa0(
	.a(a),
	.b(b),
	.cin(cin),
	.cout(cout),
	.s(s));
	
	initial 
		begin
		a = 0; b = 0; cin = 0;
		
		#100 a = 1; b = 1; cin = 0;
		#100 a = 1; b = 0; cin = 1;		
		#100 a = 0; b = 0; cin = 1;
		#100 a = 1; b = 0; cin = 0;
		#100 a = 1; b = 0; cin = 0;
		#100 a = 1; b = 0; cin = 0;
		#100 a = 1; b = 0; cin = 0;
		end
endmodule