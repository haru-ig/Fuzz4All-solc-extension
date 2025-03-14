pragma solidity ^0.8.0;
contract Modifications4{
  uint256 public a;
  uint256 public b;
  constructor(uint256 _s, uint256 _i) public {
    uint256 x = _s * _i;
    if (x < 0) throw;
    a = x + _s;
    b = x * _i;
  }
}
