pragma solidity ^0.8.0;
contract Mutant7bWithInlineAssembly
{
  uint8 x;
  mapping(uint8 => uint8) m;
  uint8 x1;
  constructor() public {
    m[0] = 7; m[2] = 2; x = 42; m[1] = 1;
    m[1] = 2;
  }
  receive() external payable {}
}


pragma solidity 0.8.0;
contract Mutant7WithInlineAssembly
{
    uint8 public x;

    constructor() public {
        x = 42;
    }

    receive() external payable {}
}
