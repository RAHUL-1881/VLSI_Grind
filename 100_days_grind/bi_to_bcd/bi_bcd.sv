module bi_bcd(
  input [31:0] binary_in,
  output [31:0] bcd_out
);
  reg [31:0] decimal_out;
  reg [3:0] digit [7:0];
  integer i = 0;
  integer decimal = 0;

  always @(binary_in) begin
    decimal = 0;
    for (i = 0; i < 32; i = i + 1) begin
      decimal = decimal + (binary_in[i] * 2**i);
    end

    // Convert the decimal value to BCD
    for (i = 0; i < 8; i = i + 1) begin
      digit[i] = decimal % 10;
      decimal = decimal / 10;
    end
  end

  // Assign the BCD value to the output
  assign bcd_out = {digit[7],digit[6],digit[4],digit[5],digit[3],digit[2],digit[1],digit[0]};
endmodule
