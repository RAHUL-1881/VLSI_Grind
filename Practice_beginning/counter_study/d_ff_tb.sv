module d_ff_tb ();
reg d,clk;
wire q,qbar;
d_ff gh (d,clk,q,qbar);

initial begin
    clk = 0; d = 1; #15
    d = 0; #15
    d = 1; #15
    d = 1; #15
    d = 1; #15
    d = 1; #25
$finish;
end

always #5 clk=~clk;

initial begin
    $dumpfile("d_ff.vcd");
    $dumpvars;
end
endmodule