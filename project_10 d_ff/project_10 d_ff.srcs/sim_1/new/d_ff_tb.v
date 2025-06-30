`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 15:50:38
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb;

    reg clk;
    reg d;
    wire q;
    wire qbar;

    // Instantiate the DFF module
    d_ff uut (
        .clk(clk),
        .d(d),
        .q(q),
        .qbar(qbar)
    );

    // Clock generation (10ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        $display("Time\tclk d | q qbar");
        $monitor("%0t\t %b   %b | %b   %b", $time, clk, d, q, qbar);

        d = 0; #12;   // first rising edge at time 10
        d = 1; #10;
        d = 0; #10;
        d = 1; #10;
        
        $finish;
    end

endmodule
