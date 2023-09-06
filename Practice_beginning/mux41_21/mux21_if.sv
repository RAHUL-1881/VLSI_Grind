module mux21_if(out,i,sel);

input sel;
input [1:0]i ;
output reg out;

always @ (*) begin
    
if(sel) begin
    out <= i[1];
end
else
    out <= i[0];
end
endmodule