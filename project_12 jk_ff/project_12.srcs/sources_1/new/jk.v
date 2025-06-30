`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 16:21:54
// Design Name: 
// Module Name: jk
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module jk(
    input clk,
    input j,
    input k,
    output reg q,
    output qb
);

assign qb = ~q;

always @(posedge clk) begin
    case ({j, k})
        2'b00: q <= q;       // No change
        2'b01: q <= 0;       // Reset
        2'b10: q <= 1;       // Set
        2'b11: q <= ~q;      // Toggle
     endcase
    end
endmodule


