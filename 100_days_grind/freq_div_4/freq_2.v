module freq_2 (clk,out);
input clk;
output out;
wire w1;
dff_gh yu(w1,clk,out,w1);
assign d = w1;
assign qbar = w1;

endmodule