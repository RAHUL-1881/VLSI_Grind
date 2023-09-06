module clk_div_tb();
reg clk,rst;
wire clk2,clk4,clk8;

clk_div gh (clk,rst,clk2,clk4,clk8);

initial begin
    clk = 0;
    rst = 0; #200
    rst = 1; #5
    $finish;
end
always #5 clk = ~clk;
initial begin
    $dumpfile("clk_test.vcd");
    $dumpvars;
end
endmodule
