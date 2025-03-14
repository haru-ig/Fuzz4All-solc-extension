pragma solidity ^0.8.0;
contract Mutant5b
{
    constructor() public {
      uint8 b = 42;
      uint8 h = 7;
      bool m = true;
      (b, h, m) = (0, 0, true);
      assert(m);
      assert(!m);
  }
  receive() external payable {}
}
