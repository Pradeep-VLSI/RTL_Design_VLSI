`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 16:10:27
// Design Name: 
// Module Name: sr_ff_tb
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
module sr_ff_tb;

 reg clk, s, r;
 wire q, qb;

// Instantiate SR FF
SR_FF uut (.clk(clk), .s(s), .r(r), .q(q), .qb(qb));

// Clock Generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Apply Inputs
initial begin
    $display("Time\tCLK S R | Q QB");
    $monitor("%0t\t %b  %b %b | %b %b", $time, clk, s, r, q, qb);

    s = 0; r = 0; #12;  // No change
    s = 1; r = 0; #10;  // Set
    s = 0; r = 1; #10;  // Reset
    s = 1; r = 1; #10;  // Invalid
    s = 0; r = 0; #10;  // Hold
    $finish;
end

endmodule