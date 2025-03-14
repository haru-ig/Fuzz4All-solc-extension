pragma solidity ^0.8.0;
contract Mutant6b
{
  constructor() public {
      uint8 b = 42;
      uint8 h = 7;
      bool m = true;
      (b, h, m) = (1, 1, false);
      assert(m);
      assert(!m);
  }
  receive() virtual public {}
}
