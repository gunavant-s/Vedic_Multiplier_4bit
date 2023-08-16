`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 16.08.2023 08:04:43
// Design Name: 
// Module Name: vedic_4bit
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


module vedic_4bit(input [3:0]a,
                  input [3:0]b,
                  output [7:0]c
                  );
        wire[3:0] q0,q1,q2,q3,q4;
        wire [5:0] q5,q6;
        wire [3:0]temp1;
        wire [5:0]temp2,temp3,temp4;
        vedic_2bit V1(a[1:0], b[1:0], q0);
        vedic_2bit V2(a[3:2], b[1:0], q1);
        vedic_2bit V3(a[1:0], b[3:2], q2);
        vedic_2bit V4(a[3:2], b[3:2], q3);
                
        assign temp1 = {2'b0,c[3:2]};
        assign temp2 = {2'b0,q2[3:0]};
        assign temp3 = {q3[3:0], 2'b0};
        assign temp4 = {2'b0, q4[3:0]};
        assign q4 = q1 + temp1;
        assign q5 = temp2 + temp3;
        assign q6 = q5 + temp4;
        assign c[1:0] = q0[1:0];
        assign c[7:2] = q6[5:0];
      
endmodule
