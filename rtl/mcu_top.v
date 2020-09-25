
module mcu_top(
	clk,
	rst,
	led
);

input clk;
input rst;

output led;

reg led;

reg [15:0] counter;

always@(posedge clk)
begin
	if(rst)begin
		led <= 0;
		counter <= 0;
	end else begin
		counter <= counter +1;
		if(counter >= 16'h8) begin
			counter <= 0;
			led <= ~led;
		end
	end
end 

endmodule
