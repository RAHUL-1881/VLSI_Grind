module xor_gate_tb;

  reg A, B;
  wire Y;

  xor_gate hh(.A, .B, .Y);

  initial begin
   $dumpfile("test_exor.vcd");
   $dumpvars(0,xor_gate_tb);
   
   #1 A=1'b0;
   #2 B=1'b0;
   #4 A=1'b0;
   
   #200 $finish;
   
   
  end

endmodule
