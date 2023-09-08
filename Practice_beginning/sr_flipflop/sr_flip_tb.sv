module sr_tb();
reg clk,s,r;
wire q,qbar;

sr yt (.clk(clk),.s(s),.r(r),.q(q),.qbar(qbar));

initial begin
    clk = 0;
    s = 0; r= 0; #10
    s = 0; r= 1; #10
    s = 1; r= 0; #10
    s = 1; r= 1; #10
$finish;
end
always #5 clk = ~clk;
initial begin
    $dumpfile("sr_test");
    $dumpvars;
end
endmodule