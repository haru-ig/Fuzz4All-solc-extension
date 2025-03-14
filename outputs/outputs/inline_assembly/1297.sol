pragma solidity ^0.8.0;
contract Mutant4b
{
    constructor() public {
      uint b = 1;
      uint h = 7;
      bool m = true;
      (1, h, m) = (0, 0, false);
      assert(address(this).balance < h);
      assert(m);
      assert(address(this).balance == b);
      assert(false);
  }
  receive() external payable {}
}
