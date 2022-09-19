//???_E94084016
//implement 4-bit adder
module four_bit_full_adder (sum, Cout, v, a, b, Cin);

	input [3:0] a;
	input [3:0] b;
	input Cin; //carry in
	output [3:0] sum;
	output Cout, v; //carry out, overflow
	wire [2:0] c;

  one_bit_full_adder u0(sum[0], c[0], a[0], b[0], Cin);
	one_bit_full_adder u1(sum[1], c[1], a[1], b[1], c[0]);
	one_bit_full_adder u2(sum[2], c[2], a[2], b[2], c[1]);
	one_bit_full_adder u3(sum[3], Cout, a[3], b[3], c[2]);
	assign v = Cout ^ c[2];

endmodule