module bi_bcd_tb();
reg [31:0]binary_in;
wire [31:0]bcd_out;

bi_bcd gh (.binary_in(binary_in),.bcd_out(bcd_out));

initial begin
    binary_in = 32'b00000000000000000000000000001111; #5
    binary_in = 32'b00000000000000000000000000011111; #5
    binary_in = 32'b00000000000000000000000000111111; #5
    binary_in = 32'b00000000000000000000000001111111; #5
    binary_in = 32'b00000000000000000000000000001111; #10
    $finish;
end

initial begin
    $dumpfile("bi_bcd_test.vcd");
    $dumpvars;
end
endmodule