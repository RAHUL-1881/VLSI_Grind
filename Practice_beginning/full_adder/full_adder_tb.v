module full_adder_tb;

  // Declare the DUT (Design Under Test)
  full_adder DUT (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );

  // Declare the test vectors
  reg [3:0] a;
  reg [3:0] b;
  reg cin;
  wire [3:0]sum;

  // Initialize the test vectors
  initial begin
    a = 4'b1010; #20
    b = 4'b0101; #20
    cin = 1'b0;  #20 $finish;
  end
  initial begin
    $dumpfile("adder_tb.vcd");
    $dumpvars(0,full_adder_tb);
  end
endmodule
