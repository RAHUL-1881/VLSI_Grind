module dff_gh(d,clk,q,qbar);

input d,clk;
output reg q = 0; 
output reg qbar = 1;

always @(clk) begin
    dff_y(d,q,qbar);
end

task dff_y;
  input reg d;
  output reg q;
  output reg qbar;
    begin
        if (d == 0)begin
            q = 0;
            qbar = ~q;
        end
          
        else begin
            q = 1;
            qbar = ~q;
        end
    end
  endtask
endmodule