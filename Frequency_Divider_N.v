`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:23 03/02/2025 
// Design Name: 
// Module Name:    Frequency_Divider_N 
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
module Frequency_Divider_N #(
    parameter N = 4  // Division Factor (e.g., 4 → divide by 4)
)(
    input clk,       // Input clock
    input rst,       // Reset
    output reg clk_out // Divided clock output
);

reg [$clog2(N)-1:0] count; // Counter variable

always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 0;
        clk_out <= 0;
    end else if (count == (N/2 - 1)) begin
        clk_out <= ~clk_out; // Toggle output
        count <= 0; // Reset counter
    end else begin
        count <= count + 1;
    end
end

endmodule
