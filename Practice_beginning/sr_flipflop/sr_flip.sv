module sr (clk,s,r,q,qbar);
input clk,s,r;
output reg q=0,qbar;
always @(posedge clk) begin
    case ({s,r})
       2'b00 : begin
        q = q;
       end
       2'b01 : begin
        q = 0;
        end
        2'b10 : begin
        q = 1;
        end
        default: q = 1'bx;
    endcase
    qbar = ~q;
end
endmodule