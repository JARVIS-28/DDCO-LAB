module halfadd(a,b,sum,count);
input a,b;
output sum,count;
xor2 x0( a,b,sum);
and2 a0(a,b,count);
endmodule