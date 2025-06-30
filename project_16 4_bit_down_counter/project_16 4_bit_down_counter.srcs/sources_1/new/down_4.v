`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 16:58:10
// Design Name: 
// Module Name: down_4
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

module down_4(
    input reset,
    input clk,
    output reg [3:0]count
    );
    always@(posedge clk or posedge reset)
    begin
    if(reset)
    count <= 4'b1111;
    else
    count <= count-1;
    end
endmodule
