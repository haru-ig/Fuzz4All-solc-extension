pragma solidity ^0.8.0;

contract Mutate {
  BetterProgram program;
  constructor() {
    program = new BetterProgram;
    program.execute();
    program.mutate();
    program.execute();
  }
}
