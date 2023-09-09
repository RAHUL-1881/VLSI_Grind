module count_3_tb();
reg clk;
wire [2:0]q;

count_3 yu (clk,q);

initial begin
    clk = 0; #70
    $finish;
    $dumpfile("count_3_tb.vcd");
    $dumpvars;
end

always #5 clk = ~clk;

endmodule