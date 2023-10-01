module onehot_tb ();


onehot gh (.in(in),.out(out) );

localparam data_in = 4;
localparam data_out = 16;

reg [data_in-1:0] in;
wire [data_out-1:0] out;
integer i = 0;

initial begin
   for(i = 0; i<16; i = i + 1)
   begin
       in = i;
       $display("%b",out);
   end
end

initial begin
   $dumpfile("onehot_test.vcd");
   $dumpvars;
end

endmodule