`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 14:56:42
// Design Name: 
// Module Name: mux_2_tb
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



module mux_2_tb;
    reg a, b, s;
    wire y;

    // match the module name exactly: mux
    mux_2 uut (.a(a), .b(b), .s(s), .y(y));

    initial begin
        $display("time\ts a b | y");
        $monitor("%0t\t %b %b %b | %b", $time, s, a, b, y);
        
        a = 0; b = 0; s = 0; #10;
        a = 1; b = 0; s = 0; #10;
        a = 0; b = 1; s = 1; #10;
        a = 1; b = 1; s = 1; #10;

        $finish;
    end
endmodule



