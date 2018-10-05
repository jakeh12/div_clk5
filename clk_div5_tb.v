`timescale 1ns/1ps

module clk_div5_tb();

reg clk_in;
wire clk_out;

clk_div5 dut (
	.clk_in  (clk_in),
	.clk_out (clk_out)
);

initial begin
	clk_in = 0;
end

always #5 clk_in = !clk_in;

initial begin
	$dumpfile ("clk_div5_tb.vcd"); 
	$dumpvars;
end

initial begin
	#200 $finish;
end

endmodule
