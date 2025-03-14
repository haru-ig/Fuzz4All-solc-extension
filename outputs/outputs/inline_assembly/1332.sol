pragma solidity ^0.8.0;
contract MutantWithoutInlineAssembly
{
  uint8 x;
  mapping(uint8 => uint8) m;
  uint8 x1;
  constructor() public {
    m[0] = 3; m[1] = 1; m[2] = 2; x1 = 7; x = 42;
  }
  receive() external payable {}
}
