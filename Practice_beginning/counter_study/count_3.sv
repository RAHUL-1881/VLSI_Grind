module count_3 (clk,q);
input clk;
output [2:0]q;
wire w1,w2,w3;
count_1 iu (.clk(clk),.q(w1));
count_1 io (.clk(w1),.q(w2));
count_1 op (.clk(w2),.q(q[2]));

assign q[0] = w1;
assign q[1] = w2;

endmodule