module and_test;

reg a, b;
wire y;

basic_and and_test(a,b,y);
initial

begin

#0 a=0;b=0;

#5 a=0;b=1;

#10 a=1;b=0;

#15 a=1;b=1;

end
initial
begin

$monitor($time, "a=%b, b=%b, y=%b", a ,b ,y);
end

initial
begin

$dumpfile ("and_test.vcd");

$dumpvars (0,and_test); end

endmodule