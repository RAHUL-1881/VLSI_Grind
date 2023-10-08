module fo_jo_tb();
reg [3:0]i;
reg [1:0]s;
wire o;

fo_jo gh (.i(i),.s(s),.o(o));

initial begin
    $monitor("time = %g, input = %b, select_line = %b, output = %b", $time,i,s,o);
    fork
        i = 4'b0000; s = 2'b01;
        #5  i = 4'b0110; #5  s = 2'b01;
        #10 i = 4'b0101; #10 s = 2'b11;
        #2  i = 4'b1110; #2  s = 2'b10;
        #7  i = 4'b1100; #7  s = 2'b00;
    join
end

initial begin
    $dumpfile("fo_jo_test.vcd");
    $dumpvars;
end

endmodule