`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 17:13:09
// Design Name: 
// Module Name: moore_fsm_tb
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


module moore_fsm_tb;

    reg clk, reset;
    wire [1:0] state;

    moore_fsm uut (.clk(clk), .reset(reset), .state(state));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("Time\tclk\treset\tstate");
        $monitor("%0t\t%b\t%b\t%b", $time, clk, reset, state);

        reset = 1; #10;
        reset = 0; #60;
        $finish;
    end

endmodule

