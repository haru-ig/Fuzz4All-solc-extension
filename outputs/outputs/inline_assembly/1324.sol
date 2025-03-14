pragma solidity ^0.8.0;
contract Mutant6bWithInlineAssembly
{
  constructor() public {
    uint8 x0 = 42;
    uint8 x1 = 7;
    bool m0 = true;
    (x0, x1, m0) = (1, 1, false);
    assert(m0);
    assert(!m0);
    assert(x0 == 42);
    assert(x1 == 7);
  }
  receive() external payable {}
}
