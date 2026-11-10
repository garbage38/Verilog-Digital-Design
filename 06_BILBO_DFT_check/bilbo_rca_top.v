module bilbo_rca_top(
input wire clk,
input wire rst,
input wire [1:0]mode_ab,
input wire [1:0]mode_c,
input wire scan_in,
input wire [7:0]a,
input wire [7:0]b,
output wire scan_out,
output wire [7:0]signature,
output wire cout, // of rca
output wire [7:0]a_o,
output wire [7:0]b_o
);
wire [7:0]sum;
wire s_a,s_b ;// scan input and output wire 

//Instantiate Bilbo 1
bilbo b1(. clk(clk),.rst(rst),.b1(mode_ab[1]),.b2(mode_ab[0]),.d(a),.scan_in(scan_in),.q(a_o),.scan_out(s_a));
//Instantiate Bilbo 2
bilbo b2(. clk(clk),.rst(rst),.b1(mode_ab[1]),.b2(mode_ab[0]),.d(b),.scan_in(s_a),.q(b_o),.scan_out(s_b));
//Instantiate rca
rca rca8(.a(a_o),.b(b_o),.cin(1'b0),.sum(sum),.cout(cout));
//Instantiate Bilbo 3
bilbo b3(. clk(clk),.rst(rst),.b1(mode_c[1]),.b2(mode_c[0]),.d(sum),.scan_in(s_b),.q(signature),.scan_out(scan_out));

endmodule