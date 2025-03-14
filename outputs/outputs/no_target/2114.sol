pragma solidity ^0.8.0;
contract Modifications3{
  uint256 public a;
  uint256 public b;
  constructor(uint256 _s, uint256 _i) public {
    uint256 x = _s * _i;
    a = x + _s;
    b = x * _i;
  }
}
