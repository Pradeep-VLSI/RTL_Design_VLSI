`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 16:50:22
// Design Name: 
// Module Name: up_2
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


module up_2(
    input reset,
    input clk,
    output reg [1:0]count
    );
    always@(posedge clk or posedge reset)
    begin
    if(reset)
    count <= 2'b00;
    else
    count <= count+1;
    end
endmodule