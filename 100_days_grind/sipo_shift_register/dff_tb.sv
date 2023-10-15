module dff_tb();

reg d,clk;
wire q;

dff_task yu (.d(d),.clk(clk),.q(q));

initial begin
    clk = 0; d = 0; #2
     d = 0; #2
    d = 1; #2
    d = 0; #2
    d = 1; #2
    d = 1; #2
    d = 0; #2
    d = 0; #2
    d = 1; #2
    d = 0; #2
    d = 1; #2
    d = 1; #2
    d = 0; #2
    d = 1; #2
    d = 0; #2
    d = 0; #2
    d = 1; #2
    d = 0; #2
    d = 1; #2
    d = 0; #2
    d = 1; #2
    $finish;
end

always #2 clk = ~clk;

initial begin
    $dumpfile("dff_test.vcd");
    $dumpvars;
end

endmodule