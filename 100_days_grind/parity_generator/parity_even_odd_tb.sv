module p_e_o_tb();
reg [3:0]i;
wire oe,od;

p_e_o yu (i,oe,od);

initial begin
    i=4'b0000; #10
    i=4'b0001; #10
    i=4'b0010; #10
    i=4'b0011; #10
    i=4'b0100; #10
    i=4'b0101; #10
    i=4'b0110; #10
    i=4'b0111; #10
    i=4'b1000; #10
    i=4'b1001; #10
    i=4'b1010; #10
    i=4'b1011; #10
    i=4'b1100; #10
    i=4'b1101; #10
    $finish;
end

initial begin
    $dumpfile("p_e_o_test.vcd");
    $dumpvars;
end

endmodule