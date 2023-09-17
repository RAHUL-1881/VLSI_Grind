module p_e_o (i,oe,od);
input [3:0]i;
output oe,od;
wire w1,w2,w3,w4;

xor(w1,i[0],i[1]);
xor(w2,i[2],i[3]);
xor(oe,w1,w2);
xnor(w3,i[0],i[1]);
xnor(w4,i[2],i[3]);
xnor(od,w3,w4);

endmodule
