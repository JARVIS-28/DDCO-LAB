module simple_circuit
(A,B,C,D,E);
output D, E;
input A ,B ,C;
wire w1;
and G1(w1,A,B); //optional gate instant name
not G2(E,C);
or G3(D,w1,E);
endmodule