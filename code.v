//using the half adder code initially for 1st step calculation 

module ha(a,b,sum,carry); //half adder module 
input a,b;
output sum,carry;
xor(sum,a,b);
and(carry,a,b);
endmodule