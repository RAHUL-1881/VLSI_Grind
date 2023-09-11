module four_up_down_counter_tb();
reg clk,m;
wire [3:0]out;

four_up_down_counter yu (clk,m,out);

initial begin
    clk = 0;
    m = 0; #60
    m = 1; #60
    $finish;
end

always #2 clk = ~clk;

initial begin
    $dumpfile("four_up_down_counter.vcd");
    $dumpvars;
end

endmodule