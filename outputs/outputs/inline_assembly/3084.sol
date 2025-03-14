pragma solidity ^0.8.0;
contract C {
  uint public a;
  uint public b;
  uint public c;
  constructor(uint _a, uint _b) public {
    a = uint(_a);
    b = uint(_b);
    c = uint(b+b+a-a);
  }
  function test_C() public pure returns (bool) {
    C(c, b-a);
    bool a;
    assembly { a := eq(a, c) }
    return a;
  }
}
