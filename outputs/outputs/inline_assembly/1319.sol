pragma solidity ^0.8.0;
contract Mutant6a
{
    constructor() public {
      uint8 b = 42;
      uint8 h = 7;
      bool m = true;
      bool a = b > h;
      assert(a);
      assert(!a);
      a = (b <= m);
      assert(!a);
      assert(a);
   }
}
