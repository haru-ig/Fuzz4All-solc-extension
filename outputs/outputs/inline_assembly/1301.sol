pragma solidity ^0.8.0;
contract Mutant3c
{
  uint c;
  uint e;

  constructor() public {
      c = 42;
      c *= 6;
      e = c;
      e = c;
      assert(c == e);
  }

  function testCall(uint x1, uint y1) public pure returns (uint) {
      return x1 + y1;
  }
}
