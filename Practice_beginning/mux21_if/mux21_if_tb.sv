module mux21_if_tb ();
reg sel;
reg [1:0]i;
wire out;

mux21_if gh(.sel(sel),.out(out),.i(i));

initial begin
    i=2'b01; sel = 1'b0; #1
    i=2'b10; sel = 1'b1; #1
    i=2'b01; sel = 1'b1; #1
    i=2'b10; sel = 1'b0; #1
    i=2'b01; sel = 1'b0; #1
    i=2'b11; sel = 1'b0; #1
    $finish;
end
initial begin
    $dumpfile("mux21_test.vcd");
    $dumpvars;
end
endmodule