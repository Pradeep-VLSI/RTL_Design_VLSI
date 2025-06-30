`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 15:06:40
// Design Name: 
// Module Name: mux_4_tb
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



module mux_4_tb;
   reg[3:0]in;
   reg[1:0]sel;
   wire y;
 mux_4 uut(.in(in),.sel(sel),.y(y));
 initial begin
 $display("Time\tSEL IN | Y");
 $monitor("%0t\t %b %b |%b",$time,in,sel,y);
 
 in=4'b1101;
 sel=2'b00;#10;
 sel=2'b01;#10;
 sel=2'b10;#10;
 sel=2'b11;#10;
 $finish;
 end
 endmodule
