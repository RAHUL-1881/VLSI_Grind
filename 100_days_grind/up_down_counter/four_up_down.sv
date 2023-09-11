module four_up_down_counter(clk,m,out);
input clk,m;
output [3:0]out;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9;

jk gh (.j(1'b1),.k(1'b1),.clk(clk),.q(w1),.qbar(w2));
mux21 jk (.i({w1,w2}),.s(m),.out(w3));
jk hj (.j(1'b1),.k(1'b1),.clk(w3),.q(w4),.qbar(w5));
mux21 kl (.i({w4,w5}),.s(m),.out(w6));
jk yu (.j(1'b1),.k(1'b1),.clk(w6),.q(w7),.qbar(w8));
mux21 lp (.i({w7,w8}),.s(m),.out(w9));
jk po (.j(1'b1),.k(1'b1),.clk(w9),.q(out[3]));

assign out[0] = w1;
assign out[1] = w4;
assign out[2] = w7;

endmodule