module dff_tb();

reg d,clk;
wire q,qbar;

dff_gh yu (.d(d),.clk(clk),.q(q),.qbar(qbar));

initial begin
    clk = 0; d = 0; #2
    d = 1; #2
    d = 0; #2
    d = 1; #2
    d = 1; #7
    $finish;
end

always #2 clk = ~clk;

initial begin
    $dumpfile("dff_test.vcd");
    $dumpvars;
end

endmodule