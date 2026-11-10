module bilbo(
input clk,
input rst,
input b1,
input b2,
input [7:0]d,
input scan_in,
output reg [7:0]q,
output wire scan_out
);

assign scan_out=q[7];
//LFSR 
wire fd =q[7]^q[3]^q[2]^q[1];

always @(posedge clk) begin
	if(rst)
		q<=8'h00;
	else begin
	case({b1,b2}) 
	2'b00:q<={q[6:0],scan_in};
	2'b01:q<={q[6:0],fd};
	2'b10:q<=d;
	2'b11: begin
	           q[7] <= q[0] ^ d[7];
                    q[6] <= q[7] ^ d[6];
                    q[5] <= q[6] ^ d[5];
                    q[4] <= q[5] ^ d[4];
                    q[3] <= q[4] ^ q[0] ^ d[3];
                    q[2] <= q[3] ^ q[0] ^ d[2];
                    q[1] <= q[2] ^ q[0] ^ d[1];
                    q[0] <= q[1] ^ d[0];
			end
		     endcase
		end
          end
endmodule