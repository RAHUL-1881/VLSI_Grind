module full_adder(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output reg cout;
output reg [3:0]sum;
reg [2:0]i;
reg carry;

always @ ( * )
begin
    carry = cin;
    for (i = 0; i<4; i= i+1)
    begin
        {carry,sum[i]} = a[i]+b[i]+carry;
    end
    cout = carry;
   
end
endmodule
