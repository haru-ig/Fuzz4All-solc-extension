pragma solidity ^0.8.0;
contract Modifications {
  uint256 public a;
  uint256 public b;
  constructor(uint256 _a, uint256 _b) public {
    a = _b + 512;
    b = _a - 512;
  }
}
