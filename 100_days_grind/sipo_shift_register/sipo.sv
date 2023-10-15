module sipo(d,clk,o);

input d,clk;
output [3:0]o;
wire w1,w2,w3;

dff_task ty (.d(d),.clk(clk),.q(w1));
dff_task yu (.d(w1),.clk(clk),.q(w2));
dff_task ui (.d(w2),.clk(clk),.q(w3));
dff_task tj (.d(w3),.clk(clk),.q(o[3]));

assign o[0] = w1;
assign o[1] = w2;
assign o[2] = w3;

endmodule