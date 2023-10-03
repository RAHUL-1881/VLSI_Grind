module dec_tb();
reg [31:0] binary_in;
wire [31:0]decimal_out;

dec gh (.binary_in(binary_in),.decimal_out(decimal_out));

initial begin
    binary_in = {32'd1234}; #5
    $finish;
end

initial begin
    $dumpfile("dec.vcd");
    $dumpvars;
end

endmodule