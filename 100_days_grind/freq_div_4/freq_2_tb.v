module freq_2_tb();

freq_2 ty (.clk(clk),.out(out));

reg clk;
wire out;

initial begin
    clk = 0; #160
    $finish;
end

always #2 clk = ~clk;

initial begin
    $dumpfile("freq_test.vcd");
    $dumpvars;
end

endmodule