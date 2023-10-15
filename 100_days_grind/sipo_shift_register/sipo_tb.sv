module sipo_tb();

reg d,clk;
wire [3:0]o;

sipo io (.d(d),.clk(clk),.o(o));

initial begin
    clk = 0; 
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

initial begin
    $dumpfile("siop_test.vcd");
    $dumpvars;
end

always #2 clk = ~clk;

endmodule