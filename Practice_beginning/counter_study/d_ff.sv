module d_ff (d,clk,q,qbar);
input d,clk;
output reg q = 0,qbar =1;

always @(posedge clk) begin
    q = d;
    qbar = ~q;
end
endmodule