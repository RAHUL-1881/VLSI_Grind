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
    for (i = 0; i < 8; i = i + 1) begin
    bcd[i] = decimal_out[31 - 4 * i : 31 - 4 * i - 3];
  end
  end
    
    assign decimal_out = decimal;
endmodule