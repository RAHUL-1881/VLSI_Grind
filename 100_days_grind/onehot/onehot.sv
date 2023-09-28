module onehot (in,out);
parameter data_in = 8;
input [data_in-1:0] in;
output [data_in-1:0] out;

assign out = 1'b1<<in;
endmodule

