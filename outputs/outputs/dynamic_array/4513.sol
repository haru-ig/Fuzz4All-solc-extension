pragma solidity ^0.8.0;
contract Mutator3 { function f() public pure {
  bool test =!false;
  uint[4] memory testMem = [1];
  (testMem, test, uint47(_)) = testMem;
} }
