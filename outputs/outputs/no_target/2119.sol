pragma solidity ^0.8.0;
contract Modifications3{
  uint256 public a;
  uint256 public b;
  constructor(uint256 _s, uint256 _i) public {
    uint256 x = _s;
    uint256 c = _i;
    uint256 y = 5;
    a = (x + c) x + ((y ^ y) + 1);
    b = (x * y) * c + ((y ^ c) + 1);
  }
}
contract Modifications3 {
  uint256 public a;
  uint256 public b;
  constructor(uint256 _s, uint256 _i) public {
    uint256 x = _s;
    uint256 c = _i;
    a = _s * _i;
    b = ((x * y) ^ c) * ((y ^ _i) + 1);
  }
}
