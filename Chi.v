`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2026 03:26:14 PM
// Design Name: 
// Module Name: Chi
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


module Chi(
    input wire [1599:0] in,
    output wire [1599:0] out
    );
    
    //lanes
    wire [63:0] L0 = in[64*0 + 63 : 64*0];
    wire [63:0] L1 = in[64*1 + 63 : 64*1]; 
    wire [63:0] L2 = in[64*2 + 63 : 64*2];
    wire [63:0] L3 = in[64*3 + 63 : 64*3];
    wire [63:0] L4 = in[64*4 + 63 : 64*4];
    
    wire [63:0] L5 = in[64*5 + 63 : 64*5];
    wire [63:0] L6 = in[64*6 + 63 : 64*6];
    wire [63:0] L7 = in[64*7 + 63 : 64*7];
    wire [63:0] L8 = in[64*8 + 63 : 64*8];
    wire [63:0] L9 = in[64*9 + 63 : 64*9];
    
    wire [63:0] L10 = in[64*10 + 63 : 64*10];
    wire [63:0] L11 = in[64*11 + 63 : 64*11];
    wire [63:0] L12 = in[64*12 + 63 : 64*12];
    wire [63:0] L13 = in[64*13 + 63 : 64*13];
    wire [63:0] L14 = in[64*14 + 63 : 64*14];
    
    wire [63:0] L15 = in[64*15 + 63 : 64*15];
    wire [63:0] L16 = in[64*16 + 63 : 64*16];
    wire [63:0] L17 = in[64*17 + 63 : 64*17];
    wire [63:0] L18 = in[64*18 + 63 : 64*18];
    wire [63:0] L19 = in[64*19 + 63 : 64*19];
    
    wire [63:0] L20 = in[64*20 + 63 : 64*20];
    wire [63:0] L21 = in[64*21 + 63 : 64*21];
    wire [63:0] L22 = in[64*22 + 63 : 64*22];
    wire [63:0] L23 = in[64*23 + 63 : 64*23];
    wire [63:0] L24 = in[64*24 + 63 : 64*24];
    
    //Chi
    assign out[64*0 + 63 : 64*0] = L0 ^ (~L1 & L2);
    assign out[64*1 + 63 : 64*1] = L1 ^ (~L2 & L3);
    assign out[64*2 + 63 : 64*2] = L2 ^ (~L3 & L4);
    assign out[64*3 + 63 : 64*3] = L3 ^ (~L4 & L0);
    assign out[64*4 + 63 : 64*4] = L4 ^ (~L0 & L1);
    
    assign out[64*5 + 63 : 64*5] = L5 ^ (~L6 & L7);
    assign out[64*6 + 63 : 64*6] = L6 ^ (~L7 & L8);
    assign out[64*7 + 63 : 64*7] = L7 ^ (~L8 & L9);
    assign out[64*8 + 63 : 64*8] = L8 ^ (~L9 & L5);
    assign out[64*9 + 63 : 64*9] = L9 ^ (~L5 & L6);
    
    assign out[64*10 + 63 : 64*10] = L10 ^ (~L11 & L12);
    assign out[64*11 + 63 : 64*11] = L11 ^ (~L12 & L13);
    assign out[64*12 + 63 : 64*12] = L12 ^ (~L13 & L14);
    assign out[64*13 + 63 : 64*13] = L13 ^ (~L14 & L10);
    assign out[64*14 + 63 : 64*14] = L14 ^ (~L10 & L11);
    
    assign out[64*15 + 63 : 64*15] = L15 ^ (~L16 & L17);
    assign out[64*16 + 63 : 64*16] = L16 ^ (~L17 & L18);
    assign out[64*17 + 63 : 64*17] = L17 ^ (~L18 & L19);
    assign out[64*18 + 63 : 64*18] = L18 ^ (~L19 & L15);
    assign out[64*19 + 63 : 64*19] = L19 ^ (~L15 & L16);
    
    assign out[64*20 + 63 : 64*20] = L20 ^ (~L21 & L22);
    assign out[64*21 + 63 : 64*21] = L21 ^ (~L22 & L23);
    assign out[64*22 + 63 : 64*22] = L22 ^ (~L23 & L24);
    assign out[64*23 + 63 : 64*23] = L23 ^ (~L24 & L20);
    assign out[64*24 + 63 : 64*24] = L24 ^ (~L20 & L21);
endmodule
