module bi_bcd(in,out);
parameter bi_in = 4;
//parameter bcd_out = 8;

input [bi_in-1:0]in;
output [1:0]out;
integer  decimal = 0;
integer i = 0;

always @(*) begin
    decimal = 0;
    for(i = 0; i < bi_in; i = i+1)
    begin
         decimal = (in[i]*(2**i)) + decimal;
    end
end

assign out = decimal;

endmodule