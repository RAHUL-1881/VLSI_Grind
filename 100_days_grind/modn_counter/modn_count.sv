// THis is a mod n counter or to be specific it counts to a perticular value.
// In this example the counter counts till 5 and then resets back;

module modn_counter (clk,out);

input clk;
output [2:0]out;
wire w1,w2,w3,wz;

assign wz = w1 & ~w2 & ~w3;
pre_clr gh (.j(1'b1),.k(1'b1),.pre(1'b1),.clr(wz),.clk(clk),.q(w1));
pre_clr hj (.j(1'b1),.k(1'b1),.pre(1'b1),.clr(wz),.clk(w1),.q(w2));
pre_clr op (.j(1'b1),.k(1'b1),.pre(1'b1),.clr(wz),.clk(w2),.q(w3));
assign out[0] = w1;
assign out[1] = w2;
assign out[2] = w3;
endmodule