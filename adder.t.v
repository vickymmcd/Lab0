// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg addr0, addr1, carryin;
    wire sum, carryout;

    //behavioralFullAdder adder (sum, carryout, addr0, addr1, carryin);
    structuralFullAdder adder(sum, carryout, addr0, addr1, carryin);

    initial begin

    $dumpfile("adder.vcd");
    $dumpvars();

    $display("A B| CarryIn | CarryOut | Carry Out Should Be | Sum | Sum Should Be");

    addr0=0;addr1=0;carryin=0; #1000
    $display("%b  %b | %b | %b | False | %b | False", addr0, addr1, carryin, carryout, sum );
    addr0=0;addr1=0;carryin=1; #1000
    $display("%b  %b | %b | %b | False | %b | True", addr0, addr1, carryin, carryout, sum );

    addr0=0;addr1=1;carryin=0; #1000
    $display("%b  %b | %b | %b | False | %b | True", addr0, addr1, carryin, carryout, sum );
    addr0=0;addr1=1;carryin=1; #1000
    $display("%b  %b | %b | %b | True  | %b | False", addr0, addr1, carryin, carryout, sum );

    addr0=1;addr1=0;carryin=0; #1000
    $display("%b  %b | %b | %b | False | %b | True", addr0, addr1, carryin, carryout, sum );
    addr0=1;addr1=0;carryin=1; #1000
    $display("%b  %b | %b | %b | True  | %b | False", addr0, addr1, carryin, carryout, sum );

    addr0=1;addr1=1;carryin=0; #1000
    $display("%b  %b | %b | %b | True  | %b | False", addr0, addr1, carryin, carryout, sum );
    addr0=1;addr1=1;carryin=1; #1000
    $display("%b  %b | %b | %b | True  | %b | True", addr0, addr1, carryin, carryout, sum );

    $finish();

    end

endmodule




module test4BitFullAdder();
    reg addr0[3:0], addr1[3:0];
    wire sum[3:0], carryout, overflow;

    //behavioralFullAdder adder (sum, carryout, addr0, addr1, carryin);
    FullAdder4bit adder(.sum({1'b0,1'b0,1'b0}), carryout, overflow, .addr0({1'b0,1'b0,1'b0}), .addr1({1'b0,1'b0,1'b0}));

    initial begin

    $dumpfile("4bitadder.vcd");
    $dumpvars();

    $display("A0 A1 A2 A3 B0 B1 B2 B3 | Overflow | Overflow Should Be | Sum 0 Sum 1 Sum 2 Sum 3 | Sum Should Be");

    addr0[0]=0;addr0[1]=0;addr0[2]=0;addr0[3]=0;addr1[0]=0;addr1[1]=0;addr1[2]=0;addr1[3]=0; #1000
    $display("%b  %b  %b  %b  %b  %b  %b  %b | %b | 0 | %b  %b  %b  %b | 0000", addr0[0], addr0[1], addr0[2], addr0[3],addr1[0], addr1[1], addr1[2], addr1[3], overflow, sum[0], sum[1], sum[2], sum[3] );
    addr0[0]=0;addr0[1]=0;addr0[2]=0;addr0[3]=0;addr1[0]=0;addr1[1]=0;addr1[2]=0;addr1[3]=0; #1000
    $display("%b  %b  %b  %b  %b  %b  %b  %b | %b | 0 | %b  %b  %b  %b | 0000", addr0[0], addr0[1], addr0[2], addr0[3],addr1[0], addr1[1], addr1[2], addr1[3], overflow, sum[0], sum[1], sum[2], sum[3] );
    addr0[0]=0;addr0[1]=0;addr0[2]=0;addr0[3]=0;addr1[0]=0;addr1[1]=0;addr1[2]=0;addr1[3]=0; #1000
    $display("%b  %b  %b  %b  %b  %b  %b  %b | %b | 0 | %b  %b  %b  %b | 0000", addr0[0], addr0[1], addr0[2], addr0[3],addr1[0], addr1[1], addr1[2], addr1[3], overflow, sum[0], sum[1], sum[2], sum[3] );
    addr0[0]=0;addr0[1]=0;addr0[2]=0;addr0[3]=0;addr1[0]=0;addr1[1]=0;addr1[2]=0;addr1[3]=0; #1000
    $display("%b  %b  %b  %b  %b  %b  %b  %b | %b | 0 | %b  %b  %b  %b | 0000", addr0[0], addr0[1], addr0[2], addr0[3],addr1[0], addr1[1], addr1[2], addr1[3], overflow, sum[0], sum[1], sum[2], sum[3] );
    addr0[0]=0;addr0[1]=0;addr0[2]=0;addr0[3]=0;addr1[0]=0;addr1[1]=0;addr1[2]=0;addr1[3]=0; #1000
    $display("%b  %b  %b  %b  %b  %b  %b  %b | %b | 0 | %b  %b  %b  %b | 0000", addr0[0], addr0[1], addr0[2], addr0[3],addr1[0], addr1[1], addr1[2], addr1[3], overflow, sum[0], sum[1], sum[2], sum[3] );

    $finish();

    end

endmodule
