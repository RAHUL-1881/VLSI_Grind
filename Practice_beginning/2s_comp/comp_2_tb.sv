module comp_2_tb();
wire [3:0]out;
reg [3:0]a;

comp_2 gh (.out(out),.a(a));

initial begin
    a = 4'b0101; #20
    a = 4'b1010; #20
    a = 4'b0111; #40
    $finish;
end

initial begin
    $dumpfile("comp_2_test.vcd");
    $dumpvars;
end
endmodule
