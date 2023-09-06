module mux21_tb();
reg a,b,s;
wire out;

mux21 gh (.a(a), .b(b), .s(s), .out(out));
initial begin
   $dumpfile("mux_test.vcd");
   $dumpvars; 
end
always #10 begin  a = 1'b1; b = 1'b0; s = 1'b0; end
endmodule