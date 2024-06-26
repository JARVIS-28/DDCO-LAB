module xnor_test;
reg a,b;
wire y;

xnor_gate_1 xnor_test(a,b,y);

initial begin
a=0; b=0;
#10
b=0; b=1;
#10
a=1; b=0;
#10
b=1; b=1;
#10
$finish();
end

initial begin
$monitor($time, "a=%b, b=%b, y=%b", a ,b ,y);
end

initial begin

$dumpfile ("xnor_test.vcd");

$dumpvars (0,xnor_test); end

endmodule