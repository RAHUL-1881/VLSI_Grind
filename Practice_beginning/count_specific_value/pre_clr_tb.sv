module pre_clr_tb();
reg clk,pre,clr,j,k;
wire q,qbar;

pre_clr gh (.q(q),.qbar(qbar),.clk(clk),.clr(clr),.j(j),.k(k),.pre(pre));

initial begin
    clk = 0; pre = 1; clr = 1;
    j = 0; k = 0; #10
    j = 1; k = 0; #10
    clr = 0; #2
    clr = 1; #2
    j = 1; k = 0; #10
    j = 1; k = 1; #10
    j = 0; k = 1; #10
    j = 1; k = 1; #10
    $finish;
end

always #5 clk = ~clk;

initial begin
    $dumpfile("pre_clr_test.vcd");
    $dumpvars;
end
endmodule