pragma solidity ^0.8.0;
contract Modifications2{
  uint256 public a;
  uint256 public b;
  constructor(uint256 _a, uint256 _b) public {
    require(_b == _a + 512);
    a = _a + 512;
    b = _b - 512;
  }
}
