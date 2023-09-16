module majority3 (i,out);
input [2:0]i;
output out;
wire w1,w2,w3,w4;
and (w1,i[1],i[2]);
or (w2,i[1],i[2]);
and(w3,i[0],w2);
or(out,w1,w3);

endmodule