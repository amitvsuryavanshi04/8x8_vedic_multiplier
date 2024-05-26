//using the half adder code initially for 1st step calculation 

module ha(a,b,sum,carry); //half adder module 
input a,b;
output sum,carry;
xor(sum,a,b);
and(carry,a,b);
endmodule

//day-02 25/may/2024
module add_4_bit (a,b,sum); //four bit adder 
input [3:0] a,b;
output [3:0]sum;
assign sum=a+b;
endmodule


module add_6_bit (a,b,sum); //6 bit adder
input [5:0] a,b;
output [5:0] sum;
assign sum = a+b;
endmodule
      

module add_8_bit (a,b,sum); //8 bit adder 
input[7:0] a,b;
output[7:0] sum;
assign sum = a+b;
endmodule

module add_12_bit (a,b,sum); //12 bit adder 
input[11:0] a,b;
output[11:0] sum;
assign sum = a+b;
endmodule
    
module vedic_2_x_2(a,b,c); //2x2 multiplier
input [1:0]a;
input [1:0]b;
output [3:0]c;
wire [3:0]c;
wire [3:0]temp;
assign c[0]=a[0]&b[0]; 
assign temp[0]=a[1]&b[0];
assign temp[1]=a[0]&b[1];
assign temp[2]=a[1]&b[1];
ha z1(temp[0],temp[1],c[1],temp[3]);
ha z2(temp[2],temp[3],c[2],c[3]);
endmodule

module vedic_4_x_4(a,b,c); //4x4 multiplier
input [3:0]a;
input [3:0]b;
output [7:0]c;
wire [3:0]q0;	
wire [3:0]q1;	
wire [3:0]q2;
wire [3:0]q3;	
wire [7:0]c;
wire [3:0]temp1;
wire [5:0]temp2;
wire [5:0]temp3;
wire [5:0]temp4;
wire [3:0]q4;
wire [5:0]q5;
wire [5:0]q6;