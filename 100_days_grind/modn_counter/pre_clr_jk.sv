module pre_clr (q,qbar,clk,pre,clr,j,k);
input clk,pre,clr,j,k;
output reg q = 0, qbar = 1;

    always @( posedge clk) begin
        case ({j,k})
        2'b00 : q = q;
        2'b01 : q = 0;
        2'b10 : q = 1;
        2'b11 : q = ~q;
        endcase
        qbar = ~q;
    end
 
    always @ (*) begin 
        if (pre == 0)
        q = 1;
        else if (clr == 0)
        q = 0;
        else
        q = q;

        qbar = ~q;
    end
endmodule