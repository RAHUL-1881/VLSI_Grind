module mux41(i,s,out);
input [3:0]i;
input [1:0]s;
output out;
wire x1,x2;

mux21_if hj (.sel(s[1]),.i(i[1:0]),.out(x1));
mux21_if jk (.sel(s[1]),.i(i[3:2]),.out(x2));
mux21_if lp (.sel(s[0]),.i({x1,x2}),.out(out));

endmodule
