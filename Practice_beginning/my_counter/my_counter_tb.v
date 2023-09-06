module my_counter_tb();
reg clk,rst;
wire [3:0]count;

my_counter ha (.clk(clk),.rst(rst),.out(count));

initial begin
    clk = 1'b0; rst = 1'b1;
    #100 rst = 1'b0;
    #2000 $finish;
end
always #50 clk = ~clk;
initial begin
    $dumpfile("count.vcd");
    $dumpvars;
    $monitor("%d,%b,%b,%d",$time,clk,rst,count);
end
endmodule
