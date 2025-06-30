`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 16:29:54
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb;

reg clk, t;
wire q, qb;

// Instantiate the T FF
t_ff uut (
    .clk(clk),
    .t(t),
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
    $display("Time\tCLK T | Q QB");
    $monitor("%0t\t %b  %b | %b %b", $time, clk, t, q, qb);

    t = 0; #12;  // Hold
    t = 1; #10;  // Toggle
    t = 1; #10;  // Toggle
    t = 0; #10;  // Hold
    t = 1; #10;  // Toggle
    $finish;
end

endmodule
