pragma solidity ^0.8.0;
contract Modifications2_MEM {
    constructor(uint256 _x, uint256 _y) public{
      uint256 c = a - b < 0? a + ((_y*_x)/b):b - (_y*_x)/b;
      uint256 d = (_x - b) * ((_y*_x)/a) + b*_y*_x/a + b*_x*(c>0?1:(c==0?0:1)) + (_x - b)*a/b;
    }
    uint256 public a;
    uint256 public b;
}
