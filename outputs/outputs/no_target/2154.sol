pragma solidity ^0.8.0;
contract Modifications3 {
    constructor(uint256 _x, uint256 _y) public{
      uint256 c;
      uint256 d;
      if(_x > _y) (c, d) = (_y, _x);
      else (c, d) = (_x, _y);
      uint256 c2 = a - b < 0? (a - c) / d : b - a;
      uint256 d2 = a / (c - b) + (c - b) * (c>0?1:(c==0?0:1));
      if (1 < c2) emit A;
    }
    uint256 public a;
    uint256 public b;
    event A();
}
