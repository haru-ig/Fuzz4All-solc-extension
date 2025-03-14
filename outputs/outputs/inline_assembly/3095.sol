pragma solidity ^0.8.0;
contract C {
  uint a;
  uint b;
  struct S {
    uint a;
    uint b;
  }
  S memory s;
  constructor(uint _a, uint _b) public {
    s.a += _a;
    s.b += _b;
  }
}
