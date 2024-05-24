module nor_test;
reg a,b;
wire y;

nor_gate nor_test(a,b,y);

initial begin
a = 0; b = 0;
#10
b = 0; b = 1;
#10
a = 1; b = 0;
#10
b = 1; b = 1;
#10
$finish();
end

initial begin

$monitor($time, "a=%b, b=%b, y=%b", a ,b ,y);
end

initial begin

$dumpfile ("nor_test.vcd");

$dumpvars (0,nor_test); end

endmodule