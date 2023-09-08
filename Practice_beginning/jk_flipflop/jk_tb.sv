module jk_tb ();
  reg j,k,clk;
  wire q,qbar;

  jk haha (j,k,clk,q,qbar);

  initial begin
    j = 0; k= 0; #10
    j = 0; k= 1; #10
    j = 1; k= 0; #10
    j = 1; k= 1; #30
    $finish;
  end  

  always #5 clk = ~clk;

  initial begin
    $dumpfile("jk_test.vcd");
    $dumpvars;
  end
endmodule