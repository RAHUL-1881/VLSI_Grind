module bi_bcd_tb();

reg [bi_in-1:0]in;
wire [1:0]out;

bi_bcd gh (.in(in),.out(out));
localparam bi_in = 4;

initial begin
    in = 1100; #5
    in = 1101; #5
    $finish;
end

initial begin
    $dumpfile("bi_bcd.vcd");
    $dumpvars;
end
endmodule