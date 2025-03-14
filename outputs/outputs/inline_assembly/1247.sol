pragma solidity ^0.8.0;
contract Mutant
{
  uint F0000 = 0xF00000000;
  uint32 public x;
  uint8 y;
  mapping(uint => uint) a;
  constructor() {
    x = F0000;
    a[0xf0000] = F0000;
    y = uint8(F0000);
  }
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract Mutant
{
  uint32 a;
  constructor(uint x) {
    a = x;
  }
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract Mutant
{
  uint32 public x;
  constructor() {
    bytes memory big = new bytes(32);
    big.fill(0x0);
    x = 0;
  }
  receive() external payable {}
}
