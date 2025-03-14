pragma solidity ^0.8.0;
contract MutatorS11 {
uint256 constant ONE = 1;
uint256 constant DEX = 6;
uint256 constant ONE_PLUS = ONE + DEX;
uint256 constant ZERO = 0;
uint256 constant ONE_EIGHT = ONE + DEX + ONE + DEX;
uint256 constant SIX = 6;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 c = ONE;
  function mutate() public {
    c += ONE_PLUS_SIX;
  }
}

/*
* Disclaimer:
- This code is provided as a courtesy and is intended for educational and demonstration purposes only. It is not a real product, and your use of the code is at your own risk. Any damage, loss, or any cessation of this code or any of its derivatives or consequences will be limited to the foregoing terms of this license.

* Introduction:
* Inline assembly (Yul) is a powerful yet flexible programming language from [Yul](https:

* Why is inline assembly important?
* Solidity functions are compiled into Ethereum bytecode to create a program called "EVM code". While in Solidity all EVM code is represented at compile time and executed at runtime, in Yul all EVM code is represented at compile time at the assembler stage and then runtime at the time a function is invoked. This means that even though inline assembly appears here and there often, it does not affect the performance as much.

* Types of inline assembly
* Yul supports many different types of inline assembly instructions. For example, arithmetic instructions (i.e, adding, subtraction, multiplying), input/output instructions, logic instructions, constant memory operands, and more. In addition, you can create your own instruction.

* Syntax
* Inline assembly is written in Yul, so it has just a few differences from regular C. For instance, Yul assigns labels to the instructions itself. Furthermore, it uses a [functional notation](http:
