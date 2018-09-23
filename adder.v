// Adder circuit

`define AND and #50
`define OR or #50
`define NOT not #50
`define XOR xor #50

module behavioralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

module structuralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin

);

 wire AxorB, AxorBxorC, AxorBC, AB;

 `XOR xorGate(AxorB, a, b);
 `XOR xorGate(sum, AxorB, carryin);
 `AND andGate(AB, a, b);
 `AND andGate(AxorBC, carryin, AxorB);
 `OR orGate( carryout, AB, AxorBC);



endmodule


module FullAdder4bit
(
  output[3:0] sum,  // 2's complement sum of a and b
  output carryout,  // Carry out of the summation of a and b
  output overflow,  // True if the calculation resulted in an overflow
  input[3:0] a,     // First operand in 2's complement format
  input[3:0] b      // Second operand in 2's complement format
);
    // Your Code Here

    //reg a, b, carryin;
    wire sum0,sum1,sum2,sum3, carryout0, carryout1, carryout2;

    structuralFullAdder adder0(sum0, carryout0, a[0], b[0], overflow);
    structuralFullAdder adder1(sum1, carryout1, a[1], b[1], carryout0);
    structuralFullAdder adder2(sum2, carryout2, a[2], b[2], carryout1);
    structuralFullAdder adder3(sum, carryout, a[3], b[3], carryout2);

    // Sum into one thing


endmodule