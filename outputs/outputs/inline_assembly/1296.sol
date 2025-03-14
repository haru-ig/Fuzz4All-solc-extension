pragma solidity ^0.8.0;
contract Mutant5a
{
    constructor() public {
      uint b = 42; uint c = 17;
      uint h = 7;
      bool m = true;
      (b, h, m) = (0, 0, false);
      assert(address(this).balance < h);
      assert(m);
      assert(address(this).balance == b);
      (b, m, c) = (c, b, h);
      assert(!m);
      assert(address(this).balance!= c);
    }
    receive() external payable {}
}
