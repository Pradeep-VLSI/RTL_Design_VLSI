`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 16:09:17
// Design Name: 
// Module Name: sr_ff
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


module SR_FF(
    input clk,
    input s,
    input r,
    output reg q,
    output qb
    );
    assign qb = ~q;
    
    always@(posedge clk)
    
    case({s,r})
     2'b00:q<=q;
     2'b01:q<=0;
     2'b10:q<=1;
     2'b11:q<=1'bx;
    endcase

endmodule

