module rca(
input [7:0]a,
input [7:0]b,
input cin,
output reg [7:0]sum,
output reg cout
);

wire [8:0]c;
assign c[0]=cin;
always @(*) begin
integer i;

for (i=0;i<8;i=i+1) begin
	sum[i]=a[i]^b[i]^c[i];
	c[i+1]=(a[i]&b[i]) |( a[i]&c[i]) |( b[i]&c[i]);
end
	assign cout = c[8];
end 
endmodule