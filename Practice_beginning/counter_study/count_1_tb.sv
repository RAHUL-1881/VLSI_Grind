module count_1_tb();
reg clk;
wire q;

count_1 hj (clk,q);

initial begin
    clk = 0; #45
    $finish;
    $dumpfile("count_1_test.vcd");
    $dumpvars; 

end
always #5 clk= ~clk;
endmodule