`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2026 03:46:47 PM
// Design Name: 
// Module Name: Iota
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


module Iota(
    input wire [1599:0] in,
    input wire [4:0] round,
    output wire [1599:0] out
    );
    
    reg [63:0] rc;
    
    always @(*) begin
        case (round)
            5'd0:  rc = 64'h0000000000000001;
            5'd1:  rc = 64'h0000000000008082;
            5'd2:  rc = 64'h800000000000808A;
            5'd3:  rc = 64'h8000000080008000;
            5'd4:  rc = 64'h000000000000808B;
            5'd5:  rc = 64'h0000000080000001;
            5'd6:  rc = 64'h8000000080008081;
            5'd7:  rc = 64'h8000000000008009;
            5'd8:  rc = 64'h000000000000008A;
            5'd9:  rc = 64'h0000000000000088;
            5'd10:  rc = 64'h0000000080008009;
            5'd11:  rc = 64'h000000008000000A;
            5'd12:  rc = 64'h000000008000808B;
            5'd13:  rc = 64'h800000000000008B;
            5'd14:  rc = 64'h8000000000008089;
            5'd15:  rc = 64'h8000000000008003;
            5'd16:  rc = 64'h8000000000008002;
            5'd17:  rc = 64'h8000000000000080;
            5'd18:  rc = 64'h000000000000800A;
            5'd19:  rc = 64'h800000008000000A;
            5'd20:  rc = 64'h8000000080008081;
            5'd21:  rc = 64'h8000000000008080;
            5'd22:  rc = 64'h0000000080000001;
            5'd23:  rc = 64'h8000000080008008;
            default: rc = 64'h00;
        endcase
    end
    
    assign out[63:0] = in[63:0] ^ rc;
    assign out[1599:64] = in[1599:64];
    
endmodule
