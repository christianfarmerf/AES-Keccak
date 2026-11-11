`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2026 01:08:16 PM
// Design Name: 
// Module Name: sponge
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


module sponge #(parameter RATE = 1344)(
    input wire clk, rst,
    input wire absorb,
    input wire first,
    input wire squeeze,
    input wire [RATE-1:0] block_in,
    output wire [RATE-1:0] block_out,
    output wire ready
    );
    
    wire [1599:0] perm_in;
    wire [1599:0] perm_out;
    wire perm_start, perm_done, perm_busy;
    
    permutation P1 (.in(perm_in), .start(perm_start), .done(perm_done), .clk(clk), .rst(rst), .out(perm_out), .busy(perm_busy));
    
    wire [1599:0] block_wide = {{(1600-RATE){1'b0}}, block_in};
    assign perm_in = (absorb & first) ? block_wide : (absorb) ? block_wide ^ perm_out : perm_out;
    assign perm_start = absorb | squeeze;
    assign block_out = perm_out[RATE-1:0];
    assign ready = ~perm_busy;
    
endmodule
