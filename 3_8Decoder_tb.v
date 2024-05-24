`timescale 1ns/100ps
`include "3_8Decoder.v"

module 3_8Decoder_tb();
reg [2:0] sel;
reg enb_;
wire [7:0] o;

decoder idecoder(o, enb_, sel);

initial begin
    $dumpfile("3_8Decoder.vcd");
    $dumpvars(0, 3_8Decoder_tb);

    $monitor(o);
    enb_=1;
    sel=3'b000; #10;
    enb_=0;
    sel=3'b000; #10;
    sel=3'b001; #10;
    sel=3'b010; #10;
    sel=3'b011; #10;
    sel=3'b100; #10;
    sel=3'b101; #10;
    sel=3'b110; #10;
    sel=3'b111; #10;
    $finish;
end
endmodule
