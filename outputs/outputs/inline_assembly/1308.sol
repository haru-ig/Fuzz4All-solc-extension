pragma solidity ^0.8.0;
contract Mutant5c
{
    constructor() public {
      uint w = 0xff;
      uint q = 1 << 168;
      uint m = 0x7fff;
      (w, q, m) = (777, 5555, m);
      assert(!q &&!m && m);
  }
  receive() external payable {}
}
