
`timescale 1ns/10ps

module testbench();

reg clk;
reg rst;

wire led;

initial begin
	clk = 0;
	rst = 0;
	
	//reset signal
	#500 rst = 1;
	#500 rst = 0;
	
	#1000000;
	$finishe();
end

//generate 100M clock
always begin
	#5 clk = ~clk;
end

mcu_top u_mcu(
	.clk	(clk),
	.rst	(rst),
	.led	(led)
);

endmodule
