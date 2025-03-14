pragma solidity ^0.8.0;
contract K {
  struct I { uint a; }
  constructor() public {}

  function f(uint a, uint b) public {
    uint s1 = a.sub(b);
    uint s2 = a - b;
    uint s3 = b.sub(a);
    uint s4 = a.sub(b.sub(b));
  }
}
