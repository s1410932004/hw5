`timescale 1ns/10ps
module LFSR_tb;
reg clk,set;
wire [2:0] out;

LFSR LFSR_tb(
         .clk(clk),
         .set(set),
         .out(out)
     );
initial
begin
    clk = 0;
    set = 0;
end

always #50 clk = ~clk;

initial
    #50 set = 1'b1;
initial
    #150 set = 1'b0;
initial
    #2000 $finish;


initial
begin
    $dumpfile("LFSR.vcd");
    $dumpvars(0, LFSR_tb);
end

endmodule
