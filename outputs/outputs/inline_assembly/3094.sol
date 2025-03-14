pragma solidity ^0.8.0;
contract C {
  uint a;
  constructor(uint _a, uint _b) public {
    a += _a;
    a += _b;
  }
}
