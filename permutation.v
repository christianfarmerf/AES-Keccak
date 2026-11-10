`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2026 08:05:47 PM
// Design Name: 
// Module Name: permutation
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


module permutation(
    input wire [1599:0] in,
    input wire clk, rst, start,
    output reg done = 1'b0,
    output wire [1599:0] out
    );
    
    reg [4:0] round = 5'd0;
    reg busy = 1'b0;
    reg [1599:0] state;
    wire [1599:0] round_out;
    
    Round R1 (.in(state), .round(round), .out(round_out));
    
    assign out = state;
    
    always @(posedge clk) begin
        if (rst) begin
            busy <= 1'b0;
            done <= 1'b0;
        end
        else if (start && !busy) begin
            state <= in;
            round <= 5'd0;
            busy <= 1'b1;
            done <= 1'b0;
        end
        else if (busy) begin
            state <= round_out;
            if (round == 5'd23) begin
                busy <= 1'b0;
                done <= 1'b1;
            end
            else round <= round + 5'd1;
        end
    end
    
endmodule
