`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 16:29:02
// Design Name: 
// Module Name: t_ff
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


module t_ff (
    input clk,
    input t,
    output reg q,
    output qb
);

assign qb = ~q;
initial  q=0;

always @(posedge clk) begin
    if (t)
        q <= ~q;  // Toggle
    else
        q <= q;   // Hold
end

endmodule
