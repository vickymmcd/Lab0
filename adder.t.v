// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"


module test4BitFullAdder();
    reg [3:0] addr0, addr1;
    wire [3:0] sum;
    wire carryout, overflow;

    FullAdder4bit adder(.sum(sum), .carryout(carryout), .overflow(overflow), .a(addr0), .b(addr1));

    initial begin

    $dumpfile("4bitadder.vcd");
    $dumpvars();

    $display("A0 A1 A2 A3 B0 B1 B2 B3 | Overflow | Overflow Should Be | Sum0 Sum1 Sum2 Sum3 | Sum Should Be");

    addr0[0]=0;addr0[1]=0;addr0[2]=0;addr0[3]=0;addr1[0]=0;addr1[1]=0;addr1[2]=0;addr1[3]=0; #1000
    $display("%b  %b  %b  %b  %b  %b  %b  %b  | %b        | 0                  | %b    %b    %b    %b    |  0000", addr0[0], addr0[1], addr0[2], addr0[3],addr1[0], addr1[1], addr1[2], addr1[3], overflow, sum[0], sum[1], sum[2], sum[3] );
    addr0[0]=0;addr0[1]=0;addr0[2]=0;addr0[3]=0;addr1[0]=0;addr1[1]=0;addr1[2]=0;addr1[3]=0; #1000
    $display("%b  %b  %b  %b  %b  %b  %b  %b  | %b        | 0                  | %b    %b    %b    %b    |  0000", addr0[0], addr0[1], addr0[2], addr0[3],addr1[0], addr1[1], addr1[2], addr1[3], overflow, sum[0], sum[1], sum[2], sum[3] );
    addr0[0]=0;addr0[1]=0;addr0[2]=0;addr0[3]=0;addr1[0]=0;addr1[1]=0;addr1[2]=0;addr1[3]=0; #1000
    $display("%b  %b  %b  %b  %b  %b  %b  %b  | %b        | 0                  | %b    %b    %b    %b    |  0000", addr0[0], addr0[1], addr0[2], addr0[3],addr1[0], addr1[1], addr1[2], addr1[3], overflow, sum[0], sum[1], sum[2], sum[3] );
    addr0[0]=0;addr0[1]=0;addr0[2]=0;addr0[3]=0;addr1[0]=0;addr1[1]=0;addr1[2]=0;addr1[3]=0; #1000
    $display("%b  %b  %b  %b  %b  %b  %b  %b  | %b        | 0                  | %b    %b    %b    %b    |  0000", addr0[0], addr0[1], addr0[2], addr0[3],addr1[0], addr1[1], addr1[2], addr1[3], overflow, sum[0], sum[1], sum[2], sum[3] );
    addr0[0]=0;addr0[1]=0;addr0[2]=0;addr0[3]=0;addr1[0]=0;addr1[1]=0;addr1[2]=0;addr1[3]=0; #1000
    $display("%b  %b  %b  %b  %b  %b  %b  %b  | %b        | 0                  | %b    %b    %b    %b    |  0000", addr0[0], addr0[1], addr0[2], addr0[3],addr1[0], addr1[1], addr1[2], addr1[3], overflow, sum[0], sum[1], sum[2], sum[3] );

    $finish();

    end

endmodule
