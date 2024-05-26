//testbench code for 8x8vedic multiplier using vedic method 
module test_vedic_8;

	reg [7:0] a;
	reg [7:0] b;

	wire [15:0] c;

	// Instantiate the Unit Under Test (UUT)
	vedic_8X8 uut (.a(a),.b(b), .c(c));

	initial begin
	$monitor($time," a= %b, b=%b,  --- c= %b\n", 
              a, b, c);
		a = 0;
		b = 0;
		#100;
		
		a = 8'd255;
		b = 8'd255;
		#100;
		
		a = 8'd5;
		b = 8'd3;
		#100;
		
		a = 8'd4;
		b = 8'd2;
		#100;
		
		a = 8'd2;
		b = 8'd2;
		#100;
		
		a = 8'd6;
		b = 8'd8;
		#100;
        
		

	end
      
endmodule
