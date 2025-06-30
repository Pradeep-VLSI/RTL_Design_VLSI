`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 15:14:20
// Design Name: 
// Module Name: deco_24_tb
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

module deco24_tb;
    reg [1:0] in;
    wire [3:0] out;

    deco_24 uut (.in(in), .out(out));

    initial begin
        $display("Time\tIn | Out");
        $monitor("%0t\t %b | %b", $time, in, out);

        in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;

        $finish;
    end
endmodule

