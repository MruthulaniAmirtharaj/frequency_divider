`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:06 03/02/2025 
// Design Name: 
// Module Name:    Frequency_Divider_2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Frequency_Divider_2 (
    input clk,        // Input clock
    input rst,        // Reset signal
    output reg clk_out // Divided clock output
);

always @(posedge clk or posedge rst) begin
    if (rst)
        clk_out <= 0;  // Reset output clock to 0
    else
        clk_out <= ~clk_out; // Toggle output every clock cycle
end

endmodule
