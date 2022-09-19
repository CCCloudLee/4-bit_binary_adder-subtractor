//???_E94084016
// function: to test a 4-bit adder&substractor
`timescale 1ns/1ns 
module test();

  reg [3:0] a;
  reg [3:0] b;
  reg op;
  wire [3:0] sum;
  wire Cout, v;

  add_Sub_4bit as4 (.sum(sum), .Cout(Cout), .v(v), .a(a), .b(b), .op(op));

  initial begin
		// Initialize Inputs
		#0 op=0; a = 0;   b = 0; 
		#1 op=0; a = 1;   b = 3;  
		#1 op=0; a = 2;   b = 4;   
		#1 op=0; a = 3;   b = 4;   
		#1 op=0; a = 4;   b = 5; 
		#1 op=0; a = 5;   b = 6;   
		#1 op=0; a = 6;   b = 7;   
		#1 op=0; a = 7;   b = 7;
		#1 op=0; a = 7;   b = 8;
		#1 op=0; a = 8;   b = 8;
		#1 op=1; a = 15;  b = 0; 
		#1 op=1; a = 14;  b = 1;   
		#1 op=1; a = 13;  b = 2;   
		#1 op=1; a = 12;  b = 3;   
		#1 op=1; a = 13;  b = 4; 
		#1 op=1; a = 12;  b = 5;   
		#1 op=1; a = 11;  b = 6;
		#1 op=1; a = 10;  b = 7;
		#1 op=1; a = 9;   b = 8;
		#1 op=1; a = 8;   b = 8;
		#1 op=1; a = 8;   b = 9;
		#1 op=1; a = 5;   b = 3;
		#1 $finish;
	end
        
 endmodule