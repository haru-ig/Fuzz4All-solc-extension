pragma solidity ^0.8.0;
contract Mutant4b
{
    constructor() public {
      uint b = 42;
      uint h = 7;
      bool m = true;
      (b, h, m) = (0, 0, true);
      assert(m);
      assert(!m);
  }
  receive() external payable {}
}
