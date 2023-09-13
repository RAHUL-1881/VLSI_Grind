module modn_coun_tb();
reg clk;
wire [2:0]out;

modn_counter yu(.clk(clk),.out(out));

initial begin
    clk = 0; #250
    $finish;
end

always #5 clk = ~clk;

initial begin
    $dumpfile("modn_count.vcd");
    $dumpvars;
end

endmodule