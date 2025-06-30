`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 16:45:57
// Design Name: 
// Module Name: down_2
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


module down_2(
    input reset,
    input clk,
    output reg [1:0]count
    );
    always@(posedge clk or posedge reset)
    begin
    if(reset)
    count <= 2'b11;
    else
    count <= count-1;
    end
endmodule
