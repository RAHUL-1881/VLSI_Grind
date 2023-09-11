module jk (j,k,clk,q,qbar);
input j,k,clk;
output reg q = 0,qbar = 1;
always @(posedge clk) begin
    case({j,k}) 
    2'b00 : begin
        q = q;
    end
    2'b01 : begin
        q = 0;
    end
    2'b10 : begin
        q = 1;
    end
    2'b11 : begin
        q = ~q;
    end
    endcase
    qbar = ~q;
end
endmodule