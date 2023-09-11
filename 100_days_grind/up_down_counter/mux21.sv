module mux21 (i,s,out);
input [1:0]i;
input s;
output out;

assign out = s ? i[1]:i[0];

endmodule