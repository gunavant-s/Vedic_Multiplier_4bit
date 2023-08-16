`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 16.08.2023 07:33:40
// Design Name: 
// Module Name: vedic_2bit
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


module vedic_2bit(input [2:0]a,
                  input [2:0]b,
                  output s0,
                  output s1,
                  output s2,
                  output c2
                  );
     
     assign s0 = a[0] & b[0];
     wire temp;
     half_adder H1((a[1]&b[0]), (a[0]&b[1]), temp, s1);
     half_adder H2(temp, (a[1]&b[1]), s2, c2);
     
     
endmodule
