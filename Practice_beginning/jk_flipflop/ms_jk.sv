module ms_jk(j,k,clk,q,qbar);
input j,k,clk;
output q,qbar;
wire w1,w2,w3;

jk gh (.j(j),.k(k),.clk(clk),.q(w1),.qbar(w2));
jk hj (.j(w1),.k(w2),.clk(~clk),.q(q),.qbar(qbar));

endmodule
//not working, as i dont know how to connect the output with the input using a wire.
//therfore the test bench is still pending