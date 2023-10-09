module dff_task ();
  

  task dff_y;
  reg d;
  reg q ;
  reg qbar;
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
