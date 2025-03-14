pragma solidity ^0.8.0;
contract Mutant6cWithInlineAssembly
{
  constructor() public {
    uint8 x0 = 42;
    uint8 x1 = 7;
    x0 = x0 * 32_000_000_000_000_000 + x1;
    assert(x0 == 32_000_000_000_000_000 + 7 * 32_000_000_000_000_000);
  }
  receive() external payable {}
}
