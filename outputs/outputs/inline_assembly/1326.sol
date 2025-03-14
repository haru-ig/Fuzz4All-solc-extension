pragma solidity ^0.8.0;
contract Mutant6cWithInlineAssembly
{
  uint8 constant a = 1;
  uint8 public b;
  uint8 public constant c = a;

  constructor() public {
    assert(a == 1);
    assert(b == 11);
    assembly {
      b := 99
    }
    assert(b == 99);
  }
  receive() external payable {}
}
