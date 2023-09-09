module count_1 (clk,q);
input clk;
output q;
wire w1;

d_ff kl (.d(w1),.clk(clk),.q(q),.qbar(w1));

endmodule