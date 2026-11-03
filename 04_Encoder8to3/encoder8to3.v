module encoder8to3(
input [7:0]D,
output reg [2:0]y
);

always @(*)
	begin
		y[2]=D[4] | D[5] | D[6] | D[7];
                 y[1]=D[2] | D[3] | D[6] | D[7];
		y[0]=D[1] | D[3]  | D[5] | D[7];
	end
endmodule