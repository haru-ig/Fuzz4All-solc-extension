pragma solidity ^0.8.0;
contract Mutant7bWithInlineAssembly
{
  function get(uint8 x, uint8 y) public returns (uint8) {
    uint8 t = m[x];
    m[x] = x+y;
    return t;
  }
  uint8 x;
  mapping(uint8 => uint8) m;
  uint8 x1;
  uint8 y;
  constructor() public {
    m[0] = 7; m[2] = 2; x = 42; x1 = 7;
    y = 2;
  }
  receive() external payable {}
}
