module majority3 (i,out);
input [2:0]i;
output out;

assign out = (i[1] & i[2]) or (i[0] & (i[1] or i[2]));

endmodule