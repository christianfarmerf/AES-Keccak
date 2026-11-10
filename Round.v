`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2026 06:30:49 PM
// Design Name: 
// Module Name: Round
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


module Round(
    input wire [1599:0] in,
    input wire [4:0] round,
    output wire [1599:0] out
    );
    
    wire [1599:0] afterTheta;
    wire [1599:0] afterRhoPi;
    wire [1599:0] afterChi;
    
    Theta T1 (.in(in), .out(afterTheta));
    RhoPi RP1 (.in(afterTheta), .out(afterRhoPi));
    Chi C1 (.in(afterRhoPi), .out(afterChi));
    Iota I1 (.in(afterChi), .round(round), .out(out));
endmodule
