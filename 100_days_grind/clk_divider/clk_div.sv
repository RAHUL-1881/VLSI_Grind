module clk_div (
    clk,rst,clk2,clk4,clk8
);
input clk,rst;
output reg clk2,clk4,clk8;
reg [3:0]count='0;

always @(clk) begin
    if(rst || count>'1)
    count <= '0;
    else
    count <= count+1;
    
    clk2 <= count[1];
    clk4 <= count[2];
    clk8 <= count[3];
end
    
endmodule