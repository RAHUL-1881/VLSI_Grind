module comp_2 (out,a);
    input  [3:0]a;
    output reg [3:0]out;
    reg x;
    always @(a) begin
       out <= ~a + 1;
    end
endmodule