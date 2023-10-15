module dff_task(d,clk,q);

input d,clk;
output reg q = 0;

always @(clk) begin
   q <= d;
end

endmodule