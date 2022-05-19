module LFSR (clk,set,out);
input clk,set;
output reg [2:0] out ;
always @(posedge clk)
begin
    if(set)
        out <=3'b110;
    else
        out <= {out[1],out[0],out[2]^out[0]};
end
endmodule
