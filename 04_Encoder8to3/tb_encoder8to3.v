module tb_encoder8to3;

//var declare for input and output port
reg [7:0]D;
wire [2:0]y;

//instantiation
encoder8to3 dut (.D(D),.y(y));

//initialization of input

//Drive input 
initial
	begin 
$monitor("Time=%0t | D =%d | y= %b",$time,D,y);

D=8'd1;#1;
D=8'd2;#1;
D=8'd4;#1;
D=8'd8;#1;
D=8'd16;#1;
D=8'd32;#1;
D=8'd64;#1;
D=8'd128;#1;
$finish;
	end
endmodule

		
	
