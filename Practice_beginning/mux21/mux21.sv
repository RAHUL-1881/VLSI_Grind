module mux21 (a,b,s,out);
input a,b,s;
output out;
assign out = s ? b:a;
endmodule