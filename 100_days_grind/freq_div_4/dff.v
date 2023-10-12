module dff_gh(d,clk,q,qbar);

dff_ta gh();

input d,clk;
output reg q = 0; 
output reg qbar = 1;

always @(posedge clk) begin
    gh.dff_y(d,q,qbar);
end

endmodule