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
