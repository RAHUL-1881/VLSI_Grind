module majority3_tb ();
   reg [2:0]i;
   wire out;

   majority3 yu (.i(i),.out(out));

   initial begin
    i = 3'b000; #4
    i = 3'b001; #4
    i = 3'b010; #4
    i = 3'b011; #4
    i = 3'b100; #4
    i = 3'b101; #4
    i = 3'b110; #4
    i = 3'b111; #4
    i = 3'b000; #4
    $finish;
    end 

    initial begin
        $dumpfile("majority3.vcd");
        $dumpvars;
    end
endmodule