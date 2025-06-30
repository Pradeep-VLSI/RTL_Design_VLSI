`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 16:22:33
// Design Name: 
// Module Name: jk_tb
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


module jk_TB;

reg clk, j, k;
wire q, qb;

// Instantiate JK FF
jk  uut (
    .clk(clk),
    .j(j),
    .k(k),
    .q(q),
    .qb(qb)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Stimulus
initial begin
    $display("Time\tCLK J K | Q QB");
    $monitor("%0t\t %b  %b %b | %b %b", $time, clk, j, k, q, qb);

    j = 0; k = 0; #12;  // No change
    j = 0; k = 1; #10;  // Reset
    j = 1; k = 0; #10;  // Set
    j = 1; k = 1; #10;  // Toggle
    j = 1; k = 1; #10;  // Toggle again
    j = 0; k = 0; #10;  // Hold
    $finish;
end

endmodule

