module dff_ta();
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