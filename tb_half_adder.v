module tb_half_adder;
//step 1 : declare variable for connecting input and output
reg a_tb,b_tb;
wire sum_tb,carry_tb;

//step 2 : Instantiation of design in TB
half_adder dut(a_tb,b_tb,sum_tb,carry_tb);

//Initialisation of input
initial
	begin
		{a_tb,b_tb}=2'b00;
	end
//step4 : Driving inputs and collection outputs
initial
	begin
		a_tb=0;
		b_tb=1;
                #1;
		$display("The sum is %d and the carry is %d",sum_tb,carry_tb);

		
		a_tb=1;
		b_tb=0;
		#1;
		$display("The sum is %d and the carry is %d",sum_tb,carry_tb);
                
		a_tb=1;
		b_tb=1;
		#1;
		$display("The sum is %d and the carry is %d",sum_tb,carry_tb);
	end 
endmodule
	