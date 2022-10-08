//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:04:30 10/06/2022 
// Design Name: 
// Module Name:    D_latch 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
///////////////////////////////////////////////////////////////////////////////
module d_latch ( input d,             // 1-bit input pin for data
                 input en,            // 1-bit input pin for enabling the latch
                 input rstn,         // 1-bit input pin for active-low reset
                 output reg q);       // 1-bit output pin for data output

// This always block is "always" triggered whenever en/rstn/d changes
// If reset is asserted, then the output will be zero
// Else as long as enable is high, output q follows input d

always @ (en or rstn or d)
if (!rstn)
q <= 0;
else
if (en)
q <= d;
endmodule


