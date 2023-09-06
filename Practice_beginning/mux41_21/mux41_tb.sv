module mux41_tb();
reg [3:0]i;
reg [1:0]s;
wire out;

mux41 yu (.i(i),.s(s),.out(out));

initial begin
    i = 4'b0001; s = 2'b00; #4
    i = 4'b1111; s= 2'b01;  #4
    i = 4'b0100; s = 2'b10;#4
    i = 4'b1000; s= 2'b11;#4
    $finish;
end
initial begin
    $dumpfile("mux41_test.vcd");
    $dumpvars;
end
endmodule