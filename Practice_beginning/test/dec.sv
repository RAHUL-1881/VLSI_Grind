module dec(
  input [31:0] binary_in,
  output [31:0] decimal_out
);

  integer i = 0;
  integer decimal = 0;

  always @(binary_in) begin
    decimal = 0;
    for (i = 0; i < 32; i = i + 1) begin
      decimal = decimal + (binary_in[i] * 2**i);
    end
  end

  assign decimal_out = decimal;

endmodule