module my_counter (clk,rst,out);
input  clk,rst;
output [3:0]out;
reg [3:0]out;

always @ (posedge clk)
begin
    if (rst == 1)
    out <= 4'b0000;
    else
        out <= out +1;
end
endmodule