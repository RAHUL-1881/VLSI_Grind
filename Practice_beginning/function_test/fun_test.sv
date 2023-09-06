module fun_test (a,b,c,d,e,o1,o2);
    input a,b,c,d,e;
    output o1;
    output reg o2;

    function shit;
    input a,b,c;
    begin
        shit = (a & b) | (b & c) | (c & a);
    end
    endfunction

    assign o1 = shit(a,b,c);
    always @(*) 
    begin
        o2 = shit(c,d,e);
    end
    
endmodule