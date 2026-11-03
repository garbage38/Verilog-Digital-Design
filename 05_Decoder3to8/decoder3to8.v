module decoder3to8  #(parameter N=3) (
input [N-1:0]s,
output reg [(2**N)-1:0]y
);

always @(*) begin
	y=0;
	y[s]=1'b1;
end
endmodule