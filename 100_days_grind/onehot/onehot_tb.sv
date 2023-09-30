module onehot_tb ();
reg [15:0] in;
wire [15:0] out;
integer i = 0;

onehot gh (.in(in),.out(out) );
defparam gh.data_in = 16;

initial begin
   for(i = 0; i<16; i = i + 1)
   begin
       in = i;
       $display("%b",out)
   end
end

initial begin
   $dumpfile("onehot_test.vcd");
   $dumpvars;
end

endmodule