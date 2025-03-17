`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:33:08 03/02/2025
// Design Name:   Frequency_Divider_N
// Module Name:   /home/mithu/xilinxpractice/frequencydivider/Frequency_Divider_N_tb.v
// Project Name:  frequencydivider
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Frequency_Divider_N
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Frequency_Divider_N_tb;

reg clk;
reg rst;
wire clk_out;

// Instantiate Frequency Divider (Divide by 4)
Frequency_Divider_N #(.N(4)) uut (
    .clk(clk),
    .rst(rst),
    .clk_out(clk_out)
);

// Generate Clock (50 MHz)
always #10 clk = ~clk; // Period = 20 ns → Frequency = 50 MHz

initial begin
    $monitor("Time = %0t | clk = %b | clk_out = %b", $time, clk, clk_out);

    clk = 0;
    rst = 1; #20;
    rst = 0; #400; // Run simulation
end

endmodule

