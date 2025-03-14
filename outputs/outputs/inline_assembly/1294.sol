pragma solidity ^0.8.0;
contract Mutant3b
{
    constructor() public {
      uint b = 42;
      uint h = 7;
      bool m = true;
      (b, h, m) = (0, 0, false);
      assert(address(this).balance < h);
      assert(m);
      assert(address(this).balance == b);
      assert(false);
  }
  receive() external payable {}
}
